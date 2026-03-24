.class public Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;
.super Lcn/haorui/sdk/core/ad/splash/SplashAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/splash/NativeSplashAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl$IAdShowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashAdImpl"


# instance fields
.field private adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

.field private adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

.field private autoShow:Z

.field private isAnimFinish:Z

.field private isVideoFinish:Z

.field private listener:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl$IAdShowListener;

.field private mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

.field private showListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl$IAdShowListener;",
            ">;"
        }
    .end annotation
.end field

.field private showed:Z

.field private skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

.field private wrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;Z)V
    .locals 2
    .param p1    # Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->showListeners:Ljava/util/List;

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->wrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    iput-boolean p3, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->autoShow:Z

    return-void
.end method

.method public static checkContainerVisibility(Landroid/view/View;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{Visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Shown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", Alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", WindowVisibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", MeasuredWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", MeasuredHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{cover: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", rect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lt v4, v5, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    if-ge v4, p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    iget v5, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{rect.width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rect.height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screen.width: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screen.height: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", proportion: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    float-to-double v1, v4

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    cmpg-double p0, v3, v1

    if-gtz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public getAdRoot()Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    return-object v0
.end method

.method public getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    return-object v0
.end method

.method public bridge synthetic getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    return-object v0
.end method

.method public getAdType()Lcn/haorui/sdk/core/ad/AdType;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->SPLASH:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->adSlot:Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public getIsAnimFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->isAnimFinish:Z

    return v0
.end method

.method public getIsHideSkipBtn()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->wrapper:Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->getIsHideSkipBtn()Z

    move-result v0

    return v0
.end method

.method public getIsVideoFinish()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->isVideoFinish:Z

    return v0
.end method

.method public getMediaView()Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->manualPause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->manualResume()V

    return-void
.end method

.method public setAdRoot(Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    return-void
.end method

.method public setAdView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    return-void
.end method

.method public setAnimFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->isAnimFinish:Z

    return-void
.end method

.method public setMediaView(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->mediaView:Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    return-void
.end method

.method public setOnAdShowListener(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl$IAdShowListener;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->showListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSkipView(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    return-void
.end method

.method public setVideoFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->isVideoFinish:Z

    return-void
.end method

.method public showAd(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setAdContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->showListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->showListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl$IAdShowListener;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl$IAdShowListener;->onShow()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showAdReal()V
    .locals 2

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->showed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->adContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->adContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->adRoot:Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->skipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->showed:Z

    :cond_1
    return-void
.end method
