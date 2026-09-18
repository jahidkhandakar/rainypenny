/// A currency the app can display figures in.
///
/// [decimalDigits] follows ISO 4217: most currencies carry two, the yen and
/// the CFA franc carry none, and the Gulf dinars carry three. Formatting reads
/// it rather than assuming two, so a Kuwaiti user sees `د.ك 1,250.500` and a
/// Japanese user sees `¥1,250` — both correct for their money.
class CurrencyOption {
  const CurrencyOption(
    this.code,
    this.symbol,
    this.name, {
    this.decimalDigits = 2,
  });

  /// ISO 4217 alphabetic code, e.g. `USD`.
  final String code;

  /// The symbol shown next to amounts. Falls back to the code where a
  /// currency has no widely recognised symbol.
  final String symbol;

  /// English name, used in the picker and for searching.
  final String name;

  final int decimalDigits;

  /// What the picker searches against: code, symbol and name together, so
  /// typing `eur`, `€` or `euro` all land on the same row.
  String get searchIndex => '$code $symbol $name'.toLowerCase();

  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is CurrencyOption && other.code == code);

  @override
  int get hashCode => code.hashCode;
}

/// Every currency RainyPenny ships with.
///
/// The list is the complete set of circulating ISO 4217 currencies, so someone
/// opening the app in Lagos, Almaty or Santiago finds their own money rather
/// than a shortlist of six. Selecting one only changes presentation — no FX
/// conversion is applied to stored amounts.
abstract final class Currencies {
  /// Shown above the full list in the picker: the currencies the largest share
  /// of users will be reaching for.
  static const popularCodes = <String>[
    'USD',
    'EUR',
    'GBP',
    'JPY',
    'CNY',
    'INR',
    'AED',
    'SAR',
    'AUD',
    'CAD',
    'CHF',
    'TRY',
    'BRL',
    'ZAR',
    'NGN',
    'PKR',
    'BDT',
    'IDR',
    'RUB',
    'MXN',
  ];

  static const values = <CurrencyOption>[
    CurrencyOption('AED', 'د.إ', 'UAE Dirham'),
    CurrencyOption('AFN', '؋', 'Afghan Afghani'),
    CurrencyOption('ALL', 'L', 'Albanian Lek'),
    CurrencyOption('AMD', '֏', 'Armenian Dram'),
    CurrencyOption('ANG', 'ƒ', 'Netherlands Antillean Guilder'),
    CurrencyOption('AOA', 'Kz', 'Angolan Kwanza'),
    CurrencyOption('ARS', r'$', 'Argentine Peso'),
    CurrencyOption('AUD', r'A$', 'Australian Dollar'),
    CurrencyOption('AWG', 'ƒ', 'Aruban Florin'),
    CurrencyOption('AZN', '₼', 'Azerbaijani Manat'),
    CurrencyOption('BAM', 'KM', 'Bosnia-Herzegovina Convertible Mark'),
    CurrencyOption('BBD', r'Bds$', 'Barbadian Dollar'),
    CurrencyOption('BDT', '৳', 'Bangladeshi Taka'),
    CurrencyOption('BGN', 'лв', 'Bulgarian Lev'),
    CurrencyOption('BHD', 'د.ب', 'Bahraini Dinar', decimalDigits: 3),
    CurrencyOption('BIF', 'FBu', 'Burundian Franc', decimalDigits: 0),
    CurrencyOption('BMD', r'BD$', 'Bermudan Dollar'),
    CurrencyOption('BND', r'B$', 'Brunei Dollar'),
    CurrencyOption('BOB', 'Bs', 'Bolivian Boliviano'),
    CurrencyOption('BRL', r'R$', 'Brazilian Real'),
    CurrencyOption('BSD', r'B$', 'Bahamian Dollar'),
    CurrencyOption('BTN', 'Nu.', 'Bhutanese Ngultrum'),
    CurrencyOption('BWP', 'P', 'Botswanan Pula'),
    CurrencyOption('BYN', 'Br', 'Belarusian Ruble'),
    CurrencyOption('BZD', r'BZ$', 'Belize Dollar'),
    CurrencyOption('CAD', r'C$', 'Canadian Dollar'),
    CurrencyOption('CDF', 'FC', 'Congolese Franc'),
    CurrencyOption('CHF', 'CHF', 'Swiss Franc'),
    CurrencyOption('CLP', r'$', 'Chilean Peso', decimalDigits: 0),
    CurrencyOption('CNY', '¥', 'Chinese Yuan'),
    CurrencyOption('COP', r'$', 'Colombian Peso'),
    CurrencyOption('CRC', '₡', 'Costa Rican Colón'),
    CurrencyOption('CUP', r'$', 'Cuban Peso'),
    CurrencyOption('CVE', r'$', 'Cape Verdean Escudo'),
    CurrencyOption('CZK', 'Kč', 'Czech Koruna'),
    CurrencyOption('DJF', 'Fdj', 'Djiboutian Franc', decimalDigits: 0),
    CurrencyOption('DKK', 'kr', 'Danish Krone'),
    CurrencyOption('DOP', r'RD$', 'Dominican Peso'),
    CurrencyOption('DZD', 'د.ج', 'Algerian Dinar'),
    CurrencyOption('EGP', 'ج.م', 'Egyptian Pound'),
    CurrencyOption('ERN', 'Nfk', 'Eritrean Nakfa'),
    CurrencyOption('ETB', 'Br', 'Ethiopian Birr'),
    CurrencyOption('EUR', '€', 'Euro'),
    CurrencyOption('FJD', r'FJ$', 'Fijian Dollar'),
    CurrencyOption('FKP', '£', 'Falkland Islands Pound'),
    CurrencyOption('GBP', '£', 'British Pound'),
    CurrencyOption('GEL', '₾', 'Georgian Lari'),
    CurrencyOption('GHS', '₵', 'Ghanaian Cedi'),
    CurrencyOption('GIP', '£', 'Gibraltar Pound'),
    CurrencyOption('GMD', 'D', 'Gambian Dalasi'),
    CurrencyOption('GNF', 'FG', 'Guinean Franc', decimalDigits: 0),
    CurrencyOption('GTQ', 'Q', 'Guatemalan Quetzal'),
    CurrencyOption('GYD', r'G$', 'Guyanaese Dollar'),
    CurrencyOption('HKD', r'HK$', 'Hong Kong Dollar'),
    CurrencyOption('HNL', 'L', 'Honduran Lempira'),
    CurrencyOption('HTG', 'G', 'Haitian Gourde'),
    CurrencyOption('HUF', 'Ft', 'Hungarian Forint'),
    CurrencyOption('IDR', 'Rp', 'Indonesian Rupiah'),
    CurrencyOption('ILS', '₪', 'Israeli New Shekel'),
    CurrencyOption('INR', '₹', 'Indian Rupee'),
    CurrencyOption('IQD', 'ع.د', 'Iraqi Dinar', decimalDigits: 3),
    CurrencyOption('IRR', '﷼', 'Iranian Rial'),
    CurrencyOption('ISK', 'kr', 'Icelandic Króna', decimalDigits: 0),
    CurrencyOption('JMD', r'J$', 'Jamaican Dollar'),
    CurrencyOption('JOD', 'د.ا', 'Jordanian Dinar', decimalDigits: 3),
    CurrencyOption('JPY', '¥', 'Japanese Yen', decimalDigits: 0),
    CurrencyOption('KES', 'KSh', 'Kenyan Shilling'),
    CurrencyOption('KPW', '₩', 'North Korean Won'),
    CurrencyOption('KGS', 'с', 'Kyrgystani Som'),
    CurrencyOption('KHR', '៛', 'Cambodian Riel'),
    CurrencyOption('KMF', 'CF', 'Comorian Franc', decimalDigits: 0),
    CurrencyOption('KRW', '₩', 'South Korean Won', decimalDigits: 0),
    CurrencyOption('KWD', 'د.ك', 'Kuwaiti Dinar', decimalDigits: 3),
    CurrencyOption('KYD', r'CI$', 'Cayman Islands Dollar'),
    CurrencyOption('KZT', '₸', 'Kazakhstani Tenge'),
    CurrencyOption('LAK', '₭', 'Laotian Kip'),
    CurrencyOption('LBP', 'ل.ل', 'Lebanese Pound'),
    CurrencyOption('LKR', 'Rs', 'Sri Lankan Rupee'),
    CurrencyOption('LRD', r'L$', 'Liberian Dollar'),
    CurrencyOption('LSL', 'L', 'Lesotho Loti'),
    CurrencyOption('LYD', 'ل.د', 'Libyan Dinar', decimalDigits: 3),
    CurrencyOption('MAD', 'د.م.', 'Moroccan Dirham'),
    CurrencyOption('MDL', 'L', 'Moldovan Leu'),
    CurrencyOption('MGA', 'Ar', 'Malagasy Ariary', decimalDigits: 0),
    CurrencyOption('MKD', 'ден', 'Macedonian Denar'),
    CurrencyOption('MMK', 'K', 'Myanmar Kyat'),
    CurrencyOption('MNT', '₮', 'Mongolian Tugrik'),
    CurrencyOption('MOP', r'MOP$', 'Macanese Pataca'),
    CurrencyOption('MRU', 'UM', 'Mauritanian Ouguiya'),
    CurrencyOption('MUR', '₨', 'Mauritian Rupee'),
    CurrencyOption('MVR', '.ރ', 'Maldivian Rufiyaa'),
    CurrencyOption('MWK', 'MK', 'Malawian Kwacha'),
    CurrencyOption('MXN', r'MX$', 'Mexican Peso'),
    CurrencyOption('MYR', 'RM', 'Malaysian Ringgit'),
    CurrencyOption('MZN', 'MT', 'Mozambican Metical'),
    CurrencyOption('NAD', r'N$', 'Namibian Dollar'),
    CurrencyOption('NGN', '₦', 'Nigerian Naira'),
    CurrencyOption('NIO', r'C$', 'Nicaraguan Córdoba'),
    CurrencyOption('NOK', 'kr', 'Norwegian Krone'),
    CurrencyOption('NPR', '₨', 'Nepalese Rupee'),
    CurrencyOption('NZD', r'NZ$', 'New Zealand Dollar'),
    CurrencyOption('OMR', 'ر.ع.', 'Omani Rial', decimalDigits: 3),
    CurrencyOption('PAB', 'B/.', 'Panamanian Balboa'),
    CurrencyOption('PEN', 'S/', 'Peruvian Sol'),
    CurrencyOption('PGK', 'K', 'Papua New Guinean Kina'),
    CurrencyOption('PHP', '₱', 'Philippine Peso'),
    CurrencyOption('PKR', '₨', 'Pakistani Rupee'),
    CurrencyOption('PLN', 'zł', 'Polish Zloty'),
    CurrencyOption('PYG', '₲', 'Paraguayan Guarani', decimalDigits: 0),
    CurrencyOption('QAR', 'ر.ق', 'Qatari Rial'),
    CurrencyOption('RON', 'lei', 'Romanian Leu'),
    CurrencyOption('RSD', 'дин', 'Serbian Dinar'),
    CurrencyOption('RUB', '₽', 'Russian Ruble'),
    CurrencyOption('RWF', 'FRw', 'Rwandan Franc', decimalDigits: 0),
    CurrencyOption('SAR', 'ر.س', 'Saudi Riyal'),
    CurrencyOption('SBD', r'SI$', 'Solomon Islands Dollar'),
    CurrencyOption('SCR', '₨', 'Seychellois Rupee'),
    CurrencyOption('SDG', 'ج.س', 'Sudanese Pound'),
    CurrencyOption('SEK', 'kr', 'Swedish Krona'),
    CurrencyOption('SGD', r'S$', 'Singapore Dollar'),
    CurrencyOption('SHP', '£', 'Saint Helena Pound'),
    CurrencyOption('SLE', 'Le', 'Sierra Leonean Leone'),
    CurrencyOption('SOS', 'Sh', 'Somali Shilling'),
    CurrencyOption('SRD', r'SR$', 'Surinamese Dollar'),
    CurrencyOption('SSP', '£', 'South Sudanese Pound'),
    CurrencyOption('STN', 'Db', 'São Tomé and Príncipe Dobra'),
    CurrencyOption('SVC', '₡', 'Salvadoran Colón'),
    CurrencyOption('SYP', 'ل.س', 'Syrian Pound'),
    CurrencyOption('SZL', 'E', 'Swazi Lilangeni'),
    CurrencyOption('THB', '฿', 'Thai Baht'),
    CurrencyOption('TJS', 'ЅМ', 'Tajikistani Somoni'),
    CurrencyOption('TMT', 'm', 'Turkmenistani Manat'),
    CurrencyOption('TND', 'د.ت', 'Tunisian Dinar', decimalDigits: 3),
    CurrencyOption('TOP', r'T$', 'Tongan Paʻanga'),
    CurrencyOption('TRY', '₺', 'Turkish Lira'),
    CurrencyOption('TTD', r'TT$', 'Trinidad & Tobago Dollar'),
    CurrencyOption('TWD', r'NT$', 'New Taiwan Dollar'),
    CurrencyOption('TZS', 'TSh', 'Tanzanian Shilling'),
    CurrencyOption('UAH', '₴', 'Ukrainian Hryvnia'),
    CurrencyOption('UGX', 'USh', 'Ugandan Shilling', decimalDigits: 0),
    CurrencyOption('USD', r'$', 'US Dollar'),
    CurrencyOption('UYU', r'$U', 'Uruguayan Peso'),
    CurrencyOption('UZS', 'soʻm', 'Uzbekistani Som'),
    CurrencyOption('VED', 'Bs.D', 'Venezuelan Bolívar Digital'),
    CurrencyOption('VES', 'Bs.', 'Venezuelan Bolívar'),
    CurrencyOption('VND', '₫', 'Vietnamese Dong', decimalDigits: 0),
    CurrencyOption('VUV', 'VT', 'Vanuatu Vatu', decimalDigits: 0),
    CurrencyOption('WST', r'WS$', 'Samoan Tala'),
    CurrencyOption(
      'XAF',
      'FCFA',
      'Central African CFA Franc',
      decimalDigits: 0,
    ),
    CurrencyOption('XCD', r'EC$', 'East Caribbean Dollar'),
    CurrencyOption('XCG', 'Cg', 'Caribbean Guilder'),
    CurrencyOption('XOF', 'CFA', 'West African CFA Franc', decimalDigits: 0),
    CurrencyOption('XPF', '₣', 'CFP Franc', decimalDigits: 0),
    CurrencyOption('YER', '﷼', 'Yemeni Rial'),
    CurrencyOption('ZAR', 'R', 'South African Rand'),
    CurrencyOption('ZMW', 'ZK', 'Zambian Kwacha'),
    CurrencyOption('ZWG', r'Z$', 'Zimbabwe Gold'),
  ];

  static final _byCode = {for (final c in values) c.code: c};

  /// The default when nothing has been chosen yet.
  static const fallback = CurrencyOption('USD', r'$', 'US Dollar');

  static CurrencyOption byCode(String? code) =>
      _byCode[code?.toUpperCase()] ?? fallback;

  static String symbolFor(String code) => byCode(code).symbol;

  /// The popular shortlist, in the order declared above.
  static List<CurrencyOption> get popular => [
    for (final code in popularCodes) byCode(code),
  ];

  /// Case-insensitive search over code, symbol and name.
  static List<CurrencyOption> search(String query) {
    final term = query.trim().toLowerCase();
    if (term.isEmpty) return values;
    return values.where((c) => c.searchIndex.contains(term)).toList();
  }
}
