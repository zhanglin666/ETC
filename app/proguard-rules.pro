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
#-renamesourcefileattribute SourceFile


##指定压缩级别
#-optimizationpasses 5
#
##不跳过非公共的库的类成员
#-dontskipnonpubliclibraryclassmembers
#
##混淆时采用的算法
#-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*
#
##把混淆类中的方法名也混淆了
#-useuniqueclassmembernames
#
##优化时允许访问并修改有修饰符的类和类的成员
#-allowaccessmodification
#
##保留行号
#-keepattributes SourceFile,LineNumberTable
##保持泛型
#-keepattributes Signature
#
##保持所有实现 Serializable 接口的类成员
#-keepclassmembers class * implements java.io.Serializable {
#    static final long serialVersionUID;
#    private static final java.io.ObjectStreamField[] serialPersistentFields;
#    private void writeObject(java.io.ObjectOutputStream);
#    private void readObject(java.io.ObjectInputStream);
#    java.lang.Object writeReplace();
#    java.lang.Object readResolve();
#}
#
### okhttp3[version_logging-interceptor 3.3.1]
#-dontwarn com.squareup.okhttp3.**
#-keep class com.squareup.okhttp3.** { *;}
#-dontwarn okio.**
### okhttp3
#
### gson[version 2.8.0]
#-keep class sun.misc.Unsafe { *; }
#-keep class com.google.gson.stream.** { *; }
#-keep class com.google.gson.examples.android.model.** { *; }
#-keep class * implements com.google.gson.TypeAdapterFactory
#-keep class * implements com.google.gson.JsonSerializer-keep class * implements com.google.gson.JsonDeserializer
### gson

-ignorewarnings -keep class * { public private *; }
