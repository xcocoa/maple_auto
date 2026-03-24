.class public Lcom/octopus/ad/internal/video/AdVideoView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$4;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p1, p0, Lcom/octopus/ad/internal/video/AdVideoView$4;->a:Lcom/octopus/ad/internal/video/AdVideoView;

    const p2, 0x13948

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/video/AdVideoView;->onRewardVideoAdFailedToLoad(I)V

    const/4 p1, 0x0

    return p1
.end method
