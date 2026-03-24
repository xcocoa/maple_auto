.class public final Lcom/anythink/expressad/exoplayer/d/b$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/d/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d/b$a;->a:Lcom/anythink/expressad/exoplayer/d/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static a(I)J
    .locals 2

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private a(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/d/b$a;->a:Lcom/anythink/expressad/exoplayer/d/b;

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/d/b;->a(Lcom/anythink/expressad/exoplayer/d/b;)I

    move-result v3

    if-le v0, v3, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->arg2:I

    sub-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/d/b$a;->a:Lcom/anythink/expressad/exoplayer/d/b;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/d/b;->a:Lcom/anythink/expressad/exoplayer/d/n;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/d/n;->b()[B

    move-result-object v1

    goto :goto_3

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/d/b$a;->a:Lcom/anythink/expressad/exoplayer/d/b;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/d/b;->a:Lcom/anythink/expressad/exoplayer/d/n;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/d/n;->a()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    add-int/2addr v3, v1

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/d/b$a;->a:Lcom/anythink/expressad/exoplayer/d/b;

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/d/b;->a(Lcom/anythink/expressad/exoplayer/d/b;)I

    move-result v5

    if-le v3, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    iput v3, v4, Landroid/os/Message;->arg2:I

    sub-int/2addr v3, v1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v5, 0x1388

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {p0, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    if-eqz v1, :cond_5

    return-void

    :cond_5
    move-object v1, v2

    :goto_3
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/d/b$a;->a:Lcom/anythink/expressad/exoplayer/d/b;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/d/b;->c:Lcom/anythink/expressad/exoplayer/d/b$b;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
