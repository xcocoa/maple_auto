.class public Lcom/octopus/ad/internal/view/AdViewImpl$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/view/AdViewImpl$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$15;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$15;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->b(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$15;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->c(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$15;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->d(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$15;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/view/AdViewImpl;->m(Lcom/octopus/ad/internal/view/AdViewImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$15;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liftUpfrequency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$15;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget-object v2, v2, Lcom/octopus/ad/internal/view/AdViewImpl;->serverResponse:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/network/ServerResponse;->getTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/internal/utilities/SPUtils;->putFrequency(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$15;->a:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->n(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    :cond_0
    return-void
.end method
