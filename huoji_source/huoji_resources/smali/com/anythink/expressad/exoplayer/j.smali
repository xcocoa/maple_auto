.class public final Lcom/anythink/expressad/exoplayer/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/j$a;
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final A:Landroid/os/Handler;

.field private final B:Lcom/anythink/expressad/exoplayer/k;

.field private final C:Landroid/os/Handler;

.field private final D:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/anythink/expressad/exoplayer/w$c;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Lcom/anythink/expressad/exoplayer/ae$b;

.field private final F:Lcom/anythink/expressad/exoplayer/ae$a;

.field private final G:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/anythink/expressad/exoplayer/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private I:I

.field private J:Z

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Lcom/anythink/expressad/exoplayer/v;

.field private O:Lcom/anythink/expressad/exoplayer/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private P:Lcom/anythink/expressad/exoplayer/u;

.field private Q:I

.field private R:I

.field private S:J

.field private final x:[Lcom/anythink/expressad/exoplayer/y;

.field private final y:Lcom/anythink/expressad/exoplayer/i/h;

.field private final z:Lcom/anythink/expressad/exoplayer/i/i;


# direct methods
.method public constructor <init>([Lcom/anythink/expressad/exoplayer/y;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/p;Lcom/anythink/expressad/exoplayer/k/c;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object v11, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Init "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [ExoPlayerLib/2.8.4] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/anythink/expressad/exoplayer/k/af;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/expressad/exoplayer/y;

    iput-object v0, v11, Lcom/anythink/expressad/exoplayer/j;->x:[Lcom/anythink/expressad/exoplayer/y;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/i/h;

    iput-object v0, v11, Lcom/anythink/expressad/exoplayer/j;->y:Lcom/anythink/expressad/exoplayer/i/h;

    iput-boolean v2, v11, Lcom/anythink/expressad/exoplayer/j;->H:Z

    iput v2, v11, Lcom/anythink/expressad/exoplayer/j;->I:I

    iput-boolean v2, v11, Lcom/anythink/expressad/exoplayer/j;->J:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v11, Lcom/anythink/expressad/exoplayer/j;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v8, Lcom/anythink/expressad/exoplayer/i/i;

    array-length v0, v1

    new-array v0, v0, [Lcom/anythink/expressad/exoplayer/aa;

    array-length v2, v1

    new-array v2, v2, [Lcom/anythink/expressad/exoplayer/i/f;

    const/4 v3, 0x0

    invoke-direct {v8, v0, v2, v3}, Lcom/anythink/expressad/exoplayer/i/i;-><init>([Lcom/anythink/expressad/exoplayer/aa;[Lcom/anythink/expressad/exoplayer/i/f;Ljava/lang/Object;)V

    iput-object v8, v11, Lcom/anythink/expressad/exoplayer/j;->z:Lcom/anythink/expressad/exoplayer/i/i;

    new-instance v0, Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/ae$b;-><init>()V

    iput-object v0, v11, Lcom/anythink/expressad/exoplayer/j;->E:Lcom/anythink/expressad/exoplayer/ae$b;

    new-instance v0, Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/ae$a;-><init>()V

    iput-object v0, v11, Lcom/anythink/expressad/exoplayer/j;->F:Lcom/anythink/expressad/exoplayer/ae$a;

    sget-object v0, Lcom/anythink/expressad/exoplayer/v;->a:Lcom/anythink/expressad/exoplayer/v;

    iput-object v0, v11, Lcom/anythink/expressad/exoplayer/j;->N:Lcom/anythink/expressad/exoplayer/v;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_1
    new-instance v9, Lcom/anythink/expressad/exoplayer/j$1;

    invoke-direct {v9, p0, v0}, Lcom/anythink/expressad/exoplayer/j$1;-><init>(Lcom/anythink/expressad/exoplayer/j;Landroid/os/Looper;)V

    iput-object v9, v11, Lcom/anythink/expressad/exoplayer/j;->A:Landroid/os/Handler;

    new-instance v0, Lcom/anythink/expressad/exoplayer/u;

    sget-object v3, Lcom/anythink/expressad/exoplayer/ae;->a:Lcom/anythink/expressad/exoplayer/ae;

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/anythink/expressad/exoplayer/h/af;->a:Lcom/anythink/expressad/exoplayer/h/af;

    move-object v2, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;JLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    iput-object v0, v11, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v11, Lcom/anythink/expressad/exoplayer/j;->G:Ljava/util/ArrayDeque;

    new-instance v12, Lcom/anythink/expressad/exoplayer/k;

    iget-boolean v5, v11, Lcom/anythink/expressad/exoplayer/j;->H:Z

    iget v6, v11, Lcom/anythink/expressad/exoplayer/j;->I:I

    iget-boolean v7, v11, Lcom/anythink/expressad/exoplayer/j;->J:Z

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object v3, v8

    move-object/from16 v4, p3

    move-object v8, v9

    move-object v9, p0

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/anythink/expressad/exoplayer/k;-><init>([Lcom/anythink/expressad/exoplayer/y;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/i/i;Lcom/anythink/expressad/exoplayer/p;ZIZLandroid/os/Handler;Lcom/anythink/expressad/exoplayer/h;Lcom/anythink/expressad/exoplayer/k/c;)V

    iput-object v12, v11, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v12}, Lcom/anythink/expressad/exoplayer/k;->b()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v11, Lcom/anythink/expressad/exoplayer/j;->C:Landroid/os/Handler;

    return-void
.end method

.method private H()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private a(ZZI)Lcom/anythink/expressad/exoplayer/u;
    .locals 15

    move-object v0, p0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Lcom/anythink/expressad/exoplayer/j;->Q:I

    iput v1, v0, Lcom/anythink/expressad/exoplayer/j;->R:I

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v1

    iput v1, v0, Lcom/anythink/expressad/exoplayer/j;->Q:I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->o()I

    move-result v1

    iput v1, v0, Lcom/anythink/expressad/exoplayer/j;->R:I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->t()J

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Lcom/anythink/expressad/exoplayer/j;->S:J

    new-instance v1, Lcom/anythink/expressad/exoplayer/u;

    if-eqz p2, :cond_1

    sget-object v2, Lcom/anythink/expressad/exoplayer/ae;->a:Lcom/anythink/expressad/exoplayer/ae;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    :goto_1
    move-object v4, v2

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/u;->b:Ljava/lang/Object;

    :goto_2
    move-object v5, v2

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v6, v2, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v7, v2, Lcom/anythink/expressad/exoplayer/u;->d:J

    iget-wide v9, v2, Lcom/anythink/expressad/exoplayer/u;->e:J

    const/4 v12, 0x0

    if-eqz p2, :cond_3

    sget-object v3, Lcom/anythink/expressad/exoplayer/h/af;->a:Lcom/anythink/expressad/exoplayer/h/af;

    goto :goto_3

    :cond_3
    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/u;->h:Lcom/anythink/expressad/exoplayer/h/af;

    :goto_3
    move-object v13, v3

    if-eqz p2, :cond_4

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/j;->z:Lcom/anythink/expressad/exoplayer/i/i;

    goto :goto_4

    :cond_4
    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/u;->i:Lcom/anythink/expressad/exoplayer/i/i;

    :goto_4
    move-object v14, v2

    move-object v3, v1

    move/from16 v11, p3

    invoke-direct/range {v3 .. v14}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    return-object v1
.end method

.method private a(Lcom/anythink/expressad/exoplayer/u;IZI)V
    .locals 7

    iget v0, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    if-nez v0, :cond_4

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/u;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lcom/anythink/expressad/exoplayer/u;->e:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    :cond_0
    move-object v1, p1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/j;->L:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, v1, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iput p2, p0, Lcom/anythink/expressad/exoplayer/j;->R:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/j;->Q:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/j;->S:J

    :cond_2
    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/j;->L:Z

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    const/4 v4, 0x2

    :goto_0
    iget-boolean v5, p0, Lcom/anythink/expressad/exoplayer/j;->M:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/exoplayer/j;->L:Z

    iput-boolean p2, p0, Lcom/anythink/expressad/exoplayer/j;->M:Z

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/j;->a(Lcom/anythink/expressad/exoplayer/u;ZIIZZ)V

    :cond_4
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/u;ZIIZZ)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/j;->G:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/j;->G:Ljava/util/ArrayDeque;

    new-instance v14, Lcom/anythink/expressad/exoplayer/j$a;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/j;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/j;->y:Lcom/anythink/expressad/exoplayer/i/h;

    iget-boolean v12, v0, Lcom/anythink/expressad/exoplayer/j;->H:Z

    move-object v3, v14

    move-object/from16 v4, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Lcom/anythink/expressad/exoplayer/j$a;-><init>(Lcom/anythink/expressad/exoplayer/u;Lcom/anythink/expressad/exoplayer/u;Ljava/util/Set;Lcom/anythink/expressad/exoplayer/i/h;ZIIZZZ)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/j;->G:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/j;->G:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/j$a;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/j$a;->a()V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/j;->G:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(J)J
    .locals 4

    invoke-static {p1, p2}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j;->F:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->F:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae$a;->a()J

    move-result-wide v0

    add-long/2addr p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public final A()I
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final B()J
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j;->F:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->F:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae$a;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v2, v2, Lcom/anythink/expressad/exoplayer/u;->e:J

    invoke-static {v2, v3}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final C()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->x:[Lcom/anythink/expressad/exoplayer/y;

    array-length v0, v0

    return v0
.end method

.method public final D()Lcom/anythink/expressad/exoplayer/h/af;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->h:Lcom/anythink/expressad/exoplayer/h/af;

    return-object v0
.end method

.method public final E()Lcom/anythink/expressad/exoplayer/i/g;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->i:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    return-object v0
.end method

.method public final F()Lcom/anythink/expressad/exoplayer/ae;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    return-object v0
.end method

.method public final G()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k;->b()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;
    .locals 7

    new-instance v6, Lcom/anythink/expressad/exoplayer/x;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v4

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/j;->C:Landroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/x;-><init>(Lcom/anythink/expressad/exoplayer/x$a;Lcom/anythink/expressad/exoplayer/x$b;Lcom/anythink/expressad/exoplayer/ae;ILandroid/os/Handler;)V

    return-object v6
.end method

.method public final a(I)V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/j;->I:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/j;->I:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k;->a(I)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/w$c;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/w$c;->onRepeatModeChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    if-ltz p1, :cond_6

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->b()I

    move-result v1

    if-ge p1, v1, :cond_6

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/anythink/expressad/exoplayer/j;->M:Z

    iget v1, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    add-int/2addr v1, v7

    iput v1, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->y()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j;->A:Landroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {p1, v2, v7, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iput p1, p0, Lcom/anythink/expressad/exoplayer/j;->Q:I

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    cmp-long v1, p2, v3

    if-nez v1, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    move-wide v3, p2

    :goto_0
    iput-wide v3, p0, Lcom/anythink/expressad/exoplayer/j;->S:J

    iput v2, p0, Lcom/anythink/expressad/exoplayer/j;->R:I

    goto :goto_2

    :cond_3
    cmp-long v1, p2, v3

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j;->E:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object v1

    iget-wide v1, v1, Lcom/anythink/expressad/exoplayer/ae$b;->h:J

    goto :goto_1

    :cond_4
    invoke-static {p2, p3}, Lcom/anythink/expressad/exoplayer/b;->b(J)J

    move-result-wide v1

    :goto_1
    move-wide v8, v1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j;->E:Lcom/anythink/expressad/exoplayer/ae$b;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j;->F:Lcom/anythink/expressad/exoplayer/ae$a;

    move-object v1, v0

    move v4, p1

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/ae;->a(Lcom/anythink/expressad/exoplayer/ae$b;Lcom/anythink/expressad/exoplayer/ae$a;IJ)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v8, v9}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/j;->S:J

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/j;->R:I

    :goto_2
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-static {p2, p3}, Lcom/anythink/expressad/exoplayer/b;->b(J)J

    move-result-wide p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/ae;IJ)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/j;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/exoplayer/w$c;

    invoke-interface {p2, v7}, Lcom/anythink/expressad/exoplayer/w$c;->onPositionDiscontinuity(I)V

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    new-instance v1, Lcom/anythink/expressad/exoplayer/o;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/o;-><init>(Lcom/anythink/expressad/exoplayer/ae;IJ)V

    throw v1
.end method

.method public final a(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/anythink/expressad/exoplayer/j;->a(IJ)V

    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/anythink/expressad/exoplayer/g;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j;->O:Lcom/anythink/expressad/exoplayer/g;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/w$c;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/w$c;->onPlayerError(Lcom/anythink/expressad/exoplayer/g;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/anythink/expressad/exoplayer/v;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->N:Lcom/anythink/expressad/exoplayer/v;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/j;->N:Lcom/anythink/expressad/exoplayer/v;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/w$c;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/w$c;->onPlaybackParametersChanged(Lcom/anythink/expressad/exoplayer/v;)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/anythink/expressad/exoplayer/u;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v4, -0x1

    const/4 v9, 0x0

    if-eq p1, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    if-nez v4, :cond_a

    iget-wide v4, v3, Lcom/anythink/expressad/exoplayer/u;->d:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    const-wide/16 v5, 0x0

    iget-wide v7, v3, Lcom/anythink/expressad/exoplayer/u;->e:J

    invoke-virtual/range {v3 .. v8}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v3

    :cond_6
    move-object v5, v3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j;->L:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, v5, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iput v9, p0, Lcom/anythink/expressad/exoplayer/j;->R:I

    iput v9, p0, Lcom/anythink/expressad/exoplayer/j;->Q:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/anythink/expressad/exoplayer/j;->S:J

    :cond_8
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j;->L:Z

    if-eqz v0, :cond_9

    const/4 v8, 0x0

    goto :goto_3

    :cond_9
    const/4 v8, 0x2

    :goto_3
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j;->M:Z

    iput-boolean v9, p0, Lcom/anythink/expressad/exoplayer/j;->L:Z

    iput-boolean v9, p0, Lcom/anythink/expressad/exoplayer/j;->M:Z

    const/4 v10, 0x0

    move-object v4, p0

    move v6, v2

    move v7, p1

    move v9, v0

    invoke-direct/range {v4 .. v10}, Lcom/anythink/expressad/exoplayer/j;->a(Lcom/anythink/expressad/exoplayer/u;ZIIZZ)V

    :cond_a
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/ac;)V
    .locals 1
    .param p1    # Lcom/anythink/expressad/exoplayer/ac;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p1, Lcom/anythink/expressad/exoplayer/ac;->e:Lcom/anythink/expressad/exoplayer/ac;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/ac;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/anythink/expressad/exoplayer/j;->a(Lcom/anythink/expressad/exoplayer/h/s;ZZ)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s;ZZ)V
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->O:Lcom/anythink/expressad/exoplayer/g;

    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/anythink/expressad/exoplayer/j;->a(ZZI)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j;->L:Z

    iget v1, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s;ZZ)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/exoplayer/j;->a(Lcom/anythink/expressad/exoplayer/u;ZIIZZ)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/v;)V
    .locals 1
    .param p1    # Lcom/anythink/expressad/exoplayer/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p1, Lcom/anythink/expressad/exoplayer/v;->a:Lcom/anythink/expressad/exoplayer/v;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k;->b(Lcom/anythink/expressad/exoplayer/v;)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/w$c;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j;->H:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/j;->H:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k;->a(Z)V

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/exoplayer/j;->a(Lcom/anythink/expressad/exoplayer/u;ZIIZZ)V

    :cond_0
    return-void
.end method

.method public final varargs a([Lcom/anythink/expressad/exoplayer/h$c;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/h$c;->a:Lcom/anythink/expressad/exoplayer/x$b;

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/exoplayer/j;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v3

    iget v4, v2, Lcom/anythink/expressad/exoplayer/h$c;->b:I

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v3

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/h$c;->c:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()Lcom/anythink/expressad/exoplayer/w$g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lcom/anythink/expressad/exoplayer/j;->a(IJ)V

    return-void
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/w$c;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j;->J:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/j;->J:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k;->b(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->D:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/w$c;

    invoke-interface {v1, p1}, Lcom/anythink/expressad/exoplayer/w$c;->onShuffleModeEnabledChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs b([Lcom/anythink/expressad/exoplayer/h$c;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    iget-object v5, v4, Lcom/anythink/expressad/exoplayer/h$c;->a:Lcom/anythink/expressad/exoplayer/x$b;

    invoke-virtual {p0, v5}, Lcom/anythink/expressad/exoplayer/j;->a(Lcom/anythink/expressad/exoplayer/x$b;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v5

    iget v6, v4, Lcom/anythink/expressad/exoplayer/h$c;->b:I

    invoke-virtual {v5, v6}, Lcom/anythink/expressad/exoplayer/x;->a(I)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v5

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/h$c;->c:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lcom/anythink/expressad/exoplayer/x;->a(Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/x;->i()Lcom/anythink/expressad/exoplayer/x;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/x;

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/x;->k()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    goto :goto_1

    :catch_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-void
.end method

.method public final c(I)I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->x:[Lcom/anythink/expressad/exoplayer/y;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/y;->a()I

    move-result p1

    return p1
.end method

.method public final c()Lcom/anythink/expressad/exoplayer/w$e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Z)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->O:Lcom/anythink/expressad/exoplayer/g;

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p1, v0}, Lcom/anythink/expressad/exoplayer/j;->a(ZZI)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    iget v1, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/anythink/expressad/exoplayer/j;->K:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k;->c(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/anythink/expressad/exoplayer/j;->a(Lcom/anythink/expressad/exoplayer/u;ZIIZZ)V

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/u;->f:I

    return v0
.end method

.method public final e()Lcom/anythink/expressad/exoplayer/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->O:Lcom/anythink/expressad/exoplayer/g;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j;->H:Z

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/j;->I:I

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/j;->J:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/u;->g:Z

    return v0
.end method

.method public final j()V
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/j;->b(I)V

    return-void
.end method

.method public final k()Lcom/anythink/expressad/exoplayer/v;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->N:Lcom/anythink/expressad/exoplayer/v;

    return-object v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/ae;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j;->E:Lcom/anythink/expressad/exoplayer/ae$b;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/ae$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/j;->c(Z)V

    return-void
.end method

.method public final n()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Release "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [ExoPlayerLib/2.8.4] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/anythink/expressad/exoplayer/k/af;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/expressad/exoplayer/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->B:Lcom/anythink/expressad/exoplayer/k;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->A:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final o()I
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/j;->R:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    return v0
.end method

.method public final p()I
    .locals 4

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/j;->Q:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/j;->F:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v0

    iget v0, v0, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    return v0
.end method

.method public final q()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v1

    iget v2, p0, Lcom/anythink/expressad/exoplayer/j;->I:I

    iget-boolean v3, p0, Lcom/anythink/expressad/exoplayer/j;->J:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(IIZ)I

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v1

    iget v2, p0, Lcom/anythink/expressad/exoplayer/j;->I:I

    iget-boolean v3, p0, Lcom/anythink/expressad/exoplayer/j;->J:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->b(IIZ)I

    move-result v0

    return v0
.end method

.method public final s()J
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->y()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v3, v1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/j;->F:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v0, v3, v4, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->F:Lcom/anythink/expressad/exoplayer/ae$a;

    iget v2, v1, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    iget v1, v1, Lcom/anythink/expressad/exoplayer/h/s$a;->c:I

    invoke-virtual {v0, v2, v1}, Lcom/anythink/expressad/exoplayer/ae$a;->c(II)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j;->E:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {v0, v1, v3, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object v0

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/ae$b;->i:J

    goto :goto_0
.end method

.method public final t()J
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j;->S:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/u;->j:J

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/j;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/j;->S:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/u;->k:J

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/j;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()I
    .locals 9

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->u()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->s()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v0, v5

    if-eqz v7, :cond_2

    cmp-long v7, v2, v5

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    const/16 v7, 0x64

    cmp-long v8, v2, v5

    if-nez v8, :cond_1

    return v7

    :cond_1
    const-wide/16 v5, 0x64

    mul-long v0, v0, v5

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1, v4, v7}, Lcom/anythink/expressad/exoplayer/k/af;->a(III)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v4
.end method

.method public final w()Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j;->E:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {v0, v1, v3, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/ae$b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final x()Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->p()I

    move-result v1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/j;->E:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {v0, v1, v3, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/ae$b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final y()Z
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/j;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final z()I
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/j;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/j;->P:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->b:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
