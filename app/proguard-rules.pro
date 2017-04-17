# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/dasralph/android-sdk-macosx/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

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
#-renamesourcefileattribute SourceFile

-keepattributes *Annotation*,SourceFile,LineNumberTable,Exceptions,Signature

# square okhttp3 / okio
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okhttp3.**
-dontwarn okio.**

# square retrofit2
-dontwarn retrofit2.**
-keep class retrofit2.** { *; }
-keepclasseswithmembers class * {
    @retrofit2.http.* <methods>;
}
-keep class rx.Single      # needed for RxJavaCallAdapterFactory.get(Type returnType, Annotation[] annotations, Retrofit retrofit)
-keep class rx.Completable


# kotlin
-dontwarn kotlin.**


# anko
-dontwarn org.jetbrains.anko.**


# rx
-dontwarn rx.**
-keep class rx.internal.util.unsafe.** { *; }


# gson
-keep class sun.misc.Unsafe { *; }
-keep class eu.the4thfloor.msync.api.models.** { *; }


# remove Timber and Log calls
-assumenosideeffects class timber.log.Timber { *; }
-assumenosideeffects class android.util.Log { *; }
