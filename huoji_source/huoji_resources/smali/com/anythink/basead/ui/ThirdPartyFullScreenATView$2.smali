.class public final Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-static {p1, p2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method public final onAdClicked(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/anythink/basead/e/i;

    invoke-direct {v0}, Lcom/anythink/basead/e/i;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/e/i;->a(II)Lcom/anythink/basead/e/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/basead/e/b$b;->b(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final onAdDislikeButtonClick()V
    .locals 0

    return-void
.end method

.method public final onAdImpressed()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/e/b$b;->a(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final onAdVideoEnd()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->b(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->I()V

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/e/b$b;->b()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    return-void
.end method

.method public final onAdVideoProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->b(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-static {v0, p1}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->a(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;I)V

    return-void
.end method

.method public final onAdVideoStart()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;->a(Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyFullScreenATView$2;->a:Lcom/anythink/basead/ui/ThirdPartyFullScreenATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseScreenATView;->T:Lcom/anythink/basead/e/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/e/b$b;->a()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onDownloadConfirmCallback(Landroid/content/Context;Landroid/view/View;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 0

    return-void
.end method
