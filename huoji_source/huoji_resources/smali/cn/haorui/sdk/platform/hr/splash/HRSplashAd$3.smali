.class public Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$3;->this$0:Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$3;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$3;->this$0:Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd$3;->val$nativeAd:Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;->access$000(Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Z)V

    return-void
.end method
