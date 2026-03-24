.class public Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->onADSkip()V
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

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$3;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$3;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$200(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$3;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$200(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$3;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$300(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRSplashAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/ad/splash/SplashAdListener;->onAdSkip(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V

    :cond_0
    return-void
.end method
