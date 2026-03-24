.class public Lcn/haorui/sdk/core/loader/AdPlatformError;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public adInfo:Lcn/haorui/sdk/core/domain/SdkAdInfo;

.field public code:Ljava/lang/Integer;

.field public message:Ljava/lang/String;

.field public platform:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->message:Ljava/lang/String;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/AdPlatformError;->adInfo:Lcn/haorui/sdk/core/domain/SdkAdInfo;

    return-object v0
.end method

.method public post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdError()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
