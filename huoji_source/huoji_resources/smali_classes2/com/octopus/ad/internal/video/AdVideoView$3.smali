.class public Lcom/octopus/ad/internal/video/AdVideoView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$3;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView$3;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/video/AdVideoView;->a(Lcom/octopus/ad/internal/video/AdVideoView;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPlayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/octopus/ad/internal/video/AdVideoView$3;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-static {v0}, Lcom/octopus/ad/internal/video/AdVideoView;->c(Lcom/octopus/ad/internal/video/AdVideoView;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "octopus"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$3;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-static {p1}, Lcom/octopus/ad/internal/video/AdVideoView;->d(Lcom/octopus/ad/internal/video/AdVideoView;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v0, "Video start called!"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$3;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->start(I)V

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$3;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    sget-object v0, Lcom/octopus/ad/internal/video/AdVideoView$a;->b:Lcom/octopus/ad/internal/video/AdVideoView$a;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$3;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    sget-object v0, Lcom/octopus/ad/internal/video/AdVideoView$a;->c:Lcom/octopus/ad/internal/video/AdVideoView$a;

    :goto_0
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->a(Lcom/octopus/ad/internal/video/AdVideoView;Lcom/octopus/ad/internal/video/AdVideoView$a;)Lcom/octopus/ad/internal/video/AdVideoView$a;

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$3;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-static {p1}, Lcom/octopus/ad/internal/video/AdVideoView;->c(Lcom/octopus/ad/internal/video/AdVideoView;)I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$3;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    const v0, 0x13948

    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/video/AdVideoView;->onRewardVideoAdFailedToLoad(I)V

    :cond_1
    return-void
.end method
