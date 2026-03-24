.class public Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->onADError(Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

.field public final synthetic val$i:Ljava/lang/Integer;

.field public final synthetic val$s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->val$s:Ljava/lang/String;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->val$i:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onADError, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->val$i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashAdListenerAdapter"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$000(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$000(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->val$i:Ljava/lang/Integer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->val$s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->val$s:Ljava/lang/String;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->val$i:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$5;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$200(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/core/ad/splash/SplashAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method
