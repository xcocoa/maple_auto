.class public Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/MediationInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$serverExtra:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$1;->val$serverExtra:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$1;->this$0:Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;

    iget-object v1, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter$1;->val$serverExtra:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;->access$000(Lcn/haorui/sdk/platform/topon/splash/HRSplashAdapter;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATBiddingListener;)V

    return-void
.end method
