.class public Lcn/haorui/sdk/adsail_ad/AdNative$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadInterstitialAd(Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

.field public final synthetic val$wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->val$adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->val$wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 3
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->val$adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-static {p1, v0, v2, v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    array-length v0, v0

    invoke-static {}, Lcn/haorui/sdk/core/utils/MemoryUtil;->getTraceMemory()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->val$wrapper:Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->val$adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, v1, v2, p1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;-><init>(Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;[B)V

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object p1

    new-instance v1, Lcn/haorui/sdk/adsail_ad/AdNative$18$1;

    invoke-direct {v1, p0, v0}, Lcn/haorui/sdk/adsail_ad/AdNative$18$1;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative$18;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->val$adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->a:Ljava/lang/Integer;

    const-string v2, "\u56fe\u7247\u8d44\u6e90\u52a0\u8f7d\u9519\u8bef"

    invoke-static {p1, v0, v2, v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    return-void
.end method
