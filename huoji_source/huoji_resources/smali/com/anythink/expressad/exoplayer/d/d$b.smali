.class public final Lcom/anythink/expressad/exoplayer/d/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/d/j$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/anythink/expressad/exoplayer/d/j$f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/d/d;


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d/d$b;->a:Lcom/anythink/expressad/exoplayer/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/expressad/exoplayer/d/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/d/d$b;-><init>(Lcom/anythink/expressad/exoplayer/d/d;)V

    return-void
.end method


# virtual methods
.method public final a([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/d/d$b;->a:Lcom/anythink/expressad/exoplayer/d/d;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/d/d;->b(Lcom/anythink/expressad/exoplayer/d/d;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/d/d$b;->a:Lcom/anythink/expressad/exoplayer/d/d;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/d/d;->g:Lcom/anythink/expressad/exoplayer/d/d$c;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
