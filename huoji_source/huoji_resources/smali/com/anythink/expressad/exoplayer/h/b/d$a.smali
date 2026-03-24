.class public final Lcom/anythink/expressad/exoplayer/h/b/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/e/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/anythink/expressad/exoplayer/m;

.field private final b:I

.field private final c:I

.field private final d:Lcom/anythink/expressad/exoplayer/m;

.field private e:Lcom/anythink/expressad/exoplayer/e/m;


# direct methods
.method public constructor <init>(IILcom/anythink/expressad/exoplayer/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->b:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->c:I

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->d:Lcom/anythink/expressad/exoplayer/m;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->e:Lcom/anythink/expressad/exoplayer/e/m;

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I

    move-result p1

    return p1
.end method

.method public final a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->e:Lcom/anythink/expressad/exoplayer/e/m;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/b/d$b;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/anythink/expressad/exoplayer/e/d;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/e/d;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->e:Lcom/anythink/expressad/exoplayer/e/m;

    return-void

    :cond_0
    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->c:I

    invoke-interface {p1, v0}, Lcom/anythink/expressad/exoplayer/h/b/d$b;->a(I)Lcom/anythink/expressad/exoplayer/e/m;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->e:Lcom/anythink/expressad/exoplayer/e/m;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->a:Lcom/anythink/expressad/exoplayer/m;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/m;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/k/s;I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->e:Lcom/anythink/expressad/exoplayer/e/m;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/m;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->d:Lcom/anythink/expressad/exoplayer/m;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/m;->a(Lcom/anythink/expressad/exoplayer/m;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->a:Lcom/anythink/expressad/exoplayer/m;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/d$a;->e:Lcom/anythink/expressad/exoplayer/e/m;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/m;)V

    return-void
.end method
