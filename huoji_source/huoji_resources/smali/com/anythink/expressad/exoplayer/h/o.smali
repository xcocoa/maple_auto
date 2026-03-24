.class public final Lcom/anythink/expressad/exoplayer/h/o;
.super Lcom/anythink/expressad/exoplayer/h/c;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/n$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/o$b;,
        Lcom/anythink/expressad/exoplayer/h/o$c;,
        Lcom/anythink/expressad/exoplayer/h/o$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x3

.field public static final b:I = 0x6

.field public static final c:I = -0x1

.field public static final d:I = 0x100000


# instance fields
.field private final e:Landroid/net/Uri;

.field private final f:Lcom/anythink/expressad/exoplayer/j/h$a;

.field private final g:Lcom/anythink/expressad/exoplayer/e/h;

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:J

.field private m:Z


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;ILjava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/c;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/o;->e:Landroid/net/Uri;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/o;->f:Lcom/anythink/expressad/exoplayer/j/h$a;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/o;->g:Lcom/anythink/expressad/exoplayer/e/h;

    iput p4, p0, Lcom/anythink/expressad/exoplayer/h/o;->h:I

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/h/o;->i:Ljava/lang/String;

    iput p6, p0, Lcom/anythink/expressad/exoplayer/h/o;->j:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/o;->l:J

    iput-object p7, p0, Lcom/anythink/expressad/exoplayer/h/o;->k:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;ILjava/lang/String;ILjava/lang/Object;B)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/anythink/expressad/exoplayer/h/o;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/o$a;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/h/o;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/o$a;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/o$a;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/h/o;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/o$a;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/o$a;Ljava/lang/String;B)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, -0x1

    const/high16 v6, 0x100000

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/h/o;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h$a;Lcom/anythink/expressad/exoplayer/e/h;ILjava/lang/String;ILjava/lang/Object;)V

    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/o$b;

    invoke-direct {p1, p5}, Lcom/anythink/expressad/exoplayer/h/o$b;-><init>(Lcom/anythink/expressad/exoplayer/h/o$a;)V

    invoke-virtual {p0, p4, p1}, Lcom/anythink/expressad/exoplayer/h/c;->a(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)V

    :cond_0
    return-void
.end method

.method private b(JZ)V
    .locals 6

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/o;->l:J

    iput-boolean p3, p0, Lcom/anythink/expressad/exoplayer/h/o;->m:Z

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/ab;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/h/o;->l:J

    iget-boolean v3, p0, Lcom/anythink/expressad/exoplayer/h/o;->m:Z

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/o;->k:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/h/ab;-><init>(JZZLjava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;
    .locals 11

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/n;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/o;->e:Landroid/net/Uri;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/o;->f:Lcom/anythink/expressad/exoplayer/j/h$a;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/j/h$a;->a()Lcom/anythink/expressad/exoplayer/j/h;

    move-result-object v3

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/o;->g:Lcom/anythink/expressad/exoplayer/e/h;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/e/h;->a()[Lcom/anythink/expressad/exoplayer/e/e;

    move-result-object v4

    iget v5, p0, Lcom/anythink/expressad/exoplayer/h/o;->h:I

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/h/c;->a(Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object v6

    iget-object v9, p0, Lcom/anythink/expressad/exoplayer/h/o;->i:Ljava/lang/String;

    iget v10, p0, Lcom/anythink/expressad/exoplayer/h/o;->j:I

    move-object v1, v0

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/anythink/expressad/exoplayer/h/n;-><init>(Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h;[Lcom/anythink/expressad/exoplayer/e/e;ILcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/n$c;Lcom/anythink/expressad/exoplayer/j/b;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(JZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/o;->l:J

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/o;->l:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/o;->m:Z

    if-ne v0, p3, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/o;->b(JZ)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 0

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/n;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/n;->f()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h;Z)V
    .locals 1

    iget-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/o;->l:J

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/expressad/exoplayer/h/o;->b(JZ)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
