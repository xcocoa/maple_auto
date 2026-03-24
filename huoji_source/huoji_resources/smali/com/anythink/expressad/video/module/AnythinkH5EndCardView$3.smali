.class public final Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;
.super Lcom/anythink/expressad/atsignalcommon/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadingResourceStatus(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->loadingResourceStatus(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-static {p1, p2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->a(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;I)I

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->c(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->d(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)Z

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 p2, 0x4

    const-string v0, "success"

    invoke-virtual {p1, v0, p2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p2, 0x7f

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 p2, 0x6

    const-string v0, "failed"

    invoke-virtual {p1, v0, p2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-boolean p1, p1, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->w:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "===========finish  loadSuccess:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-boolean p2, p2, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->v:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->v:Z

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p2, 0x64

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p2, 0x78

    invoke-interface {p1, p2, v0}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/atsignalcommon/a/b;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-boolean p4, p1, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->w:Z

    if-nez p4, :cond_0

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p4, 0x76

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p4, p2}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 p2, 0x3

    invoke-virtual {p1, p3, p2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p2, 0x7f

    const-string p3, ""

    invoke-interface {p1, p2, p3}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-object p1, p1, Lcom/anythink/expressad/video/module/AnythinkBaseView;->e:Lcom/anythink/expressad/video/module/a/a;

    const/16 p2, 0x81

    invoke-interface {p1, p2, p3}, Lcom/anythink/expressad/video/module/a/a;->a(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->w:Z

    :cond_0
    return-void
.end method

.method public final readyState(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->readyState(Landroid/webkit/WebView;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "h5EncardView readyStatus:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "- isError"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-boolean v0, v0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->w:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-static {p1, p2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->a(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;I)I

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    iget-boolean p1, p1, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->w:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->b(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;

    invoke-static {v0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;->a(Lcom/anythink/expressad/video/module/AnythinkH5EndCardView;J)V

    :cond_0
    return-void
.end method
