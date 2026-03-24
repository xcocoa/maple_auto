.class public Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->onAdRenderFail(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

.field public final synthetic val$code:I

.field public final synthetic val$msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    iput p2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->val$code:I

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$000(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$000(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->val$code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$200(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$200(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->val$msg:Ljava/lang/String;

    iget v3, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->val$code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdPlatformError(Lcn/haorui/sdk/core/loader/AdPlatformError;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$200(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->val$msg:Ljava/lang/String;

    iget v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$6;->val$code:I

    invoke-interface {v0, v1, v2}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
