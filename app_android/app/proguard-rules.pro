# ProGuard rules for MapleAuto
# 暂不启用混淆，后续优化时配置

# 保留 Chaquopy Python 桥接
-keep class com.chaquo.python.** { *; }
-keep class com.maple.auto.** { *; }

# 保留 AccessibilityService
-keep class * extends android.accessibilityservice.AccessibilityService
