.class public Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$000(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$000(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/ad;->t()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$102(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;J)J

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$100(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$100(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "currentPosition:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentPosition:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v5}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$100(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v2}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$000(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v2

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v2}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$000(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/ad;->s()J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v2}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$000(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/ad;->s()J

    move-result-wide v7

    div-long/2addr v7, v3

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x43fa0000    # 500.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v5

    :cond_1
    :goto_0
    if-ltz v0, :cond_3

    cmp-long v1, v7, v5

    if-lez v1, :cond_3

    int-to-long v1, v0

    const-wide/16 v5, 0x1

    add-long/2addr v5, v7

    cmp-long v9, v1, v5

    if-gez v9, :cond_3

    iget-object v1, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$200(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$000(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/ad;->s()J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v1, v5, v6}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$300(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPlayStarted()\uff0cgetCurrentPosition:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v2}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$000(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/ad;->t()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$202(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    long-to-int v2, v7

    invoke-static {v1, v0, v2}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$400(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;II)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$502(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;Z)Z

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$600(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$700(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer$2;->this$0:Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;

    invoke-static {v0}, Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;->access$800(Lcom/anythink/expressad/playercommon/VideoFeedsPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-void
.end method
