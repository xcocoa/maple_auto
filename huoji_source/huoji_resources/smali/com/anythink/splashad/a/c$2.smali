.class public final Lcom/anythink/splashad/a/c$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/a/c;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/a/h;ZLcom/anythink/core/api/BaseAd;Lcom/anythink/core/common/f/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Lcom/anythink/splashad/a/h;

.field public final synthetic c:Lcom/anythink/splashad/a/c;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/a/c;[ZLcom/anythink/splashad/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/a/c$2;->c:Lcom/anythink/splashad/a/c;

    iput-object p2, p0, Lcom/anythink/splashad/a/c$2;->a:[Z

    iput-object p3, p0, Lcom/anythink/splashad/a/c$2;->b:Lcom/anythink/splashad/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/splashad/a/c$2;->b:Lcom/anythink/splashad/a/h;

    invoke-virtual {p1}, Lcom/anythink/splashad/a/h;->onSplashAdClicked()V

    return-void
.end method

.method public final onAdDislikeButtonClick()V
    .locals 0

    return-void
.end method

.method public final onAdImpressed()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/splashad/a/c$2;->a:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/anythink/splashad/a/c$2;->b:Lcom/anythink/splashad/a/h;

    invoke-virtual {v0}, Lcom/anythink/splashad/a/h;->onSplashAdShow()V

    return-void
.end method

.method public final onAdVideoEnd()V
    .locals 0

    return-void
.end method

.method public final onAdVideoProgress(I)V
    .locals 0

    return-void
.end method

.method public final onAdVideoStart()V
    .locals 0

    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/a/c$2;->b:Lcom/anythink/splashad/a/h;

    invoke-virtual {v0, p1}, Lcom/anythink/splashad/a/h;->onDeeplinkCallback(Z)V

    return-void
.end method

.method public final onDownloadConfirmCallback(Landroid/content/Context;Landroid/view/View;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    iget-object p2, p0, Lcom/anythink/splashad/a/c$2;->b:Lcom/anythink/splashad/a/h;

    invoke-virtual {p2, p1, p3}, Lcom/anythink/splashad/a/h;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    return-void
.end method
