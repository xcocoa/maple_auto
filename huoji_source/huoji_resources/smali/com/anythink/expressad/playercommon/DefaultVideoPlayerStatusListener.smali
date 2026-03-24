.class public Lcom/anythink/expressad/playercommon/DefaultVideoPlayerStatusListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/playercommon/VideoPlayerStatusListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DefaultVideoPlayerStatusListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingEnd()V
    .locals 0

    return-void
.end method

.method public onBufferingStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPlayCompleted()V
    .locals 0

    return-void
.end method

.method public onPlayError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPlayProgress(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPlayProgress:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",allDuration:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onPlayProgressMS(II)V
    .locals 0

    return-void
.end method

.method public onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPlayStarted(I)V
    .locals 0

    return-void
.end method

.method public onVideoDownloadResume()V
    .locals 0

    return-void
.end method
