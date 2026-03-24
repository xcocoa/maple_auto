.class public Lcom/anythink/splashad/api/ATSplashAd$2;
.super Lcom/anythink/splashad/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashSkipInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/splashad/api/ATSplashAd;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/api/ATSplashAd;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    invoke-direct {p0}, Lcom/anythink/splashad/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$2$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$2$4;-><init>(Lcom/anythink/splashad/api/ATSplashAd$2;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdDismiss(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$2$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/splashad/api/ATSplashAd$2$5;-><init>(Lcom/anythink/splashad/api/ATSplashAd$2;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$2$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$2$3;-><init>(Lcom/anythink/splashad/api/ATSplashAd$2;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object p1, p1, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/anythink/splashad/a/c;->a(Lcom/anythink/core/api/ATAdStatusInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/anythink/splashad/api/ATSplashAd;->access$000(Lcom/anythink/splashad/api/ATSplashAd;ILcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    :cond_0
    return-void
.end method

.method public onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/splashad/api/ATSplashAd$2$1;-><init>(Lcom/anythink/splashad/api/ATSplashAd$2;Lcom/anythink/core/api/ATAdInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$2$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/anythink/splashad/api/ATSplashAd$2$2;-><init>(Lcom/anythink/splashad/api/ATSplashAd$2;Landroid/content/Context;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
