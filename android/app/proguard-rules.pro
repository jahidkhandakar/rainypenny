# flutter_local_notifications serialises its scheduled payloads with Gson and
# reflects over them when the alarm fires, so R8 must not rename those classes.
-keep class com.dexterous.flutterlocalnotifications.** { *; }
-keep class * extends com.google.gson.TypeAdapter
-keepattributes Signature
-keepattributes *Annotation*

# Generic signatures are erased by R8 unless kept; Gson needs them to
# reconstruct parameterised types.
-dontwarn com.google.gson.**
