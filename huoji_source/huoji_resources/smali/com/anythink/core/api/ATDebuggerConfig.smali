.class public Lcom/anythink/core/api/ATDebuggerConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/api/ATDebuggerConfig$Builder;
    }
.end annotation


# instance fields
.field private mBannerType:I

.field private mInterstitialType:I

.field private mNativeType:I

.field private mNetworkFirmId:I

.field private mRewarderVideoType:I

.field private mSplashType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/anythink/core/api/ATDebuggerConfig;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mNetworkFirmId:I

    return p1
.end method

.method public static synthetic access$102(Lcom/anythink/core/api/ATDebuggerConfig;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mNativeType:I

    return p1
.end method

.method public static synthetic access$202(Lcom/anythink/core/api/ATDebuggerConfig;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mBannerType:I

    return p1
.end method

.method public static synthetic access$302(Lcom/anythink/core/api/ATDebuggerConfig;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mSplashType:I

    return p1
.end method

.method public static synthetic access$402(Lcom/anythink/core/api/ATDebuggerConfig;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mInterstitialType:I

    return p1
.end method

.method public static synthetic access$502(Lcom/anythink/core/api/ATDebuggerConfig;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mRewarderVideoType:I

    return p1
.end method


# virtual methods
.method public fillRequestParam(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "is_test"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "test_nw_firm"

    iget v1, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mNetworkFirmId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "0"

    iget v2, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mNativeType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "2"

    iget v2, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mBannerType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "1"

    iget v2, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mRewarderVideoType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "3"

    iget v2, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mInterstitialType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "4"

    iget v2, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mSplashType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "test_format_sub"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public getBannerType()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mBannerType:I

    return v0
.end method

.method public getInterstitialType()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mInterstitialType:I

    return v0
.end method

.method public getNativeType()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mNativeType:I

    return v0
.end method

.method public getNetworkFirmId()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mNetworkFirmId:I

    return v0
.end method

.method public getRewarderVideoType()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mRewarderVideoType:I

    return v0
.end method

.method public getSplashType()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/api/ATDebuggerConfig;->mSplashType:I

    return v0
.end method
