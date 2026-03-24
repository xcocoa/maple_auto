.class public final Lcom/anythink/expressad/exoplayer/h/ad$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/j/h$a;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/anythink/expressad/exoplayer/j/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/j/h$a;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->a:Lcom/anythink/expressad/exoplayer/j/h$a;

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->b:I

    return-void
.end method

.method private a(I)Lcom/anythink/expressad/exoplayer/h/ad$c;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->b:I

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/h/ad$c;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Z)Lcom/anythink/expressad/exoplayer/h/ad$c;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->d:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->c:Z

    return-object p0
.end method

.method private a(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/m;J)Lcom/anythink/expressad/exoplayer/h/ad;
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->d:Z

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/ad;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->a:Lcom/anythink/expressad/exoplayer/j/h$a;

    iget v7, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->b:I

    iget-boolean v8, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->c:Z

    iget-object v9, p0, Lcom/anythink/expressad/exoplayer/h/ad$c;->e:Ljava/lang/Object;

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/anythink/expressad/exoplayer/h/ad;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JIZLjava/lang/Object;B)V

    return-object v0
.end method

.method private a(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/m;JLandroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)Lcom/anythink/expressad/exoplayer/h/ad;
    .locals 14
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/anythink/expressad/exoplayer/h/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/anythink/expressad/exoplayer/h/ad$c;->d:Z

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/ad;

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/h/ad$c;->a:Lcom/anythink/expressad/exoplayer/j/h$a;

    iget v10, v0, Lcom/anythink/expressad/exoplayer/h/ad$c;->b:I

    iget-boolean v11, v0, Lcom/anythink/expressad/exoplayer/h/ad$c;->c:Z

    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/h/ad$c;->e:Ljava/lang/Object;

    const/4 v13, 0x0

    move-object v4, v3

    move-object v5, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v4 .. v13}, Lcom/anythink/expressad/exoplayer/h/ad;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/m;JIZLjava/lang/Object;B)V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1, v2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)V

    :cond_0
    return-object v3
.end method
