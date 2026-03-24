.class public final Lcom/anythink/splashad/api/ATSplashAd$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$2;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/anythink/splashad/api/ATSplashAd$2;

.field public final synthetic val$adInfo:Lcom/anythink/core/api/ATAdInfo;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$networkConfirmInfo:Lcom/anythink/core/api/ATNetworkConfirmInfo;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$2;Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$2$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$2;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd$2$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd$2$2;->val$adInfo:Lcom/anythink/core/api/ATAdInfo;

    iput-object p4, p0, Lcom/anythink/splashad/api/ATSplashAd$2$2;->val$networkConfirmInfo:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2$2;->this$1:Lcom/anythink/splashad/api/ATSplashAd$2;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/anythink/splashad/api/ATSplashExListener;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/anythink/splashad/api/ATSplashExListener;

    iget-object v2, p0, Lcom/anythink/splashad/api/ATSplashAd$2$2;->val$context:Landroid/content/Context;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2$2;->val$adInfo:Lcom/anythink/core/api/ATAdInfo;

    iget-object v3, p0, Lcom/anythink/splashad/api/ATSplashAd$2$2;->val$networkConfirmInfo:Lcom/anythink/core/api/ATNetworkConfirmInfo;

    invoke-interface {v1, v2, v0, v3}, Lcom/anythink/splashad/api/ATSplashExListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_1
    return-void
.end method
