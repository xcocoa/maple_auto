.class public Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/InteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->onAdReady(Lcn/haorui/sdk/core/ad/splash/ISplashAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2$1;->this$1:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2$1;->this$1:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;

    iget-object v0, v0, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader$2;->this$0:Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$100(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;)Lcn/haorui/sdk/platform/ms/splash/HrCustomSplashAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;->access$600(Lcn/haorui/sdk/platform/ms/splash/HRSplashAdLoader;Lcom/meishu/sdk/platform/custom/splash/MsCustomSplashAd;)V

    return-void
.end method
