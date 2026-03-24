.class public final Lcom/anythink/basead/ui/PlayerView$4;
.super Lcom/anythink/expressad/exoplayer/w$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PlayerView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/PlayerView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/PlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPlayerError(Lcom/anythink/expressad/exoplayer/g;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/anythink/expressad/exoplayer/w$a;->onPlayerError(Lcom/anythink/expressad/exoplayer/g;)V

    const/4 v0, 0x0

    const-string v1, "Play error and ExoPlayer have not message."

    if-eqz p1, :cond_3

    iget v2, p1, Lcom/anythink/expressad/exoplayer/g;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const-string v1, "Play error, because have a UnexpectedException."

    goto :goto_0

    :cond_1
    const-string v1, "Play error, because have a RendererException."

    goto :goto_0

    :cond_2
    const-string v1, "Play error, because have a SourceException."

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",eception:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    iget-boolean v2, p1, Lcom/anythink/basead/ui/PlayerView;->d:Z

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    iput-object v1, p1, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/lang/String;

    sget-object p1, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "ExoPlayer onPlayerError()...error:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",and rePrepareVideoSourceAgain"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    iput-boolean v0, p1, Lcom/anythink/basead/ui/PlayerView;->d:Z

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->J(Lcom/anythink/basead/ui/PlayerView;)V

    return-void

    :cond_5
    sget-object v0, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->I(Lcom/anythink/basead/ui/PlayerView;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->K(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_9

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->F(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ad;->t()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-wide v4, v2

    :goto_3
    cmp-long p1, v4, v2

    if-gtz p1, :cond_6

    const-string p1, "50001"

    goto :goto_4

    :cond_6
    const-string p1, "40002"

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "videoUrl:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v2}, Lcom/anythink/basead/ui/PlayerView;->L(Lcom/anythink/basead/ui/PlayerView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",readyRate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    iget v2, v2, Lcom/anythink/basead/ui/PlayerView;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",cdRate:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    iget v2, v2, Lcom/anythink/basead/ui/PlayerView;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",play process:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    iget-object v2, v2, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ",localFileErrorMsg:"

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/PlayerView;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",errorMsg:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v1}, Lcom/anythink/basead/ui/PlayerView;->M(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Video player error!"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/anythink/basead/ui/PlayerView;->b(Lcom/anythink/basead/ui/PlayerView;Lcom/anythink/basead/c/e;)V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Video player prepare fail!"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/anythink/basead/ui/PlayerView;->c(Lcom/anythink/basead/ui/PlayerView;Lcom/anythink/basead/c/e;)V

    :cond_9
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/w$a;->onPlayerStateChanged(ZI)V

    sget-object p1, Lcom/anythink/basead/ui/PlayerView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_7

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->I(Lcom/anythink/basead/ui/PlayerView;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->c(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->T(Lcom/anythink/basead/ui/PlayerView;)Z

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->R(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;I)I

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->U(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->V(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->c()V

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->W(Lcom/anythink/basead/ui/PlayerView;)V

    goto/16 :goto_1

    :cond_2
    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->M(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->P(Lcom/anythink/basead/ui/PlayerView;)Z

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/anythink/basead/ui/PlayerView;->b(Lcom/anythink/basead/ui/PlayerView;Z)Z

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->F(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/ad;->s()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-static {p2, v3}, Lcom/anythink/basead/ui/PlayerView;->b(Lcom/anythink/basead/ui/PlayerView;I)I

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->Q(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->S(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;

    move-result-object p2

    iget-object v2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v2}, Lcom/anythink/basead/ui/PlayerView;->R(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p2, v2, v3}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView$a;->b(J)V

    :cond_3
    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->R(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p2, v2}, Lcom/anythink/basead/ui/PlayerView;->c(Lcom/anythink/basead/ui/PlayerView;I)I

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->R(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p2, v2}, Lcom/anythink/basead/ui/PlayerView;->d(Lcom/anythink/basead/ui/PlayerView;I)I

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->R(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p2, v2}, Lcom/anythink/basead/ui/PlayerView;->e(Lcom/anythink/basead/ui/PlayerView;I)I

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    iget v2, p2, Lcom/anythink/basead/ui/PlayerView;->c:I

    if-lez v2, :cond_5

    const/16 v3, 0x64

    if-ge v2, v3, :cond_5

    iget v1, p2, Lcom/anythink/basead/ui/PlayerView;->b:I

    if-le v1, v2, :cond_4

    div-int/2addr v2, v0

    iput v2, p2, Lcom/anythink/basead/ui/PlayerView;->b:I

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p2, Lcom/anythink/basead/ui/PlayerView;->b:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->R(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p2, Lcom/anythink/basead/ui/PlayerView;->a:I

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    iget v0, p2, Lcom/anythink/basead/ui/PlayerView;->a:I

    add-int/lit16 v0, v0, -0x7d0

    iput v0, p2, Lcom/anythink/basead/ui/PlayerView;->a:I

    invoke-static {p2, p1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;Z)Z

    goto :goto_0

    :cond_5
    invoke-static {p2, v1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;Z)Z

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->h(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->h(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p1

    int-to-long p1, p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->F(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ad;->t()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_8

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->F(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/expressad/exoplayer/ad;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->h(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/exoplayer/ad;->a(J)V

    return-void

    :cond_7
    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p2}, Lcom/anythink/basead/ui/PlayerView;->N(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p2, p1}, Lcom/anythink/basead/ui/PlayerView;->b(Lcom/anythink/basead/ui/PlayerView;Z)Z

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$4;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->O(Lcom/anythink/basead/ui/PlayerView;)V

    :cond_8
    :goto_1
    return-void
.end method
