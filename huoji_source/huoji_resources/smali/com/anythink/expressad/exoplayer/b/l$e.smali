.class public final Lcom/anythink/expressad/exoplayer/b/l$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/b/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/b/l;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l$e;->a:Lcom/anythink/expressad/exoplayer/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/exoplayer/b/l;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/b/l$e;-><init>(Lcom/anythink/expressad/exoplayer/b/l;)V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .locals 10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l$e;->a:Lcom/anythink/expressad/exoplayer/b/l;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/l;->d(Lcom/anythink/expressad/exoplayer/b/l;)Lcom/anythink/expressad/exoplayer/b/h$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/b/l$e;->a:Lcom/anythink/expressad/exoplayer/b/l;

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/b/l;->e(Lcom/anythink/expressad/exoplayer/b/l;)J

    move-result-wide v2

    sub-long v8, v0, v2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/b/l$e;->a:Lcom/anythink/expressad/exoplayer/b/l;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/b/l;->d(Lcom/anythink/expressad/exoplayer/b/l;)Lcom/anythink/expressad/exoplayer/b/h$c;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-interface/range {v4 .. v9}, Lcom/anythink/expressad/exoplayer/b/h$c;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ignoring impossibly large audio latency: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioTrack"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(JJJJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spurious audio timestamp (frame position mismatch): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l$e;->a:Lcom/anythink/expressad/exoplayer/b/l;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/b/l;->b(Lcom/anythink/expressad/exoplayer/b/l;)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l$e;->a:Lcom/anythink/expressad/exoplayer/b/l;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/b/l;->c(Lcom/anythink/expressad/exoplayer/b/l;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/anythink/expressad/exoplayer/b/l;->c:Z

    if-nez p2, :cond_0

    const-string p2, "AudioTrack"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p2, Lcom/anythink/expressad/exoplayer/b/l$c;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/anythink/expressad/exoplayer/b/l$c;-><init>(Ljava/lang/String;B)V

    throw p2
.end method

.method public final b(JJJJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spurious audio timestamp (system clock mismatch): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/b/l$e;->a:Lcom/anythink/expressad/exoplayer/b/l;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/b/l;->b(Lcom/anythink/expressad/exoplayer/b/l;)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/b/l$e;->a:Lcom/anythink/expressad/exoplayer/b/l;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/b/l;->c(Lcom/anythink/expressad/exoplayer/b/l;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/anythink/expressad/exoplayer/b/l;->c:Z

    if-nez p2, :cond_0

    const-string p2, "AudioTrack"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p2, Lcom/anythink/expressad/exoplayer/b/l$c;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/anythink/expressad/exoplayer/b/l$c;-><init>(Ljava/lang/String;B)V

    throw p2
.end method
