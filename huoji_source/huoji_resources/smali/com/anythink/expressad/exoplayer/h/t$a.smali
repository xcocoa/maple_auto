.class public final Lcom/anythink/expressad/exoplayer/h/t$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/t$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/anythink/expressad/exoplayer/h/s$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/exoplayer/h/t$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/h/t$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/anythink/expressad/exoplayer/h/s$a;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/anythink/expressad/exoplayer/h/s$a;J)V
    .locals 0
    .param p3    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/exoplayer/h/t$a$a;",
            ">;I",
            "Lcom/anythink/expressad/exoplayer/h/s$a;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->a:I

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->d:J

    return-void
.end method

.method private a(J)J
    .locals 3

    invoke-static {p1, p2}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->d:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private static a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/j/k;IJ)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v11, p3

    invoke-virtual/range {v0 .. v12}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJ)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/j/k;IJJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v16}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    return-void
.end method

.method private b(Lcom/anythink/expressad/exoplayer/j/k;IJJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    move-wide/from16 v15, p7

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual/range {v0 .. v16}, Lcom/anythink/expressad/exoplayer/h/t$a;->b(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/anythink/expressad/exoplayer/h/s$a;J)Lcom/anythink/expressad/exoplayer/h/t$a;
    .locals 7
    .param p2    # Lcom/anythink/expressad/exoplayer/h/s$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    new-instance v6, Lcom/anythink/expressad/exoplayer/h/t$a;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/h/t$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/anythink/expressad/exoplayer/h/s$a;J)V

    return-object v6
.end method

.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/t$a$1;

    invoke-direct {v3, p0, v2}, Lcom/anythink/expressad/exoplayer/h/t$a$1;-><init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;)V

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(IJJ)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/anythink/expressad/exoplayer/h/t$c;

    move-wide v1, p2

    invoke-direct {p0, p2, p3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p4

    invoke-direct {p0, v1, v2}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/anythink/expressad/exoplayer/h/t$c;-><init>(IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v11}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/h/t$c;)V

    return-void
.end method

.method public final a(ILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;J)V
    .locals 12
    .param p2    # Lcom/anythink/expressad/exoplayer/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    new-instance v11, Lcom/anythink/expressad/exoplayer/h/t$c;

    move-wide/from16 v1, p5

    invoke-direct {p0, v1, v2}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/anythink/expressad/exoplayer/h/t$c;-><init>(IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v11}, Lcom/anythink/expressad/exoplayer/h/t$a;->b(Lcom/anythink/expressad/exoplayer/h/t$c;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    invoke-direct {v1, p1, p2}, Lcom/anythink/expressad/exoplayer/h/t$a$a;-><init>(Landroid/os/Handler;Lcom/anythink/expressad/exoplayer/h/t;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/t$a$3;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/anythink/expressad/exoplayer/h/t$a$3;-><init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V
    .locals 10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v4, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lcom/anythink/expressad/exoplayer/h/t$a$6;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/h/t$a$6;-><init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/t$a$8;

    invoke-direct {v3, p0, v2, p1}, Lcom/anythink/expressad/exoplayer/h/t$a$8;-><init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/t;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJ)V
    .locals 20
    .param p4    # Lcom/anythink/expressad/exoplayer/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    new-instance v9, Lcom/anythink/expressad/exoplayer/h/t$b;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p11

    invoke-direct/range {v1 .. v8}, Lcom/anythink/expressad/exoplayer/h/t$b;-><init>(Lcom/anythink/expressad/exoplayer/j/k;JJJ)V

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/t$c;

    move-wide/from16 v2, p7

    invoke-direct {v0, v2, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v16

    move-wide/from16 v2, p9

    invoke-direct {v0, v2, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v18

    move-object v10, v1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-direct/range {v10 .. v19}, Lcom/anythink/expressad/exoplayer/h/t$c;-><init>(IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJ)V

    invoke-virtual {v0, v9, v1}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V
    .locals 10
    .param p4    # Lcom/anythink/expressad/exoplayer/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    new-instance v9, Lcom/anythink/expressad/exoplayer/h/t$b;

    move-object v1, v9

    move-object v2, p1

    move-wide/from16 v3, p11

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-direct/range {v1 .. v8}, Lcom/anythink/expressad/exoplayer/h/t$b;-><init>(Lcom/anythink/expressad/exoplayer/j/k;JJJ)V

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/t$c;

    move-wide/from16 v2, p7

    invoke-direct {p0, v2, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v2

    move-wide/from16 v4, p9

    invoke-direct {p0, v4, v5}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v4

    move-object/from16 p7, v1

    move/from16 p8, p2

    move/from16 p9, p3

    move-object/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move-wide/from16 p13, v2

    move-wide/from16 p15, v4

    invoke-direct/range {p7 .. p16}, Lcom/anythink/expressad/exoplayer/h/t$c;-><init>(IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v9, v1}, Lcom/anythink/expressad/exoplayer/h/t$a;->b(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V
    .locals 10
    .param p4    # Lcom/anythink/expressad/exoplayer/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    new-instance v9, Lcom/anythink/expressad/exoplayer/h/t$b;

    move-object v1, v9

    move-object v2, p1

    move-wide/from16 v3, p11

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-direct/range {v1 .. v8}, Lcom/anythink/expressad/exoplayer/h/t$b;-><init>(Lcom/anythink/expressad/exoplayer/j/k;JJJ)V

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/t$c;

    move-wide/from16 v2, p7

    invoke-direct {p0, v2, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v2

    move-wide/from16 v4, p9

    invoke-direct {p0, v4, v5}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v4

    move-object/from16 p7, v1

    move/from16 p8, p2

    move/from16 p9, p3

    move-object/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move-wide/from16 p13, v2

    move-wide/from16 p15, v4

    invoke-direct/range {p7 .. p16}, Lcom/anythink/expressad/exoplayer/h/t$c;-><init>(IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJ)V

    move-object/from16 v2, p17

    move/from16 v3, p18

    invoke-virtual {p0, v9, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/j/k;Ljava/io/IOException;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v17, p2

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v0 .. v18}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/t$a$2;

    invoke-direct {v3, p0, v2}, Lcom/anythink/expressad/exoplayer/h/t$a$2;-><init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;)V

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/t$a$4;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/anythink/expressad/exoplayer/h/t$a$4;-><init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/t$a$9;

    invoke-direct {v3, p0, v2, p1}, Lcom/anythink/expressad/exoplayer/h/t$a$9;-><init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V
    .locals 10
    .param p4    # Lcom/anythink/expressad/exoplayer/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    new-instance v9, Lcom/anythink/expressad/exoplayer/h/t$b;

    move-object v1, v9

    move-object v2, p1

    move-wide/from16 v3, p11

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-direct/range {v1 .. v8}, Lcom/anythink/expressad/exoplayer/h/t$b;-><init>(Lcom/anythink/expressad/exoplayer/j/k;JJJ)V

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/t$c;

    move-wide/from16 v2, p7

    invoke-direct {p0, v2, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v2

    move-wide/from16 v4, p9

    invoke-direct {p0, v4, v5}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(J)J

    move-result-wide v4

    move-object/from16 p7, v1

    move/from16 p8, p2

    move/from16 p9, p3

    move-object/from16 p10, p4

    move/from16 p11, p5

    move-object/from16 p12, p6

    move-wide/from16 p13, v2

    move-wide/from16 p15, v4

    invoke-direct/range {p7 .. p16}, Lcom/anythink/expressad/exoplayer/h/t$c;-><init>(IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJ)V

    invoke-virtual {p0, v9, v1}, Lcom/anythink/expressad/exoplayer/h/t$a;->c(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/t$a$7;

    invoke-direct {v3, p0, v2}, Lcom/anythink/expressad/exoplayer/h/t$a$7;-><init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;)V

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final c(Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/t$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->b:Lcom/anythink/expressad/exoplayer/h/t;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/t$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/t$a$5;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/anythink/expressad/exoplayer/h/t$a$5;-><init>(Lcom/anythink/expressad/exoplayer/h/t$a;Lcom/anythink/expressad/exoplayer/h/t;Lcom/anythink/expressad/exoplayer/h/t$b;Lcom/anythink/expressad/exoplayer/h/t$c;)V

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
