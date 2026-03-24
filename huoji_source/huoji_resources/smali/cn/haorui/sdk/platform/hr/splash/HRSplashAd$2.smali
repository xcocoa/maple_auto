.class public Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->splashAnimationFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

.field public final synthetic val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;->this$0:Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;->this$0:Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->access$000(Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Z)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$2;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    return-void
.end method
