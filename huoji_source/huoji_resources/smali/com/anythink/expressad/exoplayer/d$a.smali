.class public final Lcom/anythink/expressad/exoplayer/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/exoplayer/j/l;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/anythink/expressad/exoplayer/k/v;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/d$a;->a:Lcom/anythink/expressad/exoplayer/j/l;

    const/16 v1, 0x3a98

    iput v1, p0, Lcom/anythink/expressad/exoplayer/d$a;->b:I

    const v1, 0xc350

    iput v1, p0, Lcom/anythink/expressad/exoplayer/d$a;->c:I

    const/16 v1, 0x9c4

    iput v1, p0, Lcom/anythink/expressad/exoplayer/d$a;->d:I

    const/16 v1, 0x1388

    iput v1, p0, Lcom/anythink/expressad/exoplayer/d$a;->e:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/d$a;->f:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/d$a;->g:Z

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/d$a;->h:Lcom/anythink/expressad/exoplayer/k/v;

    return-void
.end method

.method private a(I)Lcom/anythink/expressad/exoplayer/d$a;
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/d$a;->f:I

    return-object p0
.end method

.method private a(IIII)Lcom/anythink/expressad/exoplayer/d$a;
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/d$a;->b:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/d$a;->c:I

    iput p3, p0, Lcom/anythink/expressad/exoplayer/d$a;->d:I

    iput p4, p0, Lcom/anythink/expressad/exoplayer/d$a;->e:I

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/j/l;)Lcom/anythink/expressad/exoplayer/d$a;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d$a;->a:Lcom/anythink/expressad/exoplayer/j/l;

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/k/v;)Lcom/anythink/expressad/exoplayer/d$a;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/d$a;->h:Lcom/anythink/expressad/exoplayer/k/v;

    return-object p0
.end method

.method private a(Z)Lcom/anythink/expressad/exoplayer/d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/d$a;->g:Z

    return-object p0
.end method

.method private a()Lcom/anythink/expressad/exoplayer/d;
    .locals 11

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/d$a;->a:Lcom/anythink/expressad/exoplayer/j/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/exoplayer/j/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/j/l;-><init>(B)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/d$a;->a:Lcom/anythink/expressad/exoplayer/j/l;

    :cond_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/d;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/d$a;->a:Lcom/anythink/expressad/exoplayer/j/l;

    iget v4, p0, Lcom/anythink/expressad/exoplayer/d$a;->b:I

    iget v5, p0, Lcom/anythink/expressad/exoplayer/d$a;->c:I

    iget v6, p0, Lcom/anythink/expressad/exoplayer/d$a;->d:I

    iget v7, p0, Lcom/anythink/expressad/exoplayer/d$a;->e:I

    iget v8, p0, Lcom/anythink/expressad/exoplayer/d$a;->f:I

    iget-boolean v9, p0, Lcom/anythink/expressad/exoplayer/d$a;->g:Z

    iget-object v10, p0, Lcom/anythink/expressad/exoplayer/d$a;->h:Lcom/anythink/expressad/exoplayer/k/v;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/anythink/expressad/exoplayer/d;-><init>(Lcom/anythink/expressad/exoplayer/j/l;IIIIIZLcom/anythink/expressad/exoplayer/k/v;)V

    return-object v0
.end method
