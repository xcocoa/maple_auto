.class public final Lcom/anythink/expressad/exoplayer/l/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:Lcom/anythink/expressad/exoplayer/l/f$b;


# instance fields
.field public volatile a:J

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/os/HandlerThread;

.field private h:Landroid/view/Choreographer;

.field private i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/l/f$b;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/l/f$b;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/l/f$b;->e:Lcom/anythink/expressad/exoplayer/l/f$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->a:J

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->f:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static a()Lcom/anythink/expressad/exoplayer/l/f$b;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/exoplayer/l/f$b;->e:Lcom/anythink/expressad/exoplayer/l/f$b;

    return-object v0
.end method

.method private d()V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->h:Landroid/view/Choreographer;

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->h:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->i:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->h:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->i:I

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->a:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final doFrame(J)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->h:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->a:J

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->h:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->h:Landroid/view/Choreographer;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->i:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->i:I

    if-nez v1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->a:J

    :cond_1
    return v0

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->h:Landroid/view/Choreographer;

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->i:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->i:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_3
    return v0

    :cond_4
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/l/f$b;->h:Landroid/view/Choreographer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method
