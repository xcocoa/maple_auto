.class public Lcn/haorui/sdk/adsail_ad/AdNative$18$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative$18;->onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/adsail_ad/AdNative$18;

.field public final synthetic val$nativeAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative$18;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$18;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18$1;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$18;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$18;->val$adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$18$1;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-interface {v0, v1}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADLoaded(Ljava/lang/Object;)V

    return-void
.end method
