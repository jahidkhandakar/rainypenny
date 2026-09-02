// Derives every brand asset from assets/logo/logo.svg.
//
//   npm install @resvg/resvg-js
//   node tool/brand_assets.js
//   dart run flutter_launcher_icons
//
// Writes:
//   assets/logo/logo_mark.svg   the artwork with its viewBox trimmed to the
//                               drawing, so BrandMark fills the box it is given
//   assets/icon/icon.png        full-bleed launcher icon (iOS, web, desktop)
//   assets/icon/icon_foreground.png  Android adaptive foreground
//   assets/icon/icon_monochrome.png  Android 13+ themed icon
//
// logo.svg itself is never modified — it is the source of truth.

const fs = require('fs');
const path = require('path');
const { Resvg } = require('@resvg/resvg-js');

const ROOT = path.resolve(__dirname, '..');
const SRC = path.join(ROOT, 'assets/logo/logo.svg');
const LOGO_DIR = path.join(ROOT, 'assets/logo');
const ICON_DIR = path.join(ROOT, 'assets/icon');

const raw = fs.readFileSync(SRC, 'utf8');

// Where the drawing actually sits inside the source's 1080 viewBox. Rounded
// out a hair from resvg's own bbox so antialiased edges are never clipped.
const ART = { x: 253.5, y: 205, w: 573, h: 670 };
const SIZE = 1024;

// --- logo_mark.svg -----------------------------------------------------------
// The source styles its path through a CSS class; that is inlined as a plain
// fill here because not every SVG renderer applies stylesheets.
{
  const d = raw.match(/\sd="([^"]+)"/)[1];
  const gradient = raw.match(/<linearGradient[\s\S]*?<\/linearGradient>/)[0];
  const mark = `<?xml version="1.0" encoding="UTF-8"?>
<!-- Generated from logo.svg by tool/brand_assets.js. Do not edit by hand. -->
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="${ART.x} ${ART.y} ${ART.w} ${ART.h}">
  <defs>
    ${gradient}
  </defs>
  <path fill="url(#linear-gradient)" d="${d}"/>
</svg>
`;
  fs.writeFileSync(path.join(LOGO_DIR, 'logo_mark.svg'), mark);
  console.log('logo_mark.svg');
}

// --- launcher icons ----------------------------------------------------------
const body = raw.replace(/^[\s\S]*?<svg[^>]*>/, '').replace(/<\/svg>\s*$/, '');

function compose({ background, heightRatio, fill }) {
  const scale = (SIZE * heightRatio) / ART.h;
  const cx = ART.x + ART.w / 2;
  const cy = ART.y + ART.h / 2;
  const bg = background
    ? `<rect width="${SIZE}" height="${SIZE}" fill="${background}"/>`
    : '';
  // Flat silhouette: drop the gradient and paint the path in one colour.
  const art = fill
    ? body.replace(/fill:\s*url\(#linear-gradient\)/, `fill: ${fill}`)
    : body;
  return `<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 ${SIZE} ${SIZE}" width="${SIZE}" height="${SIZE}">
${bg}
<g transform="translate(${SIZE / 2} ${SIZE / 2}) scale(${scale}) translate(${-cx} ${-cy})">
${art}
</g>
</svg>`;
}

function render(svg, file) {
  const png = new Resvg(svg, { fitTo: { mode: 'width', value: SIZE } })
    .render()
    .asPng();
  fs.writeFileSync(path.join(ICON_DIR, file), png);
  console.log(file, png.length, 'bytes');
}

fs.mkdirSync(ICON_DIR, { recursive: true });

render(compose({ background: '#FFFFFF', heightRatio: 0.6 }), 'icon.png');

// flutter_launcher_icons wraps the adaptive layers in a 16% inset, shrinking
// them to 68% of the 108dp canvas, so the mark is drawn oversize here to land
// at ~46% of the finished icon — comfortably inside the 66.7% safe circle that
// every launcher mask leaves visible.
const ADAPTIVE = 0.46 / 0.68;
render(compose({ background: null, heightRatio: ADAPTIVE }), 'icon_foreground.png');
render(
  compose({ background: null, heightRatio: ADAPTIVE, fill: '#000000' }),
  'icon_monochrome.png',
);
