-injars 'Launcher.jar'
-outjars 'Launcher-obf.jar'
-libraryjars 'build/libraries/jansi-1.11.jar'
-libraryjars '<java.home>/lib/rt.jar'
-libraryjars '<java.home>/lib/jce.jar'
-libraryjars '<java.home>/lib/ext/jfxrt.jar'
-libraryjars '<java.home>/lib/ext/nashorn.jar'

-printmapping 'build/mapping.pro'
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute Source

-dontnote
-dontshrink
-dontoptimize
-target 8
-forceprocessing

-obfuscationdictionary 'build/dictionary.pro'
-classobfuscationdictionary 'build/dictionary.pro'
-overloadaggressively
-repackageclasses 'launcher'
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile
-adaptresourcefilecontents META-INF/MANIFEST.MF

-keeppackagenames com.eclipsesource.json.**

-keep class com.eclipsesource.json.** {
    <fields>;
    <methods>;
}

-keepclassmembers @launcher.LauncherAPI class ** {
    <fields>;
    <methods>;
}

-keepclassmembers class ** {
    @launcher.LauncherAPI
    <fields>;
    @launcher.LauncherAPI
    <methods>;
}

-keepclassmembers public class ** {
    public static void main(java.lang.String[]);
}

-keepclassmembers enum ** {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
