.class public Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$700(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->splashClickPause()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "SplashSkipView"

    const-string v1, "onResume: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->access$700(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->splashClickPause()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;->this$0:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->resume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
