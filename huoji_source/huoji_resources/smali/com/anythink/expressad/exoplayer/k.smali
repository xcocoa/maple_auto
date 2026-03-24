.class public final Lcom/anythink/expressad/exoplayer/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/anythink/expressad/exoplayer/e$a;
.implements Lcom/anythink/expressad/exoplayer/h/r$a;
.implements Lcom/anythink/expressad/exoplayer/h/s$b;
.implements Lcom/anythink/expressad/exoplayer/i/h$a;
.implements Lcom/anythink/expressad/exoplayer/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/k$c;,
        Lcom/anythink/expressad/exoplayer/k$a;,
        Lcom/anythink/expressad/exoplayer/k$b;,
        Lcom/anythink/expressad/exoplayer/k$d;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Ljava/lang/String; = "ExoPlayerImplInternal"

.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:I = 0x4

.field private static final j:I = 0x5

.field private static final k:I = 0x6

.field private static final l:I = 0x7

.field private static final m:I = 0x8

.field private static final n:I = 0x9

.field private static final o:I = 0xa

.field private static final p:I = 0xb

.field private static final q:I = 0xc

.field private static final r:I = 0xd

.field private static final s:I = 0xe

.field private static final t:I = 0xf

.field private static final u:I = 0xa

.field private static final v:I = 0xa

.field private static final w:I = 0x3e8

.field private static final x:J = 0x1f4L


# instance fields
.field private final A:Lcom/anythink/expressad/exoplayer/i/h;

.field private final B:Lcom/anythink/expressad/exoplayer/i/i;

.field private final C:Lcom/anythink/expressad/exoplayer/p;

.field private final D:Lcom/anythink/expressad/exoplayer/k/k;

.field private final E:Landroid/os/HandlerThread;

.field private final F:Landroid/os/Handler;

.field private final G:Lcom/anythink/expressad/exoplayer/h;

.field private final H:Lcom/anythink/expressad/exoplayer/ae$b;

.field private final I:Lcom/anythink/expressad/exoplayer/ae$a;

.field private final J:J

.field private final K:Z

.field private final L:Lcom/anythink/expressad/exoplayer/e;

.field private final M:Lcom/anythink/expressad/exoplayer/k$c;

.field private final N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/exoplayer/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Lcom/anythink/expressad/exoplayer/k/c;

.field private final P:Lcom/anythink/expressad/exoplayer/s;

.field private Q:Lcom/anythink/expressad/exoplayer/ac;

.field private R:Lcom/anythink/expressad/exoplayer/u;

.field private S:Lcom/anythink/expressad/exoplayer/h/s;

.field private T:[Lcom/anythink/expressad/exoplayer/y;

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:I

.field private Y:Z

.field private Z:I

.field private aa:Lcom/anythink/expressad/exoplayer/k$d;

.field private ab:J

.field private ac:I

.field private final y:[Lcom/anythink/expressad/exoplayer/y;

.field private final z:[Lcom/anythink/expressad/exoplayer/z;


# direct methods
.method public constructor <init>([Lcom/anythink/expressad/exoplayer/y;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/i/i;Lcom/anythink/expressad/exoplayer/p;ZIZLandroid/os/Handler;Lcom/anythink/expressad/exoplayer/h;Lcom/anythink/expressad/exoplayer/k/c;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    iput-object v2, v0, Lcom/anythink/expressad/exoplayer/k;->A:Lcom/anythink/expressad/exoplayer/i/h;

    move-object v4, p3

    iput-object v4, v0, Lcom/anythink/expressad/exoplayer/k;->B:Lcom/anythink/expressad/exoplayer/i/i;

    move-object v5, p4

    iput-object v5, v0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/anythink/expressad/exoplayer/k;->V:Z

    move/from16 v5, p6

    iput v5, v0, Lcom/anythink/expressad/exoplayer/k;->X:I

    move/from16 v5, p7

    iput-boolean v5, v0, Lcom/anythink/expressad/exoplayer/k;->Y:Z

    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/anythink/expressad/exoplayer/k;->F:Landroid/os/Handler;

    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/anythink/expressad/exoplayer/k;->G:Lcom/anythink/expressad/exoplayer/h;

    iput-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->O:Lcom/anythink/expressad/exoplayer/k/c;

    new-instance v5, Lcom/anythink/expressad/exoplayer/s;

    invoke-direct {v5}, Lcom/anythink/expressad/exoplayer/s;-><init>()V

    iput-object v5, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/anythink/expressad/exoplayer/k;->J:J

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/anythink/expressad/exoplayer/k;->K:Z

    sget-object v6, Lcom/anythink/expressad/exoplayer/ac;->e:Lcom/anythink/expressad/exoplayer/ac;

    iput-object v6, v0, Lcom/anythink/expressad/exoplayer/k;->Q:Lcom/anythink/expressad/exoplayer/ac;

    new-instance v6, Lcom/anythink/expressad/exoplayer/u;

    sget-object v7, Lcom/anythink/expressad/exoplayer/ae;->a:Lcom/anythink/expressad/exoplayer/ae;

    sget-object v8, Lcom/anythink/expressad/exoplayer/h/af;->a:Lcom/anythink/expressad/exoplayer/h/af;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object p4, v6

    move-object/from16 p5, v7

    move-wide/from16 p6, v9

    move-object/from16 p8, v8

    move-object/from16 p9, p3

    invoke-direct/range {p4 .. p9}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;JLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    iput-object v6, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    new-instance v4, Lcom/anythink/expressad/exoplayer/k$c;

    invoke-direct {v4, v5}, Lcom/anythink/expressad/exoplayer/k$c;-><init>(B)V

    iput-object v4, v0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    array-length v4, v1

    new-array v4, v4, [Lcom/anythink/expressad/exoplayer/z;

    iput-object v4, v0, Lcom/anythink/expressad/exoplayer/k;->z:[Lcom/anythink/expressad/exoplayer/z;

    const/4 v4, 0x0

    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_0

    aget-object v6, v1, v4

    invoke-interface {v6, v4}, Lcom/anythink/expressad/exoplayer/y;->a(I)V

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/k;->z:[Lcom/anythink/expressad/exoplayer/z;

    aget-object v7, v1, v4

    invoke-interface {v7}, Lcom/anythink/expressad/exoplayer/y;->b()Lcom/anythink/expressad/exoplayer/z;

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/anythink/expressad/exoplayer/e;

    invoke-direct {v1, p0, v3}, Lcom/anythink/expressad/exoplayer/e;-><init>(Lcom/anythink/expressad/exoplayer/e$a;Lcom/anythink/expressad/exoplayer/k/c;)V

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    new-array v1, v5, [Lcom/anythink/expressad/exoplayer/y;

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    new-instance v1, Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-direct {v1}, Lcom/anythink/expressad/exoplayer/ae$b;-><init>()V

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->H:Lcom/anythink/expressad/exoplayer/ae$b;

    new-instance v1, Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-direct {v1}, Lcom/anythink/expressad/exoplayer/ae$a;-><init>()V

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p2, p0}, Lcom/anythink/expressad/exoplayer/i/h;->a(Lcom/anythink/expressad/exoplayer/i/h$a;)V

    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v4, "ExoPlayerImplInternal:Handler"

    invoke-direct {v1, v4, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->E:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-interface {v3, v1, p0}, Lcom/anythink/expressad/exoplayer/k/c;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/anythink/expressad/exoplayer/k/k;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    return-void
.end method

.method private a(ILcom/anythink/expressad/exoplayer/ae;Lcom/anythink/expressad/exoplayer/ae;)I
    .locals 9

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p1

    const/4 p1, -0x1

    :goto_0
    if-ge v2, v0, :cond_0

    if-ne p1, v1, :cond_0

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->H:Lcom/anythink/expressad/exoplayer/ae$b;

    iget v7, p0, Lcom/anythink/expressad/exoplayer/k;->X:I

    iget-boolean v8, p0, Lcom/anythink/expressad/exoplayer/k;->Y:Z

    move-object v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Lcom/anythink/expressad/exoplayer/ae$b;IZ)I

    move-result v4

    if-eq v4, v1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v3, 0x1

    invoke-virtual {p2, v4, p1, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object p1

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s$a;J)J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s$a;JZ)J
    .locals 5

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k;->W:Z

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JLcom/anythink/expressad/exoplayer/q;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p1, v3}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->h()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v3

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v2, v3, :cond_2

    if-eqz p4, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length p4, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p4, :cond_3

    aget-object v4, p1, v2

    invoke-direct {p0, v4}, Lcom/anythink/expressad/exoplayer/k;->b(Lcom/anythink/expressad/exoplayer/y;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-array p1, v0, [Lcom/anythink/expressad/exoplayer/y;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    const/4 v2, 0x0

    :cond_4
    if-eqz v3, :cond_6

    invoke-direct {p0, v2}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/q;)V

    iget-boolean p1, v3, Lcom/anythink/expressad/exoplayer/q;->g:Z

    if-eqz p1, :cond_5

    iget-object p1, v3, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {p1, p2, p3}, Lcom/anythink/expressad/exoplayer/h/r;->b(J)J

    move-result-wide p1

    iget-object p3, v3, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/k;->J:J

    sub-long v2, p1, v2

    iget-boolean p4, p0, Lcom/anythink/expressad/exoplayer/k;->K:Z

    invoke-interface {p3, v2, v3, p4}, Lcom/anythink/expressad/exoplayer/h/r;->a(JZ)V

    move-wide p2, p1

    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/anythink/expressad/exoplayer/k;->a(J)V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->r()V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/anythink/expressad/exoplayer/s;->b(Z)V

    invoke-direct {p0, p2, p3}, Lcom/anythink/expressad/exoplayer/k;->a(J)V

    :goto_3
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {p1, v1}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    return-wide p2
.end method

.method private a(Lcom/anythink/expressad/exoplayer/ae;I)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/ae;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->H:Lcom/anythink/expressad/exoplayer/ae$b;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/ae;->a(Lcom/anythink/expressad/exoplayer/ae$b;Lcom/anythink/expressad/exoplayer/ae$a;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/anythink/expressad/exoplayer/k$d;Z)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/k$d;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/k$d;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/k;->H:Lcom/anythink/expressad/exoplayer/ae$b;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    iget v7, p1, Lcom/anythink/expressad/exoplayer/k$d;->b:I

    iget-wide v8, p1, Lcom/anythink/expressad/exoplayer/k$d;->c:J

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcom/anythink/expressad/exoplayer/ae;->a(Lcom/anythink/expressad/exoplayer/ae$b;Lcom/anythink/expressad/exoplayer/ae$a;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    return-object p1

    :cond_2
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v2

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v1, v0}, Lcom/anythink/expressad/exoplayer/k;->a(ILcom/anythink/expressad/exoplayer/ae;Lcom/anythink/expressad/exoplayer/ae;)I

    move-result p1

    if-eq p1, v4, :cond_4

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object p1

    iget p1, p1, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    invoke-direct {p0, v0, p1}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/ae;I)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v3

    :catch_0
    new-instance p2, Lcom/anythink/expressad/exoplayer/o;

    iget v1, p1, Lcom/anythink/expressad/exoplayer/k$d;->b:I

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/k$d;->c:J

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/o;-><init>(Lcom/anythink/expressad/exoplayer/ae;IJ)V

    throw p2
.end method

.method private a(F)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/i/g;->a()[Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lcom/anythink/expressad/exoplayer/i/f;->a(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(IZI)V
    .locals 11

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    aput-object v1, v2, p3

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/y;->a_()I

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v2, p3, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object v3, v2, p1

    iget-object p3, p3, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {p3, p1}, Lcom/anythink/expressad/exoplayer/i/g;->a(I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object p3

    invoke-static {p3}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/f;)[Lcom/anythink/expressad/exoplayer/m;

    move-result-object v4

    iget-boolean p3, p0, Lcom/anythink/expressad/exoplayer/k;->V:Z

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget p3, p3, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v6, 0x3

    if-ne p3, v6, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    iget-object p2, v0, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v5, p2, p1

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-wide v9, v0, Lcom/anythink/expressad/exoplayer/q;->e:J

    move-object v2, v1

    invoke-interface/range {v2 .. v10}, Lcom/anythink/expressad/exoplayer/y;->a(Lcom/anythink/expressad/exoplayer/aa;[Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/h/y;JZJ)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/e;->a(Lcom/anythink/expressad/exoplayer/y;)V

    if-eqz p3, :cond_2

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/y;->b_()V

    :cond_2
    return-void
.end method

.method private a(J)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/q;->e:J

    add-long/2addr p1, v0

    :goto_0
    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/e;->a(J)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-interface {v1, v2, v3}, Lcom/anythink/expressad/exoplayer/y;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/k;->b()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    add-long/2addr p1, p3

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/k/k;->a(J)Z

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/i/i;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/p;->a([Lcom/anythink/expressad/exoplayer/y;Lcom/anythink/expressad/exoplayer/i/g;)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/k$a;)V
    .locals 13

    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/k$a;->a:Lcom/anythink/expressad/exoplayer/h/s;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/k$a;->b:Lcom/anythink/expressad/exoplayer/ae;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/k$a;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/ae;)V

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v2, v1, p1}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz p1, :cond_2

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/exoplayer/k$b;

    invoke-direct {p0, v4}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$b;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/exoplayer/k$b;

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-virtual {v4, v3}, Lcom/anythink/expressad/exoplayer/x;->a(Z)V

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget p1, p0, Lcom/anythink/expressad/exoplayer/k;->Z:I

    const-wide/16 v4, 0x0

    if-lez p1, :cond_9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/k$c;->a(I)V

    iput v3, p0, Lcom/anythink/expressad/exoplayer/k;->Z:I

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->aa:Lcom/anythink/expressad/exoplayer/k$d;

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, v2}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$d;Z)Landroid/util/Pair;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->aa:Lcom/anythink/expressad/exoplayer/k$d;

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->o()V

    return-void

    :cond_3
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p1, v0, v10, v11}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v7

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v7}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    move-wide v8, v4

    goto :goto_1

    :cond_4
    move-wide v8, v10

    :goto_1
    invoke-virtual/range {v6 .. v11}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    return-void

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/u;->d:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v6

    if-nez p1, :cond_8

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->o()V

    return-void

    :cond_6
    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/k;->Y:Z

    invoke-virtual {v1, p1}, Lcom/anythink/expressad/exoplayer/ae;->b(Z)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/ae;I)Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p1, v0, v10, v11}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v7

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v7}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    move-wide v8, v4

    goto :goto_3

    :cond_7
    move-wide v8, v10

    :goto_3
    invoke-virtual/range {v6 .. v11}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    :cond_8
    return-void

    :cond_9
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v6, p1, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v6, v6, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-wide v11, p1, Lcom/anythink/expressad/exoplayer/u;->e:J

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p1, v6, v11, v12}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v8

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v8}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    move-wide v9, v4

    goto :goto_4

    :cond_a
    move-wide v9, v11

    :goto_4
    invoke-virtual/range {v7 .. v12}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    :cond_b
    return-void

    :cond_c
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object p1

    if-nez p1, :cond_d

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v0, v6, v7, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v7

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    goto :goto_5

    :cond_d
    iget-object v7, p1, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v1, v7}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_12

    invoke-direct {p0, v6, v0, v1}, Lcom/anythink/expressad/exoplayer/k;->a(ILcom/anythink/expressad/exoplayer/ae;Lcom/anythink/expressad/exoplayer/ae;)I

    move-result v0

    if-ne v0, v8, :cond_e

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->o()V

    return-void

    :cond_e
    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v1, v0, v6, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v0

    iget v0, v0, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    invoke-direct {p0, v1, v0}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/ae;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0, v3, v10, v11}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v1, v3, v0, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    :cond_f
    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/r;->a()Lcom/anythink/expressad/exoplayer/r;

    move-result-object v1

    :goto_6
    iput-object v1, p1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-object v2, p1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/r;I)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v1

    goto :goto_6

    :cond_10
    invoke-virtual {v7}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_7

    :cond_11
    move-wide v4, v10

    :goto_7
    invoke-direct {p0, v7, v4, v5}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s$a;J)J

    move-result-wide v8

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    goto/16 :goto_1

    :cond_12
    if-eq v7, v6, :cond_13

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {p1, v7}, Lcom/anythink/expressad/exoplayer/u;->a(I)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    :cond_13
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0, v7, v11, v12}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/anythink/expressad/exoplayer/h/s$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v8}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_8

    :cond_14
    move-wide v4, v11

    :goto_8
    invoke-direct {p0, v8, v4, v5}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s$a;J)J

    move-result-wide v9

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual/range {v7 .. v12}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;J)Z

    move-result p1

    if-nez p1, :cond_16

    invoke-direct {p0, v3}, Lcom/anythink/expressad/exoplayer/k;->g(Z)V

    :cond_16
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/k$d;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/exoplayer/k$c;->a(I)V

    invoke-direct {v1, v0, v3}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$d;Z)Landroid/util/Pair;

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_0

    new-instance v2, Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->j()I

    move-result v9

    invoke-direct {v2, v9}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(I)V

    move-object v15, v2

    move-wide v12, v7

    move-wide/from16 v18, v12

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v12, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v12, v9, v10, v11}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v12

    if-eqz v12, :cond_1

    move-wide v12, v4

    move-object v15, v9

    move-wide/from16 v18, v10

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/anythink/expressad/exoplayer/k$d;->c:J

    cmp-long v2, v14, v7

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v15, v9

    move-wide/from16 v18, v10

    :goto_2
    const/4 v9, 0x2

    :try_start_0
    iget-object v10, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    if-eqz v10, :cond_a

    iget v10, v1, Lcom/anythink/expressad/exoplayer/k;->Z:I

    if-lez v10, :cond_3

    goto :goto_5

    :cond_3
    cmp-long v0, v12, v7

    if-nez v0, :cond_4

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    invoke-direct {v1, v6, v3, v6}, Lcom/anythink/expressad/exoplayer/k;->a(ZZZ)V

    goto :goto_6

    :cond_4
    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v15, v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    if-eqz v0, :cond_5

    cmp-long v7, v12, v4

    if-eqz v7, :cond_5

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    iget-object v4, v1, Lcom/anythink/expressad/exoplayer/k;->Q:Lcom/anythink/expressad/exoplayer/ac;

    invoke-interface {v0, v12, v13, v4}, Lcom/anythink/expressad/exoplayer/h/r;->a(JLcom/anythink/expressad/exoplayer/ac;)J

    move-result-wide v4

    goto :goto_3

    :cond_5
    move-wide v4, v12

    :goto_3
    invoke-static {v4, v5}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v7

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v10, v0, Lcom/anythink/expressad/exoplayer/u;->j:J

    invoke-static {v10, v11}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v10

    cmp-long v0, v7, v10

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v3, v0, Lcom/anythink/expressad/exoplayer/u;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v14, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    move-wide/from16 v16, v3

    invoke-virtual/range {v14 .. v19}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    if-eqz v2, :cond_6

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v0, v9}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    :cond_6
    return-void

    :cond_7
    move-wide v4, v12

    :cond_8
    :try_start_1
    invoke-direct {v1, v15, v4, v5}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s$a;J)J

    move-result-wide v4

    cmp-long v0, v12, v4

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    or-int/2addr v2, v3

    move-wide/from16 v16, v4

    goto :goto_7

    :cond_a
    :goto_5
    iput-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->aa:Lcom/anythink/expressad/exoplayer/k$d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    move-wide/from16 v16, v12

    :goto_7
    iget-object v14, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual/range {v14 .. v19}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v0

    iput-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    if-eqz v2, :cond_b

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v0, v9}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    :cond_b
    return-void

    :catchall_0
    move-exception v0

    iget-object v14, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    move-wide/from16 v16, v12

    invoke-virtual/range {v14 .. v19}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v3

    iput-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    if-eqz v2, :cond_c

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v2, v9}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    :cond_c
    throw v0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/q;)V
    .locals 8
    .param p1    # Lcom/anythink/expressad/exoplayer/q;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v1, v1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/anythink/expressad/exoplayer/y;->a_()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v1, v3

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {v6, v3}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {v6, v3}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lcom/anythink/expressad/exoplayer/y;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Lcom/anythink/expressad/exoplayer/y;->f()Lcom/anythink/expressad/exoplayer/h/y;

    move-result-object v6

    iget-object v7, p1, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v7, v7, v3

    if-ne v6, v7, :cond_4

    :cond_3
    invoke-direct {p0, v5}, Lcom/anythink/expressad/exoplayer/k;->b(Lcom/anythink/expressad/exoplayer/y;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/q;->j:Lcom/anythink/expressad/exoplayer/h/af;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {p1, v2, v0}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-direct {p0, v1, v4}, Lcom/anythink/expressad/exoplayer/k;->a([ZI)V

    :cond_6
    :goto_2
    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/y;)V
    .locals 2

    invoke-interface {p0}, Lcom/anythink/expressad/exoplayer/y;->a_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/anythink/expressad/exoplayer/y;->k()V

    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p1}, Lcom/anythink/expressad/exoplayer/k;->a(ZZZ)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k;->Z:I

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/k$c;->a(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k;->Z:I

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/p;->b()V

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    return-void
.end method

.method private a(ZZZ)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/k;->b()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/anythink/expressad/exoplayer/k;->W:Z

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/e;->b()V

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v0, v3, v5

    :try_start_0
    invoke-direct {v1, v0}, Lcom/anythink/expressad/exoplayer/k;->b(Lcom/anythink/expressad/exoplayer/y;)V
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Lcom/anythink/expressad/exoplayer/y;

    iput-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    iget-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    xor-int/lit8 v3, p2, 0x1

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/s;->b(Z)V

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iput-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->aa:Lcom/anythink/expressad/exoplayer/k$d;

    :cond_1
    if-eqz p3, :cond_3

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    sget-object v4, Lcom/anythink/expressad/exoplayer/ae;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/ae;)V

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/exoplayer/k$b;

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-virtual {v4, v2}, Lcom/anythink/expressad/exoplayer/x;->a(Z)V

    goto :goto_3

    :cond_2
    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput v2, v1, Lcom/anythink/expressad/exoplayer/k;->ac:I

    :cond_3
    new-instance v2, Lcom/anythink/expressad/exoplayer/u;

    if-eqz p3, :cond_4

    sget-object v3, Lcom/anythink/expressad/exoplayer/ae;->a:Lcom/anythink/expressad/exoplayer/ae;

    goto :goto_4

    :cond_4
    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    :goto_4
    move-object v5, v3

    if-eqz p3, :cond_5

    move-object v6, v0

    goto :goto_5

    :cond_5
    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/u;->b:Ljava/lang/Object;

    move-object v6, v3

    :goto_5
    if-eqz p2, :cond_6

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->j()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(I)V

    goto :goto_6

    :cond_6
    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    :goto_6
    move-object v7, v3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_7

    move-wide v8, v3

    goto :goto_7

    :cond_7
    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v8, v8, Lcom/anythink/expressad/exoplayer/u;->j:J

    :goto_7
    if-eqz p2, :cond_8

    goto :goto_8

    :cond_8
    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v3, v3, Lcom/anythink/expressad/exoplayer/u;->e:J

    :goto_8
    move-wide v10, v3

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v12, v3, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v13, 0x0

    if-eqz p3, :cond_9

    sget-object v4, Lcom/anythink/expressad/exoplayer/h/af;->a:Lcom/anythink/expressad/exoplayer/h/af;

    goto :goto_9

    :cond_9
    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/u;->h:Lcom/anythink/expressad/exoplayer/h/af;

    :goto_9
    move-object v14, v4

    if-eqz p3, :cond_a

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k;->B:Lcom/anythink/expressad/exoplayer/i/i;

    goto :goto_a

    :cond_a
    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/u;->i:Lcom/anythink/expressad/exoplayer/i/i;

    :goto_a
    move-object v15, v3

    move-object v4, v2

    invoke-direct/range {v4 .. v15}, Lcom/anythink/expressad/exoplayer/u;-><init>(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/h/s$a;JJIZLcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)V

    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    if-eqz p1, :cond_b

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/s$b;)V

    iput-object v0, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    :cond_b
    return-void
.end method

.method private a([ZI)V
    .locals 4

    new-array p2, p2, [Lcom/anythink/expressad/exoplayer/y;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p2, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-boolean v2, p1, v0

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/anythink/expressad/exoplayer/k;->a(IZI)V

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/s$a;JLcom/anythink/expressad/exoplayer/q;)Z
    .locals 3

    iget-object v0, p4, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p4, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v1, p4, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v1, v1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p1, v1, v2, v0}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p1, p2, p3}, Lcom/anythink/expressad/exoplayer/ae$a;->b(J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/exoplayer/ae$a;->a(I)J

    move-result-wide p1

    iget-object p3, p4, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide p3, p3, Lcom/anythink/expressad/exoplayer/r;->c:J

    cmp-long v1, p1, p3

    if-nez v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/k$b;)Z
    .locals 7

    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/k$b;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/anythink/expressad/exoplayer/k$d;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/x;->a()Lcom/anythink/expressad/exoplayer/ae;

    move-result-object v3

    iget-object v4, p1, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/x;->g()I

    move-result v4

    iget-object v5, p1, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/x;->f()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/anythink/expressad/exoplayer/b;->b(J)J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/anythink/expressad/exoplayer/k$d;-><init>(Lcom/anythink/expressad/exoplayer/ae;IJ)V

    invoke-direct {p0, v0, v2}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$d;Z)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v5, v0, v6, v1}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/anythink/expressad/exoplayer/k$b;->a(IJLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v3, v0}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    iput v0, p1, Lcom/anythink/expressad/exoplayer/k$b;->b:I

    :goto_0
    return v1
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/i/f;)[Lcom/anythink/expressad/exoplayer/m;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/anythink/expressad/exoplayer/i/f;->g()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v1, [Lcom/anythink/expressad/exoplayer/m;

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lcom/anythink/expressad/exoplayer/i/f;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v1, v0, Lcom/anythink/expressad/exoplayer/u;->f:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/u;->b(I)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    :cond_0
    return-void
.end method

.method private b(JJ)V
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/u;->d:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    const-wide/16 v1, 0x1

    sub-long/2addr p1, v1

    :cond_1
    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/k$b;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->b:I

    if-gt v3, v0, :cond_3

    if-ne v3, v0, :cond_4

    iget-wide v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->c:J

    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    :cond_3
    iget v1, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    iget v3, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/k$b;

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_7

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->d:Ljava/lang/Object;

    if-eqz v3, :cond_7

    iget v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->b:I

    if-lt v3, v0, :cond_6

    if-ne v3, v0, :cond_7

    iget-wide v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->c:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_7

    :cond_6
    iget v1, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    goto :goto_2

    :cond_7
    :goto_4
    if-eqz v1, :cond_b

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->d:Ljava/lang/Object;

    if-eqz v3, :cond_b

    iget v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->b:I

    if-ne v3, v0, :cond_b

    iget-wide v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->c:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_b

    cmp-long v5, v3, p3

    if-gtz v5, :cond_b

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-direct {p0, v3}, Lcom/anythink/expressad/exoplayer/k;->d(Lcom/anythink/expressad/exoplayer/x;)V

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/x;->h()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/x;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    iget v1, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    goto :goto_6

    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    iget v3, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_6
    iget v1, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    iget v3, p0, Lcom/anythink/expressad/exoplayer/k;->ac:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/k$b;

    goto :goto_4

    :cond_a
    move-object v1, v2

    goto :goto_4

    :cond_b
    :goto_7
    return-void
.end method

.method private b(Lcom/anythink/expressad/exoplayer/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->Q:Lcom/anythink/expressad/exoplayer/ac;

    return-void
.end method

.method private b(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private b(Lcom/anythink/expressad/exoplayer/h/s;ZZ)V
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k;->Z:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/k;->Z:I

    invoke-direct {p0, v1, p2, p3}, Lcom/anythink/expressad/exoplayer/k;->a(ZZZ)V

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    invoke-interface {p2}, Lcom/anythink/expressad/exoplayer/p;->a()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    const/4 p2, 0x2

    invoke-direct {p0, p2}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/k;->G:Lcom/anythink/expressad/exoplayer/h;

    invoke-interface {p1, p3, v1, p0}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h;ZLcom/anythink/expressad/exoplayer/h/s$b;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {p1, p2}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/x;)V
    .locals 0

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/k;->f(Lcom/anythink/expressad/exoplayer/x;)V

    return-void
.end method

.method private b(Lcom/anythink/expressad/exoplayer/y;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/e;->b(Lcom/anythink/expressad/exoplayer/y;)V

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/y;)V

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/y;->l()V

    return-void
.end method

.method private c(I)V
    .locals 1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/k;->X:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/s;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/k;->g(Z)V

    :cond_0
    return-void
.end method

.method private c(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 14

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/e;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v0

    iget v0, v0, Lcom/anythink/expressad/exoplayer/v;->b:F

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/anythink/expressad/exoplayer/q;->f:Z

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/h/r;->b()Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v1

    iput-object v1, p1, Lcom/anythink/expressad/exoplayer/q;->j:Lcom/anythink/expressad/exoplayer/h/af;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/q;->a(F)Z

    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/r;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/exoplayer/q;->b(J)J

    move-result-wide v4

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/q;->e:J

    iget-object v2, p1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v6, v2, Lcom/anythink/expressad/exoplayer/r;->b:J

    sub-long/2addr v6, v4

    add-long/2addr v0, v6

    iput-wide v0, p1, Lcom/anythink/expressad/exoplayer/q;->e:J

    new-instance v0, Lcom/anythink/expressad/exoplayer/r;

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v6, v2, Lcom/anythink/expressad/exoplayer/r;->c:J

    iget-wide v8, v2, Lcom/anythink/expressad/exoplayer/r;->d:J

    iget-wide v10, v2, Lcom/anythink/expressad/exoplayer/r;->e:J

    iget-boolean v12, v2, Lcom/anythink/expressad/exoplayer/r;->f:Z

    iget-boolean v13, v2, Lcom/anythink/expressad/exoplayer/r;->g:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/anythink/expressad/exoplayer/r;-><init>(Lcom/anythink/expressad/exoplayer/h/s$a;JJJJZZ)V

    iput-object v0, p1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/i;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/s;->h()Lcom/anythink/expressad/exoplayer/q;

    move-result-object p1

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/r;->b:J

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/k;->a(J)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/q;)V

    :cond_1
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->r()V

    return-void
.end method

.method private c(Lcom/anythink/expressad/exoplayer/v;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/e;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    return-void
.end method

.method private c(Lcom/anythink/expressad/exoplayer/x;)V
    .locals 5

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->f()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/k;->d(Lcom/anythink/expressad/exoplayer/x;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k;->Z:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/anythink/expressad/exoplayer/k$b;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/exoplayer/k$b;-><init>(Lcom/anythink/expressad/exoplayer/x;)V

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/x;->a(Z)V

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    new-instance v1, Lcom/anythink/expressad/exoplayer/k$b;

    invoke-direct {v1, p1}, Lcom/anythink/expressad/exoplayer/k$b;-><init>(Lcom/anythink/expressad/exoplayer/x;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private c(Lcom/anythink/expressad/exoplayer/y;)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k$c;->a(Lcom/anythink/expressad/exoplayer/u;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->F:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k$c;->a(Lcom/anythink/expressad/exoplayer/k$c;)I

    move-result v2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k$c;->b(Lcom/anythink/expressad/exoplayer/k$c;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k$c;->c(Lcom/anythink/expressad/exoplayer/k$c;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k$c;->b(Lcom/anythink/expressad/exoplayer/u;)V

    :cond_1
    return-void
.end method

.method private d(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/exoplayer/s;->a(J)V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->r()V

    return-void
.end method

.method private d(Lcom/anythink/expressad/exoplayer/x;)V
    .locals 2

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->e()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/k/k;->a()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k;->f(Lcom/anythink/expressad/exoplayer/x;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget p1, p1, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {p1, v1}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method private d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/u;->g:Z

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/u;->a(Z)Lcom/anythink/expressad/exoplayer/u;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k;->W:Z

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/e;->a()V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/y;->b_()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e(Lcom/anythink/expressad/exoplayer/x;)V
    .locals 2

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/x;->e()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/exoplayer/k$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/exoplayer/k$1;-><init>(Lcom/anythink/expressad/exoplayer/k;Lcom/anythink/expressad/exoplayer/x;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k;->W:Z

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/k;->V:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->f()V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->g()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget p1, p1, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->e()V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {p1, v1}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    return-void

    :cond_1
    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {p1, v1}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    :cond_2
    return-void
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/e;->b()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/y;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static f(Lcom/anythink/expressad/exoplayer/x;)V
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/x;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/x;->b()Lcom/anythink/expressad/exoplayer/x$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/x;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/x;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/anythink/expressad/exoplayer/x$b;->a(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/x;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/x;->a(Z)V

    throw v1
.end method

.method private f(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/k;->Y:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/s;->a(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/k;->g(Z)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/h/r;->c()J

    move-result-wide v4

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v1

    if-eqz v3, :cond_1

    invoke-direct {p0, v4, v5}, Lcom/anythink/expressad/exoplayer/k;->a(J)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v1, v1, Lcom/anythink/expressad/exoplayer/u;->j:J

    cmp-long v3, v4, v1

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v6, v2, Lcom/anythink/expressad/exoplayer/u;->e:J

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/e;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-wide v3, v0, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v3, v3, Lcom/anythink/expressad/exoplayer/u;->j:J

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/anythink/expressad/exoplayer/k;->b(JJ)V

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iput-wide v1, v3, Lcom/anythink/expressad/exoplayer/u;->j:J

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v2, v2

    if-nez v2, :cond_3

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/r;->e:J

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/q;->a(Z)J

    move-result-wide v2

    :goto_1
    iput-wide v2, v1, Lcom/anythink/expressad/exoplayer/u;->k:J

    return-void
.end method

.method private g(Z)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/u;->j:J

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JZ)J

    move-result-wide v3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/u;->j:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v5, v1, Lcom/anythink/expressad/exoplayer/u;->e:J

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->O:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/k/c;->b()J

    move-result-wide v1

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_12

    iget v9, v0, Lcom/anythink/expressad/exoplayer/k;->Z:I

    if-lez v9, :cond_0

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/h/s;->b()V

    goto/16 :goto_b

    :cond_0
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v9, v0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-virtual {v3, v9, v10}, Lcom/anythink/expressad/exoplayer/s;->a(J)V

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v9, v0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-object v11, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v3, v9, v10, v11}, Lcom/anythink/expressad/exoplayer/s;->a(JLcom/anythink/expressad/exoplayer/u;)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-interface {v3}, Lcom/anythink/expressad/exoplayer/h/s;->b()V

    goto :goto_0

    :cond_1
    iget-object v9, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v10, v3, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v10, v10, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v11, v0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v9, v10, v11, v8}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v9

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/k;->z:[Lcom/anythink/expressad/exoplayer/z;

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/k;->A:Lcom/anythink/expressad/exoplayer/i/h;

    iget-object v10, v0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    invoke-interface {v10}, Lcom/anythink/expressad/exoplayer/p;->d()Lcom/anythink/expressad/exoplayer/j/b;

    move-result-object v15

    iget-object v10, v0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    move-object/from16 v16, v10

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    invoke-virtual/range {v12 .. v18}, Lcom/anythink/expressad/exoplayer/s;->a([Lcom/anythink/expressad/exoplayer/z;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/j/b;Lcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/r;)Lcom/anythink/expressad/exoplayer/h/r;

    move-result-object v9

    iget-wide v10, v3, Lcom/anythink/expressad/exoplayer/r;->b:J

    invoke-interface {v9, v0, v10, v11}, Lcom/anythink/expressad/exoplayer/h/r;->a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V

    invoke-direct {v0, v8}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V

    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/q;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-boolean v3, v3, Lcom/anythink/expressad/exoplayer/u;->g:Z

    if-nez v3, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->r()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {v0, v7}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V

    :cond_5
    :goto_2
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v3

    iget-object v9, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v9}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v9

    const/4 v10, 0x0

    :goto_3
    iget-boolean v11, v0, Lcom/anythink/expressad/exoplayer/k;->V:Z

    if-eqz v11, :cond_8

    if-eq v3, v9, :cond_8

    iget-wide v11, v0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-object v13, v3, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    iget-wide v13, v13, Lcom/anythink/expressad/exoplayer/q;->e:J

    cmp-long v15, v11, v13

    if-ltz v15, :cond_8

    if-eqz v10, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->d()V

    :cond_6
    iget-object v10, v3, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v10, v10, Lcom/anythink/expressad/exoplayer/r;->f:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v10, 0x3

    :goto_4
    iget-object v11, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v11}, Lcom/anythink/expressad/exoplayer/s;->h()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v11

    invoke-direct {v0, v3}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/q;)V

    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v3, v11, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v13, v3, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v14, v3, Lcom/anythink/expressad/exoplayer/r;->b:J

    iget-wide v6, v3, Lcom/anythink/expressad/exoplayer/r;->d:J

    move-wide/from16 v16, v6

    invoke-virtual/range {v12 .. v17}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v3

    iput-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v3, v10}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->g()V

    move-object v3, v11

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    iget-object v3, v9, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v3, v3, Lcom/anythink/expressad/exoplayer/r;->g:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    :goto_5
    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v7, v6

    if-ge v3, v7, :cond_12

    aget-object v6, v6, v3

    iget-object v7, v9, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v7, v7, v3

    if-eqz v7, :cond_9

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/y;->f()Lcom/anythink/expressad/exoplayer/h/y;

    move-result-object v10

    if-ne v10, v7, :cond_9

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/y;->h()V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    iget-object v3, v9, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v3, :cond_12

    iget-boolean v3, v3, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-nez v3, :cond_b

    goto/16 :goto_b

    :cond_b
    const/4 v3, 0x0

    :goto_6
    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v7, v6

    if-ge v3, v7, :cond_d

    aget-object v6, v6, v3

    iget-object v7, v9, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v7, v7, v3

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/y;->f()Lcom/anythink/expressad/exoplayer/h/y;

    move-result-object v10

    if-ne v10, v7, :cond_12

    if-eqz v7, :cond_c

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_b

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    iget-object v3, v9, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/s;->g()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v6

    iget-object v7, v6, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v9, v6, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v9}, Lcom/anythink/expressad/exoplayer/h/r;->c()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-eqz v11, :cond_e

    const/4 v9, 0x1

    goto :goto_7

    :cond_e
    const/4 v9, 0x0

    :goto_7
    const/4 v10, 0x0

    :goto_8
    iget-object v11, v0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v12, v11

    if-ge v10, v12, :cond_12

    aget-object v11, v11, v10

    invoke-virtual {v3, v10}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v12

    if-eqz v12, :cond_11

    if-nez v9, :cond_10

    invoke-interface {v11}, Lcom/anythink/expressad/exoplayer/y;->i()Z

    move-result v12

    if-nez v12, :cond_11

    iget-object v12, v7, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {v12, v10}, Lcom/anythink/expressad/exoplayer/i/g;->a(I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v12

    invoke-virtual {v7, v10}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v13

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/k;->z:[Lcom/anythink/expressad/exoplayer/z;

    aget-object v14, v14, v10

    invoke-interface {v14}, Lcom/anythink/expressad/exoplayer/z;->a()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_f

    const/4 v14, 0x1

    goto :goto_9

    :cond_f
    const/4 v14, 0x0

    :goto_9
    iget-object v15, v3, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object v15, v15, v10

    iget-object v8, v7, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object v8, v8, v10

    if-eqz v13, :cond_10

    invoke-virtual {v8, v15}, Lcom/anythink/expressad/exoplayer/aa;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    if-nez v14, :cond_10

    invoke-static {v12}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/f;)[Lcom/anythink/expressad/exoplayer/m;

    move-result-object v8

    iget-object v12, v6, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v12, v12, v10

    iget-wide v13, v6, Lcom/anythink/expressad/exoplayer/q;->e:J

    invoke-interface {v11, v8, v12, v13, v14}, Lcom/anythink/expressad/exoplayer/y;->a([Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/h/y;J)V

    goto :goto_a

    :cond_10
    invoke-interface {v11}, Lcom/anythink/expressad/exoplayer/y;->h()V

    :cond_11
    :goto_a
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_8

    :cond_12
    :goto_b
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v3

    const-wide/16 v6, 0xa

    if-nez v3, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->n()V

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/anythink/expressad/exoplayer/k;->a(JJ)V

    return-void

    :cond_13
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v3

    const-string v8, "doSomeWork"

    invoke-static {v8}, Lcom/anythink/expressad/exoplayer/k/ad;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->g()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    iget-object v12, v3, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v13, v13, Lcom/anythink/expressad/exoplayer/u;->j:J

    iget-wide v10, v0, Lcom/anythink/expressad/exoplayer/k;->J:J

    sub-long/2addr v13, v10

    iget-boolean v10, v0, Lcom/anythink/expressad/exoplayer/k;->K:Z

    invoke-interface {v12, v13, v14, v10}, Lcom/anythink/expressad/exoplayer/h/r;->a(JZ)V

    iget-object v10, v0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    :goto_c
    if-ge v12, v11, :cond_1a

    aget-object v15, v10, v12

    iget-wide v6, v0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-interface {v15, v6, v7, v8, v9}, Lcom/anythink/expressad/exoplayer/y;->a(JJ)V

    if-eqz v14, :cond_14

    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->v()Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v14, 0x1

    goto :goto_d

    :cond_14
    const/4 v14, 0x0

    :goto_d
    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->u()Z

    move-result v6

    if-nez v6, :cond_17

    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->v()Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v6

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v6, :cond_15

    iget-boolean v6, v6, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-eqz v6, :cond_15

    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v6, 0x1

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_16

    goto :goto_f

    :cond_16
    const/4 v6, 0x0

    goto :goto_10

    :cond_17
    :goto_f
    const/4 v6, 0x1

    :goto_10
    if-nez v6, :cond_18

    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->j()V

    :cond_18
    if-eqz v13, :cond_19

    if-eqz v6, :cond_19

    const/4 v13, 0x1

    goto :goto_11

    :cond_19
    const/4 v13, 0x0

    :goto_11
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v6, 0xa

    goto :goto_c

    :cond_1a
    if-nez v13, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->n()V

    :cond_1b
    iget-object v6, v3, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v6, v6, Lcom/anythink/expressad/exoplayer/r;->e:J

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eqz v14, :cond_1d

    cmp-long v10, v6, v4

    if-eqz v10, :cond_1c

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v4, v4, Lcom/anythink/expressad/exoplayer/u;->j:J

    cmp-long v10, v6, v4

    if-gtz v10, :cond_1d

    :cond_1c
    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v3, v3, Lcom/anythink/expressad/exoplayer/r;->g:Z

    if-eqz v3, :cond_1d

    invoke-direct {v0, v8}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->f()V

    goto/16 :goto_15

    :cond_1d
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v4, v3, Lcom/anythink/expressad/exoplayer/u;->f:I

    if-ne v4, v9, :cond_22

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v4, v4

    if-nez v4, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->m()Z

    move-result v3

    move/from16 v16, v3

    goto :goto_14

    :cond_1e
    if-eqz v13, :cond_21

    iget-boolean v3, v3, Lcom/anythink/expressad/exoplayer/u;->g:Z

    if-nez v3, :cond_20

    :cond_1f
    :goto_13
    const/16 v16, 0x1

    goto :goto_14

    :cond_20
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v3

    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v4, v4, Lcom/anythink/expressad/exoplayer/r;->g:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/exoplayer/q;->a(Z)J

    move-result-wide v6

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v6, v10

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    iget-wide v10, v0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-wide v14, v3, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr v10, v14

    sub-long/2addr v6, v10

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/e;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v3

    iget v3, v3, Lcom/anythink/expressad/exoplayer/v;->b:F

    iget-boolean v10, v0, Lcom/anythink/expressad/exoplayer/k;->W:Z

    invoke-interface {v4, v6, v7, v3, v10}, Lcom/anythink/expressad/exoplayer/p;->a(JFZ)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_13

    :cond_21
    const/16 v16, 0x0

    :goto_14
    if-eqz v16, :cond_22

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    iget-boolean v4, v0, Lcom/anythink/expressad/exoplayer/k;->V:Z

    if-eqz v4, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->e()V

    goto :goto_15

    :cond_22
    const/4 v3, 0x3

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v4, v4, Lcom/anythink/expressad/exoplayer/u;->f:I

    if-ne v4, v3, :cond_25

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v3, v3

    if-nez v3, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->m()Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_15

    :cond_23
    if-nez v13, :cond_25

    :cond_24
    iget-boolean v3, v0, Lcom/anythink/expressad/exoplayer/k;->V:Z

    iput-boolean v3, v0, Lcom/anythink/expressad/exoplayer/k;->W:Z

    invoke-direct {v0, v9}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    goto :goto_12

    :cond_25
    :goto_15
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/u;->f:I

    if-ne v3, v9, :cond_26

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v4, v3

    const/4 v7, 0x0

    :goto_16
    if-ge v7, v4, :cond_26

    aget-object v5, v3, v7

    invoke-interface {v5}, Lcom/anythink/expressad/exoplayer/y;->j()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_26
    iget-boolean v3, v0, Lcom/anythink/expressad/exoplayer/k;->V:Z

    if-eqz v3, :cond_27

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_28

    :cond_27
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/u;->f:I

    if-ne v3, v9, :cond_29

    :cond_28
    const-wide/16 v3, 0xa

    :goto_17
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/k;->a(JJ)V

    goto :goto_18

    :cond_29
    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v4, v4

    if-eqz v4, :cond_2a

    if-eq v3, v8, :cond_2a

    const-wide/16 v3, 0x3e8

    goto :goto_17

    :cond_2a
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/k/k;->b()V

    :goto_18
    invoke-static {}, Lcom/anythink/expressad/exoplayer/k/ad;->a()V

    return-void
.end method

.method private h(Z)Z
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->m()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-boolean p1, p1, Lcom/anythink/expressad/exoplayer/u;->g:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object p1

    iget-object v2, p1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v2, v2, Lcom/anythink/expressad/exoplayer/r;->g:Z

    xor-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/exoplayer/q;->a(Z)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-wide v7, p1, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr v5, v7

    sub-long/2addr v2, v5

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/e;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object p1

    iget p1, p1, Lcom/anythink/expressad/exoplayer/v;->b:F

    iget-boolean v5, p0, Lcom/anythink/expressad/exoplayer/k;->W:Z

    invoke-interface {v4, v2, v3, p1, v5}, Lcom/anythink/expressad/exoplayer/p;->a(JFZ)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, v0}, Lcom/anythink/expressad/exoplayer/k;->a(ZZZ)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/p;->c()V

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->E:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->E:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :goto_0
    monitor-enter p0

    :try_start_0
    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k;->U:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()I
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/anythink/expressad/exoplayer/k;->Y:Z

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/ae;->b(Z)I

    move-result v1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->H:Lcom/anythink/expressad/exoplayer/ae$b;

    invoke-virtual {v0, v1, v3, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$b;Z)Lcom/anythink/expressad/exoplayer/ae$b;

    move-result-object v0

    iget v0, v0, Lcom/anythink/expressad/exoplayer/ae$b;->f:I

    return v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/k$b;

    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$b;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/k$b;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/x;->a(Z)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private l()V
    .locals 15

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/e;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v0

    iget v0, v0, Lcom/anythink/expressad/exoplayer/v;->b:F

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-eqz v1, :cond_c

    iget-boolean v5, v1, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-nez v5, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/q;->a(F)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_3

    if-ne v1, v2, :cond_2

    const/4 v4, 0x0

    :cond_2
    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-eqz v4, :cond_a

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    move-result v2

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v4, v4

    new-array v4, v4, [Z

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v7, v5, Lcom/anythink/expressad/exoplayer/u;->j:J

    invoke-virtual {v1, v7, v8, v2, v4}, Lcom/anythink/expressad/exoplayer/q;->a(JZ[Z)J

    move-result-wide v7

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-direct {p0, v2}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/i;)V

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v5, v2, Lcom/anythink/expressad/exoplayer/u;->f:I

    if-eq v5, v0, :cond_4

    iget-wide v9, v2, Lcom/anythink/expressad/exoplayer/u;->j:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_4

    iget-object v9, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v10, v9, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v13, v9, Lcom/anythink/expressad/exoplayer/u;->e:J

    move-wide v11, v7

    invoke-virtual/range {v9 .. v14}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    iput-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    invoke-direct {p0, v7, v8}, Lcom/anythink/expressad/exoplayer/k;->a(J)V

    :cond_4
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v9, v8

    if-ge v5, v9, :cond_9

    aget-object v8, v8, v5

    invoke-interface {v8}, Lcom/anythink/expressad/exoplayer/y;->a_()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    aput-boolean v9, v2, v5

    iget-object v9, v1, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v9, v9, v5

    if-eqz v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    :cond_6
    aget-boolean v10, v2, v5

    if-eqz v10, :cond_8

    invoke-interface {v8}, Lcom/anythink/expressad/exoplayer/y;->f()Lcom/anythink/expressad/exoplayer/h/y;

    move-result-object v10

    if-eq v9, v10, :cond_7

    invoke-direct {p0, v8}, Lcom/anythink/expressad/exoplayer/k;->b(Lcom/anythink/expressad/exoplayer/y;)V

    goto :goto_3

    :cond_7
    aget-boolean v9, v4, v5

    if-eqz v9, :cond_8

    iget-wide v9, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-interface {v8, v9, v10}, Lcom/anythink/expressad/exoplayer/y;->a(J)V

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v4, v1, Lcom/anythink/expressad/exoplayer/q;->j:Lcom/anythink/expressad/exoplayer/h/af;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {v3, v4, v1}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-direct {p0, v2, v7}, Lcom/anythink/expressad/exoplayer/k;->a([ZI)V

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v2, v2, Lcom/anythink/expressad/exoplayer/r;->b:J

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-wide v6, v1, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/expressad/exoplayer/q;->b(J)J

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/i;)V

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v1, v1, Lcom/anythink/expressad/exoplayer/u;->f:I

    if-eq v1, v0, :cond_c

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->r()V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->g()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    :cond_c
    :goto_5
    return-void
.end method

.method private m()Z
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v1, v1, Lcom/anythink/expressad/exoplayer/r;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v3, v3, Lcom/anythink/expressad/exoplayer/u;->j:J

    cmp-long v5, v3, v1

    if-ltz v5, :cond_1

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-boolean v2, v0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-ne v1, v0, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->a()V

    :cond_3
    return-void
.end method

.method private o()V
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/anythink/expressad/exoplayer/k;->a(ZZZ)V

    return-void
.end method

.method private p()V
    .locals 13

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/k;->Z:I

    if-lez v1, :cond_1

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/s;->b()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/s;->a(J)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v0, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/s;->a(JLcom/anythink/expressad/exoplayer/u;)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/s;->b()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v2, v3, v4, v1}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v2

    iget-object v10, v2, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->z:[Lcom/anythink/expressad/exoplayer/z;

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/k;->A:Lcom/anythink/expressad/exoplayer/i/h;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/p;->d()Lcom/anythink/expressad/exoplayer/j/b;

    move-result-object v8

    iget-object v9, p0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    move-object v11, v0

    invoke-virtual/range {v5 .. v11}, Lcom/anythink/expressad/exoplayer/s;->a([Lcom/anythink/expressad/exoplayer/z;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/j/b;Lcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/r;)Lcom/anythink/expressad/exoplayer/h/r;

    move-result-object v2

    iget-wide v3, v0, Lcom/anythink/expressad/exoplayer/r;->b:J

    invoke-interface {v2, p0, v3, v4}, Lcom/anythink/expressad/exoplayer/h/r;->a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V

    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/q;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/u;->g:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->r()V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-direct {p0, v2}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v3

    const/4 v4, 0x0

    :goto_3
    iget-boolean v5, p0, Lcom/anythink/expressad/exoplayer/k;->V:Z

    if-eqz v5, :cond_a

    if-eq v0, v3, :cond_a

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    iget-wide v7, v7, Lcom/anythink/expressad/exoplayer/q;->e:J

    cmp-long v9, v5, v7

    if-ltz v9, :cond_a

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->d()V

    :cond_8
    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v4, v4, Lcom/anythink/expressad/exoplayer/r;->f:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    const/4 v4, 0x3

    :goto_4
    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/s;->h()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/q;)V

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, v5, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v8, v0, Lcom/anythink/expressad/exoplayer/r;->b:J

    iget-wide v10, v0, Lcom/anythink/expressad/exoplayer/r;->d:J

    invoke-virtual/range {v6 .. v11}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/k;->g()V

    move-object v0, v5

    const/4 v4, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, v3, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/r;->g:Z

    if-eqz v0, :cond_d

    :goto_5
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v1, v0

    if-ge v2, v1, :cond_c

    aget-object v0, v0, v2

    iget-object v1, v3, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v1, v1, v2

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/y;->f()Lcom/anythink/expressad/exoplayer/h/y;

    move-result-object v4

    if-ne v4, v1, :cond_b

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/y;->h()V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    return-void

    :cond_d
    iget-object v0, v3, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v0, :cond_16

    iget-boolean v0, v0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-nez v0, :cond_e

    goto/16 :goto_c

    :cond_e
    const/4 v0, 0x0

    :goto_6
    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v5, v4

    if-ge v0, v5, :cond_11

    aget-object v4, v4, v0

    iget-object v5, v3, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v5, v5, v0

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/y;->f()Lcom/anythink/expressad/exoplayer/h/y;

    move-result-object v6

    if-ne v6, v5, :cond_10

    if-eqz v5, :cond_f

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    :goto_7
    return-void

    :cond_11
    iget-object v0, v3, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/s;->g()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v3

    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v5, v3, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v5}, Lcom/anythink/expressad/exoplayer/h/r;->c()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_12

    const/4 v5, 0x1

    goto :goto_8

    :cond_12
    const/4 v5, 0x0

    :goto_8
    const/4 v6, 0x0

    :goto_9
    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v8, v7

    if-ge v6, v8, :cond_16

    aget-object v7, v7, v6

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v8

    if-eqz v8, :cond_15

    if-nez v5, :cond_14

    invoke-interface {v7}, Lcom/anythink/expressad/exoplayer/y;->i()Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, v4, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {v8, v6}, Lcom/anythink/expressad/exoplayer/i/g;->a(I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v8

    invoke-virtual {v4, v6}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v9

    iget-object v10, p0, Lcom/anythink/expressad/exoplayer/k;->z:[Lcom/anythink/expressad/exoplayer/z;

    aget-object v10, v10, v6

    invoke-interface {v10}, Lcom/anythink/expressad/exoplayer/z;->a()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_13

    const/4 v10, 0x1

    goto :goto_a

    :cond_13
    const/4 v10, 0x0

    :goto_a
    iget-object v11, v0, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object v11, v11, v6

    iget-object v12, v4, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object v12, v12, v6

    if-eqz v9, :cond_14

    invoke-virtual {v12, v11}, Lcom/anythink/expressad/exoplayer/aa;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    if-nez v10, :cond_14

    invoke-static {v8}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/f;)[Lcom/anythink/expressad/exoplayer/m;

    move-result-object v8

    iget-object v9, v3, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v9, v9, v6

    iget-wide v10, v3, Lcom/anythink/expressad/exoplayer/q;->e:J

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/anythink/expressad/exoplayer/y;->a([Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/h/y;J)V

    goto :goto_b

    :cond_14
    invoke-interface {v7}, Lcom/anythink/expressad/exoplayer/y;->h()V

    :cond_15
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_16
    :goto_c
    return-void
.end method

.method private q()V
    .locals 12

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/s;->a(J)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/s;->a(JLcom/anythink/expressad/exoplayer/u;)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/s;->b()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v11, 0x1

    invoke-virtual {v1, v2, v3, v11}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v1

    iget-object v9, v1, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/k;->z:[Lcom/anythink/expressad/exoplayer/z;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/k;->A:Lcom/anythink/expressad/exoplayer/i/h;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/p;->d()Lcom/anythink/expressad/exoplayer/j/b;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    move-object v10, v0

    invoke-virtual/range {v4 .. v10}, Lcom/anythink/expressad/exoplayer/s;->a([Lcom/anythink/expressad/exoplayer/z;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/j/b;Lcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/r;)Lcom/anythink/expressad/exoplayer/h/r;

    move-result-object v1

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/r;->b:J

    invoke-interface {v1, p0, v2, v3}, Lcom/anythink/expressad/exoplayer/h/r;->a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V

    invoke-direct {p0, v11}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V

    :cond_1
    return-void
.end method

.method private r()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/q;->b()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V

    return-void

    :cond_0
    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/e;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v4

    iget v4, v4, Lcom/anythink/expressad/exoplayer/v;->b:F

    invoke-interface {v3, v1, v2, v4}, Lcom/anythink/expressad/exoplayer/p;->a(JF)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/q;->a(J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k;->U:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->E:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->O:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/k/c;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    const/4 v4, 0x0

    :goto_0
    iget-boolean v5, p0, Lcom/anythink/expressad/exoplayer/k;->U:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x1

    const/4 v4, 0x1

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/k;->O:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/k/c;->a()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/16 v1, 0xc

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/ac;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/ae;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    new-instance v1, Lcom/anythink/expressad/exoplayer/k$d;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/anythink/expressad/exoplayer/k$d;-><init>(Lcom/anythink/expressad/exoplayer/ae;IJ)V

    const/4 p1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/anythink/expressad/exoplayer/k/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/r;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    new-instance v1, Lcom/anythink/expressad/exoplayer/k$a;

    invoke-direct {v1, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/k$a;-><init>(Lcom/anythink/expressad/exoplayer/h/s;Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)V

    const/16 p1, 0x8

    invoke-interface {v0, p1, v1}, Lcom/anythink/expressad/exoplayer/k/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/s;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {v0, p2, p3, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic a(Lcom/anythink/expressad/exoplayer/h/z;)V
    .locals 2

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/r;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/v;)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->F:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget p1, p1, Lcom/anythink/expressad/exoplayer/v;->b:F

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/i/g;->a()[Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Lcom/anythink/expressad/exoplayer/i/f;->a(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final declared-synchronized a(Lcom/anythink/expressad/exoplayer/x;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/k;->U:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/x;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->E:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/anythink/expressad/exoplayer/v;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/16 v1, 0xd

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Lcom/anythink/expressad/exoplayer/k/k;->a(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "ExoPlayerImplInternal"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget v7, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a

    const/4 v8, 0x0

    const/4 v10, 0x4

    const-wide/16 v11, 0x0

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    packed-switch v7, :pswitch_data_0

    const/4 v2, 0x0

    return v2

    :pswitch_0
    :try_start_1
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/anythink/expressad/exoplayer/x;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/x;->e()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/anythink/expressad/exoplayer/k$1;

    invoke-direct {v8, v1, v2}, Lcom/anythink/expressad/exoplayer/k$1;-><init>(Lcom/anythink/expressad/exoplayer/k;Lcom/anythink/expressad/exoplayer/x;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3b

    :pswitch_1
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/anythink/expressad/exoplayer/x;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/x;->f()J

    move-result-wide v7

    cmp-long v9, v7, v13

    if-nez v9, :cond_0

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->d(Lcom/anythink/expressad/exoplayer/x;)V

    goto/16 :goto_3b

    :cond_0
    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    if-eqz v7, :cond_3

    iget v7, v1, Lcom/anythink/expressad/exoplayer/k;->Z:I

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/anythink/expressad/exoplayer/k$b;

    invoke-direct {v7, v2}, Lcom/anythink/expressad/exoplayer/k$b;-><init>(Lcom/anythink/expressad/exoplayer/x;)V

    invoke-direct {v1, v7}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$b;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_3b

    :cond_2
    invoke-virtual {v2, v5}, Lcom/anythink/expressad/exoplayer/x;->a(Z)V

    goto/16 :goto_3b

    :cond_3
    :goto_0
    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    new-instance v8, Lcom/anythink/expressad/exoplayer/k$b;

    invoke-direct {v8, v2}, Lcom/anythink/expressad/exoplayer/k$b;-><init>(Lcom/anythink/expressad/exoplayer/x;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3b

    :pswitch_2
    iget v2, v2, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v1, Lcom/anythink/expressad/exoplayer/k;->Y:Z

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v7, v2}, Lcom/anythink/expressad/exoplayer/s;->a(Z)Z

    move-result v2

    if-nez v2, :cond_61

    :goto_2
    invoke-direct {v1, v6}, Lcom/anythink/expressad/exoplayer/k;->g(Z)V

    goto/16 :goto_3b

    :pswitch_3
    iget v2, v2, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/anythink/expressad/exoplayer/k;->X:I

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v7, v2}, Lcom/anythink/expressad/exoplayer/s;->a(I)Z

    move-result v2

    if-nez v2, :cond_61

    goto :goto_2

    :pswitch_4
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/e;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v2

    iget v2, v2, Lcom/anythink/expressad/exoplayer/v;->b:F

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v7}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v7

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v8}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v8

    const/4 v9, 0x1

    :goto_3
    if-eqz v7, :cond_61

    iget-boolean v11, v7, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-nez v11, :cond_5

    goto/16 :goto_3b

    :cond_5
    invoke-virtual {v7, v2}, Lcom/anythink/expressad/exoplayer/q;->a(F)Z

    move-result v11

    if-nez v11, :cond_7

    if-ne v7, v8, :cond_6

    const/4 v9, 0x0

    :cond_6
    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    goto :goto_3

    :cond_7
    if-eqz v9, :cond_e

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v7, v2}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    move-result v7

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v8, v8

    new-array v8, v8, [Z

    iget-object v9, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v11, v9, Lcom/anythink/expressad/exoplayer/u;->j:J

    invoke-virtual {v2, v11, v12, v7, v8}, Lcom/anythink/expressad/exoplayer/q;->a(JZ[Z)J

    move-result-wide v11

    iget-object v7, v2, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-direct {v1, v7}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/i;)V

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v9, v7, Lcom/anythink/expressad/exoplayer/u;->f:I

    if-eq v9, v10, :cond_8

    iget-wide v13, v7, Lcom/anythink/expressad/exoplayer/u;->j:J

    cmp-long v7, v11, v13

    if-eqz v7, :cond_8

    iget-object v13, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v14, v13, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v5, v13, Lcom/anythink/expressad/exoplayer/u;->e:J

    move-wide v15, v11

    move-wide/from16 v17, v5

    invoke-virtual/range {v13 .. v18}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v5

    iput-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v5, v10}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    invoke-direct {v1, v11, v12}, Lcom/anythink/expressad/exoplayer/k;->a(J)V

    :cond_8
    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v5, v5

    new-array v5, v5, [Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    iget-object v9, v1, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v11, v9

    if-ge v6, v11, :cond_d

    aget-object v9, v9, v6

    invoke-interface {v9}, Lcom/anythink/expressad/exoplayer/y;->a_()I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    aput-boolean v11, v5, v6

    iget-object v11, v2, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v11, v11, v6

    if-eqz v11, :cond_a

    add-int/lit8 v7, v7, 0x1

    :cond_a
    aget-boolean v12, v5, v6

    if-eqz v12, :cond_c

    invoke-interface {v9}, Lcom/anythink/expressad/exoplayer/y;->f()Lcom/anythink/expressad/exoplayer/h/y;

    move-result-object v12

    if-eq v11, v12, :cond_b

    invoke-direct {v1, v9}, Lcom/anythink/expressad/exoplayer/k;->b(Lcom/anythink/expressad/exoplayer/y;)V

    goto :goto_6

    :cond_b
    aget-boolean v11, v8, v6

    if-eqz v11, :cond_c

    iget-wide v11, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-interface {v9, v11, v12}, Lcom/anythink/expressad/exoplayer/y;->a(J)V

    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v8, v2, Lcom/anythink/expressad/exoplayer/q;->j:Lcom/anythink/expressad/exoplayer/h/af;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {v6, v8, v2}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/i;)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-direct {v1, v5, v7}, Lcom/anythink/expressad/exoplayer/k;->a([ZI)V

    goto :goto_7

    :cond_e
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2, v7}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/q;)Z

    iget-boolean v2, v7, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-eqz v2, :cond_f

    iget-object v2, v7, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v5, v2, Lcom/anythink/expressad/exoplayer/r;->b:J

    iget-wide v8, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-wide v11, v7, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr v8, v11

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/anythink/expressad/exoplayer/q;->b(J)J

    iget-object v2, v7, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/i;)V

    :cond_f
    :goto_7
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/u;->f:I

    if-eq v2, v10, :cond_61

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->r()V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->g()V

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    :goto_8
    invoke-interface {v2, v4}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    goto/16 :goto_3b

    :pswitch_5
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/anythink/expressad/exoplayer/h/r;

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v5, v2}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v5, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-virtual {v2, v5, v6}, Lcom/anythink/expressad/exoplayer/s;->a(J)V

    :cond_10
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->r()V

    goto/16 :goto_3b

    :pswitch_6
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/anythink/expressad/exoplayer/h/r;

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v5, v2}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/e;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v5

    iget v5, v5, Lcom/anythink/expressad/exoplayer/v;->b:F

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/anythink/expressad/exoplayer/q;->f:Z

    iget-object v6, v2, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/h/r;->b()Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v6

    iput-object v6, v2, Lcom/anythink/expressad/exoplayer/q;->j:Lcom/anythink/expressad/exoplayer/h/af;

    invoke-virtual {v2, v5}, Lcom/anythink/expressad/exoplayer/q;->a(F)Z

    iget-object v5, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v5, v5, Lcom/anythink/expressad/exoplayer/r;->b:J

    invoke-virtual {v2, v5, v6}, Lcom/anythink/expressad/exoplayer/q;->b(J)J

    move-result-wide v21

    iget-wide v5, v2, Lcom/anythink/expressad/exoplayer/q;->e:J

    iget-object v7, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v9, v7, Lcom/anythink/expressad/exoplayer/r;->b:J

    sub-long v9, v9, v21

    add-long/2addr v5, v9

    iput-wide v5, v2, Lcom/anythink/expressad/exoplayer/q;->e:J

    new-instance v5, Lcom/anythink/expressad/exoplayer/r;

    iget-object v6, v7, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v9, v7, Lcom/anythink/expressad/exoplayer/r;->c:J

    iget-wide v11, v7, Lcom/anythink/expressad/exoplayer/r;->d:J

    iget-wide v13, v7, Lcom/anythink/expressad/exoplayer/r;->e:J

    iget-boolean v15, v7, Lcom/anythink/expressad/exoplayer/r;->f:Z

    iget-boolean v7, v7, Lcom/anythink/expressad/exoplayer/r;->g:Z

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-wide/from16 v23, v9

    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    move/from16 v29, v15

    move/from16 v30, v7

    invoke-direct/range {v19 .. v30}, Lcom/anythink/expressad/exoplayer/r;-><init>(Lcom/anythink/expressad/exoplayer/h/s$a;JJJJZZ)V

    iput-object v5, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/i;)V

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->h()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v5, v2, Lcom/anythink/expressad/exoplayer/r;->b:J

    invoke-direct {v1, v5, v6}, Lcom/anythink/expressad/exoplayer/k;->a(J)V

    invoke-direct {v1, v8}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/q;)V

    goto :goto_9

    :pswitch_7
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/anythink/expressad/exoplayer/k$a;

    iget-object v5, v2, Lcom/anythink/expressad/exoplayer/k$a;->a:Lcom/anythink/expressad/exoplayer/h/s;

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    if-ne v5, v6, :cond_61

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v6, v2, Lcom/anythink/expressad/exoplayer/k$a;->b:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/k$a;->c:Ljava/lang/Object;

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v7, v6}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/ae;)V

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v7, v6, v2}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/ae;Ljava/lang/Object;)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x1

    sub-int/2addr v2, v7

    :goto_a
    if-ltz v2, :cond_12

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anythink/expressad/exoplayer/k$b;

    invoke-direct {v1, v7}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$b;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anythink/expressad/exoplayer/k$b;

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/k$b;->a:Lcom/anythink/expressad/exoplayer/x;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/anythink/expressad/exoplayer/x;->a(Z)V

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_12
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->N:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget v2, v1, Lcom/anythink/expressad/exoplayer/k;->Z:I

    if-lez v2, :cond_18

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v5, v2}, Lcom/anythink/expressad/exoplayer/k$c;->a(I)V
    :try_end_1
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    const/4 v2, 0x0

    :try_start_2
    iput v2, v1, Lcom/anythink/expressad/exoplayer/k;->Z:I
    :try_end_2
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->aa:Lcom/anythink/expressad/exoplayer/k$d;

    if-eqz v2, :cond_15

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$d;Z)Landroid/util/Pair;

    move-result-object v2

    iput-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->aa:Lcom/anythink/expressad/exoplayer/k$d;

    if-nez v2, :cond_13

    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->o()V

    goto/16 :goto_3b

    :cond_13
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2, v5, v6, v7}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v14

    iget-object v13, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v14}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v2

    if-eqz v2, :cond_14

    move-wide v15, v11

    goto :goto_c

    :cond_14
    move-wide v15, v6

    :goto_c
    move-wide/from16 v17, v6

    invoke-virtual/range {v13 .. v18}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    :goto_d
    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    goto/16 :goto_3b

    :cond_15
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v7, v2, Lcom/anythink/expressad/exoplayer/u;->d:J

    cmp-long v2, v7, v13

    if-nez v2, :cond_61

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    :cond_16
    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/k;->Y:Z

    invoke-virtual {v6, v2}, Lcom/anythink/expressad/exoplayer/ae;->b(Z)I

    move-result v2

    invoke-direct {v1, v6, v2}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/ae;I)Landroid/util/Pair;

    move-result-object v2

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2, v5, v6, v7}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v14

    iget-object v13, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v14}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    move-wide v15, v11

    goto :goto_e

    :cond_17
    move-wide v15, v6

    :goto_e
    move-wide/from16 v17, v6

    invoke-virtual/range {v13 .. v18}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    goto :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_40

    :catch_1
    move-exception v0

    goto/16 :goto_43

    :cond_18
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v7, v2, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v7, v7, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-wide v8, v2, Lcom/anythink/expressad/exoplayer/u;->e:J

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v2

    if-nez v2, :cond_61

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2, v7, v8, v9}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v14

    iget-object v13, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v14}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v2

    if-eqz v2, :cond_19

    move-wide v15, v11

    goto :goto_f

    :cond_19
    move-wide v15, v8

    :goto_f
    move-wide/from16 v17, v8

    invoke-virtual/range {v13 .. v18}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    goto :goto_d

    :cond_1a
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->e()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    if-nez v2, :cond_1b

    iget-object v10, v1, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v13, 0x1

    invoke-virtual {v5, v7, v10, v13}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v10

    iget-object v10, v10, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    goto :goto_10

    :cond_1b
    iget-object v10, v2, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    :goto_10
    invoke-virtual {v6, v10}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result v10

    const/4 v13, -0x1

    if-ne v10, v13, :cond_20

    invoke-direct {v1, v7, v5, v6}, Lcom/anythink/expressad/exoplayer/k;->a(ILcom/anythink/expressad/exoplayer/ae;Lcom/anythink/expressad/exoplayer/ae;)I

    move-result v5

    if-ne v5, v13, :cond_1c

    goto/16 :goto_b

    :cond_1c
    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v5

    iget v5, v5, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    invoke-direct {v1, v6, v5}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/ae;I)Landroid/util/Pair;

    move-result-object v5

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v5, v7, v8, v9}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v14

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v5, v10}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    if-eqz v2, :cond_1e

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget-object v6, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/r;->a()Lcom/anythink/expressad/exoplayer/r;

    move-result-object v6

    goto :goto_12

    :goto_11
    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v2, :cond_1e

    iget-object v6, v2, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-object v10, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    invoke-virtual {v6, v10, v7}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/r;I)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v6

    goto :goto_12

    :cond_1d
    iget-object v6, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/r;->a()Lcom/anythink/expressad/exoplayer/r;

    move-result-object v6

    :goto_12
    iput-object v6, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    goto :goto_11

    :cond_1e
    invoke-virtual {v14}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_13

    :cond_1f
    move-wide v11, v8

    :goto_13
    invoke-direct {v1, v14, v11, v12}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s$a;J)J

    move-result-wide v15

    iget-object v13, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    move-wide/from16 v17, v8

    invoke-virtual/range {v13 .. v18}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    goto/16 :goto_d

    :cond_20
    if-eq v10, v7, :cond_21

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v2, v10}, Lcom/anythink/expressad/exoplayer/u;->a(I)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    :cond_21
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v5, v10, v8, v9}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/anythink/expressad/exoplayer/h/s$a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {v14}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_14

    :cond_22
    move-wide v11, v8

    :goto_14
    invoke-direct {v1, v14, v11, v12}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s$a;J)J

    move-result-wide v15

    iget-object v13, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    move-wide/from16 v17, v8

    invoke-virtual/range {v13 .. v18}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    goto/16 :goto_d

    :cond_23
    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v6, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-virtual {v5, v2, v6, v7}, Lcom/anythink/expressad/exoplayer/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;J)Z

    move-result v2
    :try_end_3
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    if-nez v2, :cond_61

    const/4 v2, 0x0

    :try_start_4
    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->g(Z)V
    :try_end_4
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_3b

    :pswitch_8
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->i()V

    const/4 v2, 0x1

    return v2

    :pswitch_9
    iget v2, v2, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_15

    :cond_24
    const/4 v2, 0x0

    :goto_15
    const/4 v5, 0x1

    invoke-direct {v1, v2, v5}, Lcom/anythink/expressad/exoplayer/k;->a(ZZ)V

    goto/16 :goto_3b

    :pswitch_a
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/anythink/expressad/exoplayer/ac;

    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->Q:Lcom/anythink/expressad/exoplayer/ac;

    goto/16 :goto_3b

    :pswitch_b
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/anythink/expressad/exoplayer/v;

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v5, v2}, Lcom/anythink/expressad/exoplayer/e;->a(Lcom/anythink/expressad/exoplayer/v;)Lcom/anythink/expressad/exoplayer/v;

    goto/16 :goto_3b

    :pswitch_c
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/anythink/expressad/exoplayer/k$d;

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/anythink/expressad/exoplayer/k$c;->a(I)V

    invoke-direct {v1, v2, v6}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/k$d;Z)Landroid/util/Pair;

    move-result-object v5

    if-nez v5, :cond_25

    new-instance v5, Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->j()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/anythink/expressad/exoplayer/h/s$a;-><init>(I)V

    move-object v6, v5

    move-wide v7, v13

    move-wide/from16 v23, v7

    :goto_16
    const/4 v4, 0x1

    goto :goto_18

    :cond_25
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v9, v6, v7, v8}, Lcom/anythink/expressad/exoplayer/s;->a(IJ)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/h/s$a;->a()Z

    move-result v9

    if-eqz v9, :cond_26

    move-wide/from16 v23, v7

    move-wide v7, v11

    goto :goto_16

    :cond_26
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15
    :try_end_5
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7

    :try_start_6
    iget-wide v4, v2, Lcom/anythink/expressad/exoplayer/k$d;->c:J
    :try_end_6
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    cmp-long v9, v4, v13

    if-nez v9, :cond_27

    const/4 v4, 0x1

    goto :goto_17

    :cond_27
    const/4 v4, 0x0

    :goto_17
    move-wide/from16 v23, v7

    move-wide v7, v15

    :goto_18
    :try_start_7
    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    if-eqz v5, :cond_2e

    iget v5, v1, Lcom/anythink/expressad/exoplayer/k;->Z:I

    if-lez v5, :cond_28

    goto/16 :goto_1c

    :cond_28
    cmp-long v2, v7, v13

    if-nez v2, :cond_29

    invoke-direct {v1, v10}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v5, v2}, Lcom/anythink/expressad/exoplayer/k;->a(ZZZ)V

    goto :goto_1d

    :cond_29
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/u;->c:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {v6, v2}, Lcom/anythink/expressad/exoplayer/h/s$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    if-eqz v2, :cond_2a

    cmp-long v5, v7, v11

    if-eqz v5, :cond_2a

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->Q:Lcom/anythink/expressad/exoplayer/ac;

    invoke-interface {v2, v7, v8, v5}, Lcom/anythink/expressad/exoplayer/h/r;->a(JLcom/anythink/expressad/exoplayer/ac;)J

    move-result-wide v9

    goto :goto_19

    :cond_2a
    move-wide v9, v7

    :goto_19
    invoke-static {v9, v10}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v11

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v13, v2, Lcom/anythink/expressad/exoplayer/u;->j:J

    invoke-static {v13, v14}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v13

    cmp-long v2, v11, v13

    if-nez v2, :cond_2c

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v7, v2, Lcom/anythink/expressad/exoplayer/u;->j:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-wide/from16 v21, v7

    invoke-virtual/range {v19 .. v24}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    if-eqz v4, :cond_61

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;
    :try_end_8
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    const/4 v4, 0x2

    :goto_1a
    :try_start_9
    invoke-virtual {v2, v4}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V
    :try_end_9
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_3b

    :cond_2b
    move-wide v9, v7

    :cond_2c
    :try_start_a
    invoke-direct {v1, v6, v9, v10}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/h/s$a;J)J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    goto :goto_1b

    :cond_2d
    const/4 v2, 0x0

    :goto_1b
    or-int/2addr v4, v2

    move-wide/from16 v21, v9

    goto :goto_1e

    :cond_2e
    :goto_1c
    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->aa:Lcom/anythink/expressad/exoplayer/k$d;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_1d
    move-wide/from16 v21, v7

    :goto_1e
    :try_start_b
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    invoke-virtual/range {v19 .. v24}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    if-eqz v4, :cond_61

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    const/4 v4, 0x2

    goto :goto_1a

    :catchall_0
    move-exception v0

    move-object v2, v0

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-wide/from16 v21, v7

    invoke-virtual/range {v19 .. v24}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v5

    iput-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    if-eqz v4, :cond_2f

    iget-object v4, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    :cond_2f
    throw v2

    :catch_2
    move-exception v0

    move-object v5, v0

    const/4 v2, 0x0

    goto/16 :goto_41

    :catch_3
    move-exception v0

    move-object v5, v0

    const/4 v2, 0x0

    goto/16 :goto_44

    :pswitch_d
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->O:Lcom/anythink/expressad/exoplayer/k/c;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/k/c;->b()J

    move-result-wide v4

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    if-eqz v2, :cond_42

    iget v6, v1, Lcom/anythink/expressad/exoplayer/k;->Z:I

    if-lez v6, :cond_30

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/h/s;->b()V

    goto/16 :goto_2a

    :cond_30
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v6, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-virtual {v2, v6, v7}, Lcom/anythink/expressad/exoplayer/s;->a(J)V

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->a()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-wide v6, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    invoke-virtual {v2, v6, v7, v8}, Lcom/anythink/expressad/exoplayer/s;->a(JLcom/anythink/expressad/exoplayer/u;)Lcom/anythink/expressad/exoplayer/r;

    move-result-object v2

    if-nez v2, :cond_31

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/h/s;->b()V

    goto :goto_1f

    :cond_31
    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/u;->a:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v7, v2, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v7, v7, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->I:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v11, 0x1

    invoke-virtual {v6, v7, v8, v11}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v6

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->z:[Lcom/anythink/expressad/exoplayer/z;

    iget-object v11, v1, Lcom/anythink/expressad/exoplayer/k;->A:Lcom/anythink/expressad/exoplayer/i/h;

    iget-object v12, v1, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    invoke-interface {v12}, Lcom/anythink/expressad/exoplayer/p;->d()Lcom/anythink/expressad/exoplayer/j/b;

    move-result-object v22

    iget-object v12, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v6

    move-object/from16 v25, v2

    invoke-virtual/range {v19 .. v25}, Lcom/anythink/expressad/exoplayer/s;->a([Lcom/anythink/expressad/exoplayer/z;Lcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/j/b;Lcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/r;)Lcom/anythink/expressad/exoplayer/h/r;

    move-result-object v6

    iget-wide v7, v2, Lcom/anythink/expressad/exoplayer/r;->b:J

    invoke-interface {v6, v1, v7, v8}, Lcom/anythink/expressad/exoplayer/h/r;->a(Lcom/anythink/expressad/exoplayer/h/r$a;J)V

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V

    :cond_32
    :goto_1f
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/q;->a()Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_20

    :cond_33
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-boolean v2, v2, Lcom/anythink/expressad/exoplayer/u;->g:Z

    if-nez v2, :cond_35

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->r()V
    :try_end_b
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_21

    :cond_34
    :goto_20
    const/4 v2, 0x0

    :try_start_c
    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->d(Z)V
    :try_end_c
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4

    :cond_35
    :goto_21
    :try_start_d
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v6

    const/4 v7, 0x0

    :goto_22
    iget-boolean v8, v1, Lcom/anythink/expressad/exoplayer/k;->V:Z

    if-eqz v8, :cond_38

    if-eq v2, v6, :cond_38

    iget-wide v11, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-object v8, v2, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    iget-wide v9, v8, Lcom/anythink/expressad/exoplayer/q;->e:J

    cmp-long v8, v11, v9

    if-ltz v8, :cond_38

    if-eqz v7, :cond_36

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->d()V

    :cond_36
    iget-object v7, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v7, v7, Lcom/anythink/expressad/exoplayer/r;->f:Z

    if-eqz v7, :cond_37

    const/4 v7, 0x0

    goto :goto_23

    :cond_37
    const/4 v7, 0x3

    :goto_23
    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v8}, Lcom/anythink/expressad/exoplayer/s;->h()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v8

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/q;)V

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v9, v8, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-object v10, v9, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v11, v9, Lcom/anythink/expressad/exoplayer/r;->b:J

    iget-wide v13, v9, Lcom/anythink/expressad/exoplayer/r;->d:J

    move-object/from16 v19, v2

    move-object/from16 v20, v10

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    invoke-virtual/range {v19 .. v24}, Lcom/anythink/expressad/exoplayer/u;->a(Lcom/anythink/expressad/exoplayer/h/s$a;JJ)Lcom/anythink/expressad/exoplayer/u;

    move-result-object v2

    iput-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->M:Lcom/anythink/expressad/exoplayer/k$c;

    invoke-virtual {v2, v7}, Lcom/anythink/expressad/exoplayer/k$c;->b(I)V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->g()V

    move-object v2, v8

    const/4 v7, 0x1

    const/4 v10, 0x4

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_22

    :cond_38
    iget-object v2, v6, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v2, v2, Lcom/anythink/expressad/exoplayer/r;->g:Z

    if-eqz v2, :cond_3a

    const/4 v2, 0x0

    :goto_24
    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v8, v7

    if-ge v2, v8, :cond_42

    aget-object v7, v7, v2

    iget-object v8, v6, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v8, v8, v2

    if-eqz v8, :cond_39

    invoke-interface {v7}, Lcom/anythink/expressad/exoplayer/y;->f()Lcom/anythink/expressad/exoplayer/h/y;

    move-result-object v9

    if-ne v9, v8, :cond_39

    invoke-interface {v7}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-interface {v7}, Lcom/anythink/expressad/exoplayer/y;->h()V

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3a
    iget-object v2, v6, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v2, :cond_42

    iget-boolean v2, v2, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-nez v2, :cond_3b

    goto/16 :goto_2a

    :cond_3b
    const/4 v2, 0x0

    :goto_25
    iget-object v7, v1, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v8, v7

    if-ge v2, v8, :cond_3d

    aget-object v7, v7, v2

    iget-object v8, v6, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v8, v8, v2

    invoke-interface {v7}, Lcom/anythink/expressad/exoplayer/y;->f()Lcom/anythink/expressad/exoplayer/h/y;

    move-result-object v9

    if-ne v9, v8, :cond_42

    if-eqz v8, :cond_3c

    invoke-interface {v7}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v7

    if-nez v7, :cond_3c

    goto/16 :goto_2a

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3d
    iget-object v2, v6, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/s;->g()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v6

    iget-object v7, v6, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v8, v6, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v8}, Lcom/anythink/expressad/exoplayer/h/r;->c()J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3e

    const/4 v8, 0x1

    goto :goto_26

    :cond_3e
    const/4 v8, 0x0

    :goto_26
    const/4 v9, 0x0

    :goto_27
    iget-object v10, v1, Lcom/anythink/expressad/exoplayer/k;->y:[Lcom/anythink/expressad/exoplayer/y;

    array-length v11, v10

    if-ge v9, v11, :cond_42

    aget-object v10, v10, v9

    invoke-virtual {v2, v9}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v11

    if-eqz v11, :cond_41

    if-nez v8, :cond_40

    invoke-interface {v10}, Lcom/anythink/expressad/exoplayer/y;->i()Z

    move-result v11

    if-nez v11, :cond_41

    iget-object v11, v7, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {v11, v9}, Lcom/anythink/expressad/exoplayer/i/g;->a(I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v11

    invoke-virtual {v7, v9}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v12

    iget-object v13, v1, Lcom/anythink/expressad/exoplayer/k;->z:[Lcom/anythink/expressad/exoplayer/z;

    aget-object v13, v13, v9

    invoke-interface {v13}, Lcom/anythink/expressad/exoplayer/z;->a()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_3f

    const/4 v13, 0x1

    goto :goto_28

    :cond_3f
    const/4 v13, 0x0

    :goto_28
    iget-object v14, v2, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object v14, v14, v9

    iget-object v15, v7, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object v15, v15, v9

    if-eqz v12, :cond_40

    invoke-virtual {v15, v14}, Lcom/anythink/expressad/exoplayer/aa;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_40

    if-nez v13, :cond_40

    invoke-static {v11}, Lcom/anythink/expressad/exoplayer/k;->a(Lcom/anythink/expressad/exoplayer/i/f;)[Lcom/anythink/expressad/exoplayer/m;

    move-result-object v11

    iget-object v12, v6, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    aget-object v12, v12, v9

    iget-wide v13, v6, Lcom/anythink/expressad/exoplayer/q;->e:J

    invoke-interface {v10, v11, v12, v13, v14}, Lcom/anythink/expressad/exoplayer/y;->a([Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/h/y;J)V

    goto :goto_29

    :cond_40
    invoke-interface {v10}, Lcom/anythink/expressad/exoplayer/y;->h()V

    :cond_41
    :goto_29
    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :catch_4
    move-exception v0

    goto/16 :goto_3e

    :catch_5
    move-exception v0

    move-object v5, v0

    goto/16 :goto_3c

    :catch_6
    move-exception v0

    move-object v5, v0

    goto/16 :goto_3d

    :cond_42
    :goto_2a
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->f()Z

    move-result v2

    const-wide/16 v6, 0xa

    if-nez v2, :cond_43

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->n()V

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/anythink/expressad/exoplayer/k;->a(JJ)V

    goto/16 :goto_3b

    :cond_43
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->c()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    const-string v8, "doSomeWork"

    invoke-static {v8}, Lcom/anythink/expressad/exoplayer/k/ad;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->g()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    iget-object v12, v2, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    iget-object v13, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v13, v13, Lcom/anythink/expressad/exoplayer/u;->j:J

    iget-wide v10, v1, Lcom/anythink/expressad/exoplayer/k;->J:J

    sub-long/2addr v13, v10

    iget-boolean v10, v1, Lcom/anythink/expressad/exoplayer/k;->K:Z

    invoke-interface {v12, v13, v14, v10}, Lcom/anythink/expressad/exoplayer/h/r;->a(JZ)V

    iget-object v10, v1, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    :goto_2b
    if-ge v12, v11, :cond_4a

    aget-object v15, v10, v12

    iget-wide v6, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    invoke-interface {v15, v6, v7, v8, v9}, Lcom/anythink/expressad/exoplayer/y;->a(JJ)V

    if-eqz v14, :cond_44

    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->v()Z

    move-result v6

    if-eqz v6, :cond_44

    const/4 v14, 0x1

    goto :goto_2c

    :cond_44
    const/4 v14, 0x0

    :goto_2c
    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->u()Z

    move-result v6

    if-nez v6, :cond_47

    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->v()Z

    move-result v6

    if-nez v6, :cond_47

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v6}, Lcom/anythink/expressad/exoplayer/s;->d()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v6

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/q;->i:Lcom/anythink/expressad/exoplayer/q;

    if-eqz v6, :cond_45

    iget-boolean v6, v6, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-eqz v6, :cond_45

    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->g()Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v6, 0x1

    goto :goto_2d

    :cond_45
    const/4 v6, 0x0

    :goto_2d
    if-eqz v6, :cond_46

    goto :goto_2e

    :cond_46
    const/4 v6, 0x0

    goto :goto_2f

    :cond_47
    :goto_2e
    const/4 v6, 0x1

    :goto_2f
    if-nez v6, :cond_48

    invoke-interface {v15}, Lcom/anythink/expressad/exoplayer/y;->j()V

    :cond_48
    if-eqz v13, :cond_49

    if-eqz v6, :cond_49

    const/4 v13, 0x1

    goto :goto_30

    :cond_49
    const/4 v13, 0x0

    :goto_30
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v6, 0xa

    goto :goto_2b

    :cond_4a
    if-nez v13, :cond_4b

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->n()V

    :cond_4b
    iget-object v6, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v6, v6, Lcom/anythink/expressad/exoplayer/r;->e:J

    if-eqz v14, :cond_4d

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4c

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget-wide v8, v8, Lcom/anythink/expressad/exoplayer/u;->j:J

    cmp-long v10, v6, v8

    if-gtz v10, :cond_4d

    :cond_4c
    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v2, v2, Lcom/anythink/expressad/exoplayer/r;->g:Z

    if-eqz v2, :cond_4d

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    :goto_31
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->f()V

    goto/16 :goto_35

    :cond_4d
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v6, v2, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_53

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v6, v6

    if-nez v6, :cond_4e

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->m()Z

    move-result v2

    goto :goto_34

    :cond_4e
    if-eqz v13, :cond_52

    iget-boolean v2, v2, Lcom/anythink/expressad/exoplayer/u;->g:Z

    if-nez v2, :cond_50

    :cond_4f
    :goto_32
    const/4 v2, 0x1

    goto :goto_34

    :cond_50
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->P:Lcom/anythink/expressad/exoplayer/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/s;->b()Lcom/anythink/expressad/exoplayer/q;

    move-result-object v2

    iget-object v6, v2, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-boolean v6, v6, Lcom/anythink/expressad/exoplayer/r;->g:Z

    if-nez v6, :cond_51

    const/4 v6, 0x1

    goto :goto_33

    :cond_51
    const/4 v6, 0x0

    :goto_33
    invoke-virtual {v2, v6}, Lcom/anythink/expressad/exoplayer/q;->a(Z)J

    move-result-wide v6

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4f

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    iget-wide v9, v1, Lcom/anythink/expressad/exoplayer/k;->ab:J

    iget-wide v11, v2, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr v9, v11

    sub-long/2addr v6, v9

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->L:Lcom/anythink/expressad/exoplayer/e;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/e;->e()Lcom/anythink/expressad/exoplayer/v;

    move-result-object v2

    iget v2, v2, Lcom/anythink/expressad/exoplayer/v;->b:F

    iget-boolean v9, v1, Lcom/anythink/expressad/exoplayer/k;->W:Z

    invoke-interface {v8, v6, v7, v2, v9}, Lcom/anythink/expressad/exoplayer/p;->a(JFZ)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_32

    :cond_52
    const/4 v2, 0x0

    :goto_34
    if-eqz v2, :cond_53

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/k;->V:Z

    if-eqz v2, :cond_56

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->e()V

    goto :goto_35

    :cond_53
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_56

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v2, v2

    if-nez v2, :cond_54

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->m()Z

    move-result v2

    if-eqz v2, :cond_55

    goto :goto_35

    :cond_54
    if-nez v13, :cond_56

    :cond_55
    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/k;->V:Z

    iput-boolean v2, v1, Lcom/anythink/expressad/exoplayer/k;->W:Z

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    goto :goto_31

    :cond_56
    :goto_35
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_57

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v6, v2

    const/4 v7, 0x0

    :goto_36
    if-ge v7, v6, :cond_57

    aget-object v8, v2, v7

    invoke-interface {v8}, Lcom/anythink/expressad/exoplayer/y;->j()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_57
    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/k;->V:Z

    if-eqz v2, :cond_58

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_59

    :cond_58
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v6, 0x2

    if-ne v2, v6, :cond_5a

    :cond_59
    const-wide/16 v6, 0xa

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/anythink/expressad/exoplayer/k;->a(JJ)V

    goto :goto_37

    :cond_5a
    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/k;->T:[Lcom/anythink/expressad/exoplayer/y;

    array-length v6, v6

    if-eqz v6, :cond_5b

    const/4 v6, 0x4

    if-eq v2, v6, :cond_5b

    const-wide/16 v6, 0x3e8

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/anythink/expressad/exoplayer/k;->a(JJ)V

    goto :goto_37

    :cond_5b
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/k/k;->b()V

    :goto_37
    invoke-static {}, Lcom/anythink/expressad/exoplayer/k/ad;->a()V

    goto :goto_3b

    :pswitch_e
    iget v2, v2, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_5c

    const/4 v2, 0x1

    goto :goto_38

    :cond_5c
    const/4 v2, 0x0

    :goto_38
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/anythink/expressad/exoplayer/k;->W:Z

    iput-boolean v2, v1, Lcom/anythink/expressad/exoplayer/k;->V:Z

    if-nez v2, :cond_5d

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->f()V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->g()V

    goto :goto_3b

    :cond_5d
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->R:Lcom/anythink/expressad/exoplayer/u;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/u;->f:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5e

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->e()V

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;
    :try_end_d
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_7

    const/4 v4, 0x2

    goto/16 :goto_8

    :cond_5e
    const/4 v4, 0x2

    if-ne v2, v4, :cond_61

    :try_start_e
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;
    :try_end_e
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_8

    :pswitch_f
    :try_start_f
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/anythink/expressad/exoplayer/h/s;

    iget v5, v2, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_5f

    const/4 v5, 0x1

    goto :goto_39

    :cond_5f
    const/4 v5, 0x0

    :goto_39
    iget v2, v2, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_60

    const/4 v2, 0x1

    goto :goto_3a

    :cond_60
    const/4 v2, 0x0

    :goto_3a
    iget v6, v1, Lcom/anythink/expressad/exoplayer/k;->Z:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v1, Lcom/anythink/expressad/exoplayer/k;->Z:I

    invoke-direct {v1, v7, v5, v2}, Lcom/anythink/expressad/exoplayer/k;->a(ZZZ)V

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->C:Lcom/anythink/expressad/exoplayer/p;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/p;->a()V

    iput-object v4, v1, Lcom/anythink/expressad/exoplayer/k;->S:Lcom/anythink/expressad/exoplayer/h/s;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/k;->b(I)V

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/k;->G:Lcom/anythink/expressad/exoplayer/h;

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6, v1}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h;ZLcom/anythink/expressad/exoplayer/h/s$b;)V

    iget-object v4, v1, Lcom/anythink/expressad/exoplayer/k;->D:Lcom/anythink/expressad/exoplayer/k/k;

    invoke-interface {v4, v2}, Lcom/anythink/expressad/exoplayer/k/k;->b(I)Z

    :cond_61
    :goto_3b
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->d()V
    :try_end_f
    .catch Lcom/anythink/expressad/exoplayer/g; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_46

    :catch_7
    move-exception v0

    move-object v4, v0

    const/4 v2, 0x0

    goto :goto_3f

    :catch_8
    move-exception v0

    move-object v5, v0

    const/4 v2, 0x0

    :goto_3c
    const/4 v4, 0x2

    goto :goto_41

    :catch_9
    move-exception v0

    move-object v5, v0

    const/4 v2, 0x0

    :goto_3d
    const/4 v4, 0x2

    goto :goto_44

    :catch_a
    move-exception v0

    const/4 v2, 0x0

    :goto_3e
    move-object v4, v0

    :goto_3f
    const-string v5, "Internal runtime error."

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {v1, v2, v2}, Lcom/anythink/expressad/exoplayer/k;->a(ZZ)V

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->F:Landroid/os/Handler;

    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/g;->a(Ljava/lang/RuntimeException;)Lcom/anythink/expressad/exoplayer/g;

    move-result-object v3

    const/4 v4, 0x2

    goto :goto_42

    :catch_b
    move-exception v0

    const/4 v2, 0x0

    :goto_40
    move-object v5, v0

    :goto_41
    const-string v6, "Source error."

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {v1, v2, v2}, Lcom/anythink/expressad/exoplayer/k;->a(ZZ)V

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->F:Landroid/os/Handler;

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/g;->a(Ljava/io/IOException;)Lcom/anythink/expressad/exoplayer/g;

    move-result-object v3

    :goto_42
    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_45

    :catch_c
    move-exception v0

    const/4 v2, 0x0

    :goto_43
    move-object v5, v0

    :goto_44
    const-string v6, "Playback error."

    invoke-static {v3, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {v1, v2, v2}, Lcom/anythink/expressad/exoplayer/k;->a(ZZ)V

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/k;->F:Landroid/os/Handler;

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    :goto_45
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k;->d()V

    :goto_46
    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
