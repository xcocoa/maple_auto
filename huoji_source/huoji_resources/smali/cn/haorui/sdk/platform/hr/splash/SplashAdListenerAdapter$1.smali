.class public Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->onADExposure()V
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

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$000(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$000(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "SplashAdListenerAdapter"

    const-string v2, "send onADExposure"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v4}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$100(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v5}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$100(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcn/haorui/sdk/core/utils/MacroUtil;->doReplaceUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    invoke-static {v4}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$000(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;)Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1$1;-><init>(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter$1;->this$0:Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;->access$402(Lcn/haorui/sdk/platform/hr/splash/SplashAdListenerAdapter;Z)Z

    return-void
.end method
