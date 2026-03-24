.class public abstract Lcn/haorui/sdk/core/ad/splash/SplashAd;
.super Lcn/haorui/sdk/core/ad/BaseAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/splash/ISplashAd;


# instance fields
.field public adContainer:Landroid/view/ViewGroup;

.field public downloadDialogListener:Lcn/haorui/sdk/core/ad/splash/ISplashDownloadDialogListener;

.field private finishingTouchListener:Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;

.field public height:Ljava/lang/Integer;

.field private isFinishingTouch:Z

.field public width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/ad/BaseAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHeight()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsFinishingTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->isFinishingTouch:Z

    return v0
.end method

.method public getSplashFinishingTouchListener()Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->finishingTouchListener:Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAdContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->adContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setDownloadDialogListener(Lcn/haorui/sdk/core/ad/splash/ISplashDownloadDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->downloadDialogListener:Lcn/haorui/sdk/core/ad/splash/ISplashDownloadDialogListener;

    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->height:Ljava/lang/Integer;

    return-void
.end method

.method public setIsFinishingTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->isFinishingTouch:Z

    return-void
.end method

.method public setSplashFinishingTouchListener(Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->finishingTouchListener:Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;

    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/splash/SplashAd;->width:Ljava/lang/Integer;

    return-void
.end method

.method public splashAnimationFinish()V
    .locals 0

    return-void
.end method
