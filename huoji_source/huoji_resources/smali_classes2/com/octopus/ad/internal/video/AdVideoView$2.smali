.class public Lcom/octopus/ad/internal/video/AdVideoView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/video/AdVideoView;->transferAd(Lcom/octopus/ad/internal/view/AdWebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/video/AdVideoView;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/video/AdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 7

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p2, p2, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-static {p2}, Lcom/octopus/ad/internal/video/AdVideoView;->a(Lcom/octopus/ad/internal/video/AdVideoView;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/octopus/ad/internal/video/AdVideoView;->b(Lcom/octopus/ad/internal/video/AdVideoView;Z)Z

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-static {p2}, Lcom/octopus/ad/internal/video/AdVideoView;->b(Lcom/octopus/ad/internal/video/AdVideoView;)Lcom/octopus/ad/a/a;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object v0, p2, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v1, v0, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p2}, Lcom/octopus/ad/internal/video/AdVideoView;->c(Lcom/octopus/ad/internal/video/AdVideoView;)I

    move-result v2

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p2, p2, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/view/AdWebView;->getShowCloseBtnTime()I

    move-result v3

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p2, p2, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/view/AdWebView;->getAutoCloseTime()I

    move-result v4

    iget-object v5, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p2, v5, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p2, p2, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/network/ServerResponse;->getAdType()Lcom/octopus/ad/b/e$a;

    move-result-object p2

    sget-object v0, Lcom/octopus/ad/b/e$a;->b:Lcom/octopus/ad/b/e$a;

    if-ne p2, v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual/range {v1 .. v6}, Lcom/octopus/ad/internal/view/AdViewImpl;->addCloseButton(IIILandroid/view/View;Z)V

    :cond_1
    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p2, p2, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p2, p2, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p2

    invoke-interface {p2}, Lcom/octopus/ad/internal/b;->a()V

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p3, p2, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object v0, p3, Lcom/octopus/ad/internal/view/AdWebView;->ad:Lcom/octopus/ad/internal/network/ServerResponse;

    iget-object p3, p3, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p3}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdParameters()Lcom/octopus/ad/internal/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/octopus/ad/internal/d;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lcom/octopus/ad/internal/network/ServerResponse;->handleView(Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->getInstance()Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/octopus/ad/internal/utilities/LoadingDialogUtil;->dismissLoadingDialog()V

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    iget-object p2, p2, Lcom/octopus/ad/internal/video/AdVideoView;->mAdWebView:Lcom/octopus/ad/internal/view/AdWebView;

    iget-object p2, p2, Lcom/octopus/ad/internal/view/AdWebView;->adViewImpl:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object p2

    invoke-interface {p2}, Lcom/octopus/ad/internal/b;->f()V

    :cond_3
    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-static {p2}, Lcom/octopus/ad/internal/video/AdVideoView;->b(Lcom/octopus/ad/internal/video/AdVideoView;)Lcom/octopus/ad/a/a;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/octopus/ad/internal/video/AdVideoView$2;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-static {p2}, Lcom/octopus/ad/internal/video/AdVideoView;->b(Lcom/octopus/ad/internal/video/AdVideoView;)Lcom/octopus/ad/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/octopus/ad/a/a;->c()V

    :cond_4
    return p1
.end method
