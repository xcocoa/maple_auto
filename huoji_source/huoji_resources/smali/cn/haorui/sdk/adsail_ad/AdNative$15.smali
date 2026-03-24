.class public Lcn/haorui/sdk/adsail_ad/AdNative$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadSplashAdOk(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Landroid/view/View;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

.field public final synthetic val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$15;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$15;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$15;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$15;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/AdNative;->access$1000(Lcn/haorui/sdk/adsail_ad/AdNative;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$15;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$15;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$15;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$15;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onAdClicked()V

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$15;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    return-void
.end method
