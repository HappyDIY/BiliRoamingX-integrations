# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-dontobfuscate
#-dontoptimize
#-keepattributes *  # https://www.guardsquare.com/manual/configuration/attributes
-keepattributes RuntimeVisible*Annotations,SourceFile
-renamesourcefileattribute ""

-assumenosideeffects class kotlin.jvm.internal.Intrinsics {
    public static void check*(...);
    public static void throw*(...);
}
-assumenosideeffects class java.util.Objects {
    public static ** requireNonNull(...);
}

-keep class app.revanced.all.** { *; }

-keep !abstract class app.revanced.bilibili.settings.fragments.* extends androidx.fragment.app.Fragment {
    public <init>(...);
}

-keep class app.revanced.bilibili.widget.* extends androidx.preference.Preference {
    public <init>(...);
}

-keep interface app.revanced.bilibili.widget.OnClickOriginListener { *; }
-keep interface app.revanced.bilibili.widget.OnLongClickOriginListener { *; }

#-keep class app.revanced.bilibili.** { *; }
-keep class com.google.protobuf.*Ex { *; }

-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

-repackageclasses kofua

-overloadaggressively
-allowaccessmodification
