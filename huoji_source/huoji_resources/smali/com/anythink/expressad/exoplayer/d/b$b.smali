.class public final Lcom/anythink/expressad/exoplayer/d/b$b;
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
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/d/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d/b$b;->a:Lcom/anythink/expressad/exoplayer/d/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/d/b$b;->a:Lcom/anythink/expressad/exoplayer/d/b;

    invoke-static {p1, v1, v0}, Lcom/anythink/expressad/exoplayer/d/b;->b(Lcom/anythink/expressad/exoplayer/d/b;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/d/b$b;->a:Lcom/anythink/expressad/exoplayer/d/b;

    invoke-static {p1, v1, v0}, Lcom/anythink/expressad/exoplayer/d/b;->a(Lcom/anythink/expressad/exoplayer/d/b;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
