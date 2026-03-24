.class public Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->onADTimeOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$200(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$200(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$300(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;->onAdTimeOver(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$300(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->getSplashFinishingTouchListener()Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$500(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$300(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->getSplashFinishingTouchListener()Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;->isSupportSplashClickEye(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$300(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->getSplashFinishingTouchListener()Lcn/haorui/sdk/core/ad/splash/ISplashFinishingTouchListener;

    move-result-object v0

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$4;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v2}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$000(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getIs_eyes()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
