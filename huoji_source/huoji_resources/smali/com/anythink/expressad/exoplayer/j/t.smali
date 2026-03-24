.class public final Lcom/anythink/expressad/exoplayer/j/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/j/t$e;,
        Lcom/anythink/expressad/exoplayer/j/t$b;,
        Lcom/anythink/expressad/exoplayer/j/t$f;,
        Lcom/anythink/expressad/exoplayer/j/t$d;,
        Lcom/anythink/expressad/exoplayer/j/t$a;,
        Lcom/anythink/expressad/exoplayer/j/t$c;,
        Lcom/anythink/expressad/exoplayer/j/t$g;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field private final e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/anythink/expressad/exoplayer/j/t$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/expressad/exoplayer/j/t$b<",
            "+",
            "Lcom/anythink/expressad/exoplayer/j/t$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/t;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/j/t;)Lcom/anythink/expressad/exoplayer/j/t$b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/j/t;->f:Lcom/anythink/expressad/exoplayer/j/t$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/j/t;Lcom/anythink/expressad/exoplayer/j/t$b;)Lcom/anythink/expressad/exoplayer/j/t$b;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/t;->f:Lcom/anythink/expressad/exoplayer/j/t$b;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/j/t;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j/t;->g:Ljava/io/IOException;

    return-object p1
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/j/t;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/j/t;->e:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t$d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/j/t$c;Lcom/anythink/expressad/exoplayer/j/t$a;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/anythink/expressad/exoplayer/j/t$c;",
            ">(TT;",
            "Lcom/anythink/expressad/exoplayer/j/t$a<",
            "TT;>;I)J"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t;->g:Ljava/io/IOException;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/anythink/expressad/exoplayer/j/t$b;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/j/t$b;-><init>(Lcom/anythink/expressad/exoplayer/j/t;Landroid/os/Looper;Lcom/anythink/expressad/exoplayer/j/t$c;Lcom/anythink/expressad/exoplayer/j/t$a;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/anythink/expressad/exoplayer/j/t$b;->a(J)V

    return-wide v8
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t;->g:Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t;->f:Lcom/anythink/expressad/exoplayer/j/t$b;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    iget p1, v0, Lcom/anythink/expressad/exoplayer/j/t$b;->a:I

    :cond_0
    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/j/t$b;->a(I)V

    :cond_1
    return-void

    :cond_2
    throw v0
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/t$d;)V
    .locals 2
    .param p1    # Lcom/anythink/expressad/exoplayer/j/t$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t;->f:Lcom/anythink/expressad/exoplayer/j/t$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/j/t$b;->a(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/anythink/expressad/exoplayer/j/t$e;

    invoke-direct {v1, p1}, Lcom/anythink/expressad/exoplayer/j/t$e;-><init>(Lcom/anythink/expressad/exoplayer/j/t$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j/t;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t;->f:Lcom/anythink/expressad/exoplayer/j/t$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j/t;->f:Lcom/anythink/expressad/exoplayer/j/t$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/j/t$b;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/j/t;->a(I)V

    return-void
.end method
