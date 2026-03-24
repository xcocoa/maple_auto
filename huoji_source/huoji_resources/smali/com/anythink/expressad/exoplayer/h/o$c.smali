.class public final Lcom/anythink/expressad/exoplayer/h/o$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/a/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/anythink/expressad/exoplayer/j/h$a;

.field private b:Lcom/anythink/expressad/exoplayer/e/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/j/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->a:Lcom/anythink/expressad/exoplayer/j/h$a;

    const/4 p1, -0x1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->e:I

    const/high16 p1, 0x100000

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->f:I

    return-void
.end method

.method private a(I)Lcom/anythink/expressad/exoplayer/h/o$c;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->e:I

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/e/h;)Lcom/anythink/expressad/exoplayer/h/o$c;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->b:Lcom/anythink/expressad/exoplayer/e/h;

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/h/o$c;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->d:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/h/o$c;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/net/Uri;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)Lcom/anythink/expressad/exoplayer/h/o;
    .locals 0
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/anythink/expressad/exoplayer/h/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/h/o$c;->a(Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/h/o;

    move-result-object p1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/c;->a(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)V

    :cond_0
    return-object p1
.end method

.method private b(I)Lcom/anythink/expressad/exoplayer/h/o$c;
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->f:I

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/h/o;
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->g:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->b:Lcom/anythink/expressad/exoplayer/e/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/exoplayer/e/c;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/e/c;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->b:Lcom/anythink/expressad/exoplayer/e/h;

    :cond_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/o;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->a:Lcom/anythink/expressad/exoplayer/j/h$a;

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->b:Lcom/anythink/expressad/exoplayer/e/h;

    iget v5, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->e:I

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->c:Ljava/lang/String;

    iget v7, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->f:I

    iget-object v8, p0, Lcom/anythink/expressad/exoplayer/h/o$c;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/anythink/expressad/exoplayer/h/o;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;ILjava/lang/String;ILjava/lang/Object;B)V

    return-object v0
.end method

.method public final a()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    return-object v0
.end method

.method public final synthetic b(Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/h/s;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/h/o$c;->a(Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/h/o;

    move-result-object p1

    return-object p1
.end method
