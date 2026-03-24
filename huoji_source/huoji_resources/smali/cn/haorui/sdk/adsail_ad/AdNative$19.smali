.class public Lcn/haorui/sdk/adsail_ad/AdNative$19;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

.field public final synthetic val$nativeAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$19;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$19;->val$adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$19;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$19;->val$adListener:Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$19;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    invoke-interface {v0, v1}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADLoaded(Ljava/lang/Object;)V

    return-void
.end method
