.class public Lcom/anythink/core/api/ATSDKGlobalSetting;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile mDirectlySplashAdCTAButtongBgDrawable:Landroid/graphics/drawable/Drawable;

.field private static volatile mDirectlySplashAdShakeIconString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirectlySplashAdCTAButtongBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/anythink/core/api/ATSDKGlobalSetting;->mDirectlySplashAdCTAButtongBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getDirectlySplashAdShakeIconString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/core/api/ATSDKGlobalSetting;->mDirectlySplashAdShakeIconString:Ljava/lang/String;

    return-object v0
.end method

.method public static setDirectlySplashAdCTAButtongBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    sput-object p0, Lcom/anythink/core/api/ATSDKGlobalSetting;->mDirectlySplashAdCTAButtongBgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static setDirectlySplashAdShakeIconString(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/anythink/core/api/ATSDKGlobalSetting;->mDirectlySplashAdShakeIconString:Ljava/lang/String;

    return-void
.end method
