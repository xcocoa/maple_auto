.class public final Lcom/anythink/expressad/exoplayer/h/q$a;
.super Lcom/anythink/expressad/exoplayer/h/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/h/p;-><init>(Lcom/anythink/expressad/exoplayer/ae;)V

    return-void
.end method


# virtual methods
.method public final a(IIZ)I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/p;->b:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/ae;->a(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/anythink/expressad/exoplayer/h/p;->b(Z)I

    move-result p1

    :cond_0
    return p1
.end method

.method public final b(IIZ)I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/p;->b:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/ae;->b(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/anythink/expressad/exoplayer/h/p;->a(Z)I

    move-result p1

    :cond_0
    return p1
.end method
