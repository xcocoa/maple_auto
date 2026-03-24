.class public Lcn/haorui/sdk/adsail_ad/AdNative$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;


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

.field public final synthetic val$customSkipButton:Landroid/view/View;

.field public final synthetic val$splashSkipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    iput-object p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$splashSkipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$customSkipButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkip()V
    .locals 2

    const-string v0, "AdNative"

    const-string v1, "onSkip: "

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onADSkip()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onADClosed()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onADTick(J)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$splashSkipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->getTotalTime()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v0, p1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$splashSkipView:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->getShowTime()I

    move-result p1

    int-to-long p1, p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$customSkipButton:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onTimeOver()V
    .locals 2

    const-string v0, "AdNative"

    const-string v1, "onTimeOver: "

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onADTimeOver()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$11;->val$adListener:Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;->onADClosed()V

    :cond_0
    return-void
.end method
