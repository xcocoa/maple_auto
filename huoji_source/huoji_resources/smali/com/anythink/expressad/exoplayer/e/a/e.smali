.class public final Lcom/anythink/expressad/exoplayer/e/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/e/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/e/a/e$c;,
        Lcom/anythink/expressad/exoplayer/e/a/e$b;,
        Lcom/anythink/expressad/exoplayer/e/a/e$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/anythink/expressad/exoplayer/e/h;

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x4

.field public static final h:I = 0x10

.field private static final i:I = 0x8

.field private static final j:Ljava/lang/String; = "FragmentedMp4Extractor"

.field private static final k:I

.field private static final l:[B

.field private static final m:Lcom/anythink/expressad/exoplayer/m;

.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2

.field private static final q:I = 0x3

.field private static final r:I = 0x4


# instance fields
.field private final A:Lcom/anythink/expressad/exoplayer/k/ac;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final B:Lcom/anythink/expressad/exoplayer/k/s;

.field private final C:[B

.field private final D:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/anythink/expressad/exoplayer/e/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final E:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/anythink/expressad/exoplayer/e/a/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Lcom/anythink/expressad/exoplayer/e/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private G:I

.field private H:I

.field private I:J

.field private J:I

.field private K:Lcom/anythink/expressad/exoplayer/k/s;

.field private L:J

.field private M:I

.field private N:J

.field private O:J

.field private P:J

.field private Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

.field private R:I

.field private S:I

.field private T:I

.field private U:Z

.field private V:Lcom/anythink/expressad/exoplayer/e/g;

.field private W:[Lcom/anythink/expressad/exoplayer/e/m;

.field private X:[Lcom/anythink/expressad/exoplayer/e/m;

.field private Y:Z

.field private final s:I

.field private final t:Lcom/anythink/expressad/exoplayer/e/a/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/m;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/anythink/expressad/exoplayer/d/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final w:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/anythink/expressad/exoplayer/e/a/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Lcom/anythink/expressad/exoplayer/k/s;

.field private final y:Lcom/anythink/expressad/exoplayer/k/s;

.field private final z:Lcom/anythink/expressad/exoplayer/k/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/exoplayer/e/a/e$1;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/e/a/e$1;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/e/a/e;->d:Lcom/anythink/expressad/exoplayer/e/h;

    const-string v0, "seig"

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/anythink/expressad/exoplayer/e/a/e;->k:I

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/anythink/expressad/exoplayer/e/a/e;->l:[B

    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    sput-object v0, Lcom/anythink/expressad/exoplayer/e/a/e;->m:Lcom/anythink/expressad/exoplayer/m;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/e/a/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/e/a/e;-><init>(ILcom/anythink/expressad/exoplayer/k/ac;)V

    return-void
.end method

.method private constructor <init>(ILcom/anythink/expressad/exoplayer/k/ac;)V
    .locals 1
    .param p2    # Lcom/anythink/expressad/exoplayer/k/ac;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/anythink/expressad/exoplayer/e/a/e;-><init>(ILcom/anythink/expressad/exoplayer/k/ac;Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/d/e;)V

    return-void
.end method

.method private constructor <init>(ILcom/anythink/expressad/exoplayer/k/ac;Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/d/e;)V
    .locals 6
    .param p2    # Lcom/anythink/expressad/exoplayer/k/ac;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/anythink/expressad/exoplayer/e/a/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/e/a/e;-><init>(ILcom/anythink/expressad/exoplayer/k/ac;Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/d/e;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(ILcom/anythink/expressad/exoplayer/k/ac;Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/d/e;Ljava/util/List;)V
    .locals 7
    .param p2    # Lcom/anythink/expressad/exoplayer/k/ac;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/anythink/expressad/exoplayer/e/a/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/anythink/expressad/exoplayer/k/ac;",
            "Lcom/anythink/expressad/exoplayer/e/a/j;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/m;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/e/a/e;-><init>(ILcom/anythink/expressad/exoplayer/k/ac;Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/d/e;Ljava/util/List;Lcom/anythink/expressad/exoplayer/e/m;)V

    return-void
.end method

.method private constructor <init>(ILcom/anythink/expressad/exoplayer/k/ac;Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/d/e;Ljava/util/List;Lcom/anythink/expressad/exoplayer/e/m;)V
    .locals 1
    .param p2    # Lcom/anythink/expressad/exoplayer/k/ac;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/anythink/expressad/exoplayer/e/a/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/anythink/expressad/exoplayer/d/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/anythink/expressad/exoplayer/e/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/anythink/expressad/exoplayer/k/ac;",
            "Lcom/anythink/expressad/exoplayer/e/a/j;",
            "Lcom/anythink/expressad/exoplayer/d/e;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/m;",
            ">;",
            "Lcom/anythink/expressad/exoplayer/e/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->s:I

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->t:Lcom/anythink/expressad/exoplayer/e/a/j;

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->v:Lcom/anythink/expressad/exoplayer/d/e;

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->u:Ljava/util/List;

    iput-object p6, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->F:Lcom/anythink/expressad/exoplayer/e/m;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/anythink/expressad/exoplayer/k/s;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    sget-object p3, Lcom/anythink/expressad/exoplayer/k/p;->a:[B

    invoke-direct {p1, p3}, Lcom/anythink/expressad/exoplayer/k/s;-><init>([B)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->x:Lcom/anythink/expressad/exoplayer/k/s;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/anythink/expressad/exoplayer/k/s;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->y:Lcom/anythink/expressad/exoplayer/k/s;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/k/s;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->C:[B

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->O:J

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->N:J

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->P:J

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a()V

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/e/a/e$c;IJILcom/anythink/expressad/exoplayer/k/s;I)I
    .locals 31

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/a;->b(I)I

    move-result v1

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->a:Lcom/anythink/expressad/exoplayer/e/a/c;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->h:[I

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v6

    aput v6, v5, p1

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->g:[J

    iget-wide v6, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->c:J

    aput-wide v6, v5, p1

    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_0

    aget-wide v6, v5, p1

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, p1

    :cond_0
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget v8, v4, Lcom/anythink/expressad/exoplayer/e/a/c;->d:I

    if-eqz v5, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v8

    :cond_2
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iget-object v12, v3, Lcom/anythink/expressad/exoplayer/e/a/j;->j:[J

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_7

    array-length v15, v12

    if-ne v15, v7, :cond_7

    aget-wide v15, v12, v6

    cmp-long v12, v15, v13

    if-nez v12, :cond_7

    iget-object v12, v3, Lcom/anythink/expressad/exoplayer/e/a/j;->k:[J

    aget-wide v13, v12, v6

    const-wide/16 v15, 0x3e8

    iget-wide v6, v3, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-wide/from16 v17, v6

    invoke-static/range {v13 .. v18}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v13

    :cond_7
    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->i:[I

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->j:[I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->k:[J

    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->l:[Z

    iget v2, v3, Lcom/anythink/expressad/exoplayer/e/a/j;->d:I

    move/from16 v17, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_8

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    iget-object v8, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->h:[I

    aget v8, v8, p1

    add-int v8, p6, v8

    iget-wide v2, v3, Lcom/anythink/expressad/exoplayer/e/a/j;->e:J

    move-wide/from16 v24, v13

    move-object v14, v12

    if-lez p1, :cond_9

    iget-wide v12, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->s:J

    goto :goto_6

    :cond_9
    move-wide/from16 v12, p2

    :goto_6
    move-wide/from16 p1, v12

    move/from16 v12, p6

    :goto_7
    if-ge v12, v8, :cond_11

    if-eqz v9, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v13

    goto :goto_8

    :cond_a
    iget v13, v4, Lcom/anythink/expressad/exoplayer/e/a/c;->b:I

    :goto_8
    if-eqz v10, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v18

    move/from16 v26, v9

    move/from16 v9, v18

    goto :goto_9

    :cond_b
    move/from16 v26, v9

    iget v9, v4, Lcom/anythink/expressad/exoplayer/e/a/c;->c:I

    :goto_9
    if-nez v12, :cond_c

    if-eqz v5, :cond_c

    move/from16 v27, v5

    move/from16 v5, v17

    goto :goto_a

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v18

    move/from16 v27, v5

    move/from16 v5, v18

    goto :goto_a

    :cond_d
    move/from16 v27, v5

    iget v5, v4, Lcom/anythink/expressad/exoplayer/e/a/c;->d:I

    :goto_a
    move/from16 v28, v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p5 .. p5}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    move/from16 v29, v10

    move/from16 v30, v11

    int-to-long v10, v1

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    div-long/2addr v10, v2

    long-to-int v1, v10

    aput v1, v7, v12

    const/4 v1, 0x0

    goto :goto_b

    :cond_e
    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v1, 0x0

    aput v1, v7, v12

    :goto_b
    const-wide/16 v20, 0x3e8

    move-wide/from16 v18, p1

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v24

    aput-wide v10, v15, v12

    aput v9, v6, v12

    shr-int/lit8 v5, v5, 0x10

    const/4 v9, 0x1

    and-int/2addr v5, v9

    if-nez v5, :cond_10

    if-eqz v16, :cond_f

    if-nez v12, :cond_10

    :cond_f
    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    :goto_c
    aput-boolean v5, v14, v12

    int-to-long v10, v13

    move-wide/from16 v18, v2

    move-wide/from16 v1, p1

    add-long/2addr v1, v10

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 p1, v1

    move-wide/from16 v2, v18

    move/from16 v9, v26

    move/from16 v5, v27

    move/from16 v1, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_7

    :cond_11
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->s:J

    return v8
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;J)Landroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/k/s;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/anythink/expressad/exoplayer/e/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v9

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v1

    new-array v7, v1, [I

    new-array v8, v1, [J

    new-array v5, v1, [J

    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    aput v12, v7, v11

    aput-wide v13, v8, v11

    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v3

    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/anythink/expressad/exoplayer/t;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/anythink/expressad/exoplayer/e/a;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lcom/anythink/expressad/exoplayer/e/a;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/anythink/expressad/exoplayer/d/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/e/a/a$b;",
            ">;)",
            "Lcom/anythink/expressad/exoplayer/d/e;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/exoplayer/e/a/a$b;

    iget v5, v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->Z:I

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/e/a/h;->a([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/anythink/expressad/exoplayer/d/e$a;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lcom/anythink/expressad/exoplayer/d/e$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Lcom/anythink/expressad/exoplayer/d/e;

    invoke-direct {p0, v3}, Lcom/anythink/expressad/exoplayer/d/e;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static a(Landroid/util/SparseArray;I)Lcom/anythink/expressad/exoplayer/e/a/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/anythink/expressad/exoplayer/e/a/c;",
            ">;I)",
            "Lcom/anythink/expressad/exoplayer/e/a/c;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/anythink/expressad/exoplayer/e/a/c;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/expressad/exoplayer/e/a/c;

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Landroid/util/SparseArray;)Lcom/anythink/expressad/exoplayer/e/a/e$c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/anythink/expressad/exoplayer/e/a/e$c;",
            ">;)",
            "Lcom/anythink/expressad/exoplayer/e/a/e$c;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget v6, v5, Lcom/anythink/expressad/exoplayer/e/a/e$c;->g:I

    iget-object v7, v5, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget v8, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->e:I

    if-eq v6, v8, :cond_0

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->g:[J

    aget-wide v6, v7, v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    move-object v1, v5

    move-wide v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;Landroid/util/SparseArray;)Lcom/anythink/expressad/exoplayer/e/a/e$c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/k/s;",
            "Landroid/util/SparseArray<",
            "Lcom/anythink/expressad/exoplayer/e/a/e$c;",
            ">;)",
            "Lcom/anythink/expressad/exoplayer/e/a/e$c;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/e/a/a;->b(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-static {p1, v1}, Lcom/anythink/expressad/exoplayer/e/a/e;->b(Landroid/util/SparseArray;I)Lcom/anythink/expressad/exoplayer/e/a/e$c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v1

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iput-wide v1, v3, Lcom/anythink/expressad/exoplayer/e/a/l;->c:J

    iput-wide v1, v3, Lcom/anythink/expressad/exoplayer/e/a/l;->d:J

    :cond_1
    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/e/a/e$c;->d:Lcom/anythink/expressad/exoplayer/e/a/c;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v2, v1, Lcom/anythink/expressad/exoplayer/e/a/c;->a:I

    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v3

    goto :goto_1

    :cond_3
    iget v3, v1, Lcom/anythink/expressad/exoplayer/e/a/c;->b:I

    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v4

    goto :goto_2

    :cond_4
    iget v4, v1, Lcom/anythink/expressad/exoplayer/e/a/c;->c:I

    :goto_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result p0

    goto :goto_3

    :cond_5
    iget p0, v1, Lcom/anythink/expressad/exoplayer/e/a/c;->d:I

    :goto_3
    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    new-instance v1, Lcom/anythink/expressad/exoplayer/e/a/c;

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/anythink/expressad/exoplayer/e/a/c;-><init>(IIII)V

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->a:Lcom/anythink/expressad/exoplayer/e/a/c;

    return-object p1
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    return-void
.end method

.method private a(J)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aV:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a()V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V
    .locals 2

    iget v0, p1, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v1, Lcom/anythink/expressad/exoplayer/e/a/a;->G:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/e/a/e;->b(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V

    return-void

    :cond_0
    sget v1, Lcom/anythink/expressad/exoplayer/e/a/a;->P:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/e/a/e;->c(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V

    :cond_2
    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/e/a/a$a;",
            "Landroid/util/SparseArray<",
            "Lcom/anythink/expressad/exoplayer/e/a/e$c;",
            ">;I[B)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aX:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget v3, v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->Q:I

    if-ne v3, v4, :cond_0

    invoke-static {v2, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/e/a/e;->b(Lcom/anythink/expressad/exoplayer/e/a/a$a;Landroid/util/SparseArray;I[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/a/e$c;JI)V
    .locals 10

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aW:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/exoplayer/e/a/a$b;

    iget v6, v5, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->E:I

    if-ne v6, v7, :cond_0

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p1, Lcom/anythink/expressad/exoplayer/e/a/e$c;->g:I

    iput v1, p1, Lcom/anythink/expressad/exoplayer/e/a/e$c;->f:I

    iput v1, p1, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    iget-object v2, p1, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    invoke-virtual {v2, v3, v4}, Lcom/anythink/expressad/exoplayer/e/a/l;->a(II)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;

    iget v4, v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->E:I

    if-ne v4, v5, :cond_2

    add-int/lit8 v9, v3, 0x1

    iget-object v7, v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v2 .. v8}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/e/a/e$c;IJILcom/anythink/expressad/exoplayer/k/s;I)I

    move-result v2

    move v8, v2

    move v3, v9

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/e/a/a$b;J)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->a(Lcom/anythink/expressad/exoplayer/e/a/a$b;)V

    return-void

    :cond_0
    iget v2, v1, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->F:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v11

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v7

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v7

    :goto_0
    add-long v7, p2, v7

    move-wide v13, v5

    move-wide v15, v7

    const-wide/32 v7, 0xf4240

    move-wide v5, v13

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v17

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v2

    new-array v9, v2, [I

    new-array v10, v2, [J

    new-array v7, v2, [J

    new-array v8, v2, [J

    move-wide/from16 v5, v17

    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v19

    const/high16 v20, -0x80000000

    and-int v20, v19, v20

    if-nez v20, :cond_2

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v20

    const v22, 0x7fffffff

    and-int v19, v19, v22

    aput v19, v9, v4

    aput-wide v15, v10, v4

    aput-wide v5, v8, v4

    add-long v13, v13, v20

    const-wide/32 v19, 0xf4240

    move-wide v5, v13

    move/from16 p2, v2

    move-object v3, v7

    move-object v2, v8

    move-wide/from16 v7, v19

    move-wide/from16 v19, v13

    move-object v13, v9

    move-object v14, v10

    move-wide v9, v11

    invoke-static/range {v5 .. v10}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v5

    aget-wide v7, v2, v4

    sub-long v7, v5, v7

    aput-wide v7, v3, v4

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    aget v8, v13, v4

    int-to-long v8, v8

    add-long/2addr v15, v8

    add-int/lit8 v4, v4, 0x1

    move-object v8, v2

    move-object v7, v3

    move-object v9, v13

    move-object v10, v14

    move-wide/from16 v13, v19

    const/4 v3, 0x4

    move/from16 v2, p2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v3, v7

    move-object v2, v8

    move-object v13, v9

    move-object v14, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v4, Lcom/anythink/expressad/exoplayer/e/a;

    invoke-direct {v4, v13, v14, v3, v2}, Lcom/anythink/expressad/exoplayer/e/a;-><init>([I[J[J[J)V

    invoke-static {v1, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->P:J

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v2, v1}, Lcom/anythink/expressad/exoplayer/e/g;->a(Lcom/anythink/expressad/exoplayer/e/k;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Y:Z

    return-void

    :cond_4
    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->aL:I

    if-ne v2, v3, :cond_a

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    if-eqz v2, :cond_a

    array-length v2, v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v5

    const-wide/32 v7, 0xf4240

    invoke-static/range {v5 .. v10}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v5

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-interface {v10, v1, v3}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->P:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v1, v7

    if-eqz v9, :cond_9

    add-long/2addr v1, v5

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v1, v2}, Lcom/anythink/expressad/exoplayer/k/ac;->b(J)J

    move-result-wide v1

    :cond_7
    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v13, v12

    :goto_3
    if-ge v4, v13, :cond_8

    aget-object v5, v12, v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v1

    move v9, v3

    invoke-interface/range {v5 .. v11}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    return-void

    :cond_9
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/anythink/expressad/exoplayer/e/a/e$b;

    invoke-direct {v2, v5, v6, v3}, Lcom/anythink/expressad/exoplayer/e/a/e$b;-><init>(JI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    nop

    :cond_a
    :goto_4
    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/e/a/k;Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/e/a/l;)V
    .locals 7

    iget p0, p0, Lcom/anythink/expressad/exoplayer/e/a/k;->d:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/a;->b(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v1

    iget v3, p2, Lcom/anythink/expressad/exoplayer/e/a/l;->f:I

    if-ne v1, v3, :cond_5

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/anythink/expressad/exoplayer/e/a/l;->n:[Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    iget-object p0, p2, Lcom/anythink/expressad/exoplayer/e/a/l;->n:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_4
    invoke-virtual {p2, v5}, Lcom/anythink/expressad/exoplayer/e/a/l;->a(I)V

    return-void

    :cond_5
    new-instance p0, Lcom/anythink/expressad/exoplayer/t;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length mismatch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/anythink/expressad/exoplayer/e/a/l;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/k/s;)V
    .locals 12

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result v8

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v6}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-interface {v7, p1, v8}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->P:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v6

    if-eqz p1, :cond_4

    add-long/2addr v3, v1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3, v4}, Lcom/anythink/expressad/exoplayer/k/ac;->b(J)J

    move-result-wide v3

    :cond_2
    move-wide v9, v3

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v0, p1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_3

    aget-object v1, p1, v11

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v9

    move v5, v8

    invoke-interface/range {v1 .. v7}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/anythink/expressad/exoplayer/e/a/e$b;

    invoke-direct {v0, v1, v2, v8}, Lcom/anythink/expressad/exoplayer/e/a/e$b;-><init>(JI)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    :cond_5
    :goto_2
    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;ILcom/anythink/expressad/exoplayer/e/a/l;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result p1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/e/a/a;->b(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v1

    iget v2, p2, Lcom/anythink/expressad/exoplayer/e/a/l;->f:I

    if-ne v1, v2, :cond_1

    iget-object v2, p2, Lcom/anythink/expressad/exoplayer/e/a/l;->n:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/exoplayer/e/a/l;->a(I)V

    invoke-virtual {p2, p0}, Lcom/anythink/expressad/exoplayer/e/a/l;->a(Lcom/anythink/expressad/exoplayer/k/s;)V

    return-void

    :cond_1
    new-instance p0, Lcom/anythink/expressad/exoplayer/t;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Length mismatch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/anythink/expressad/exoplayer/e/a/l;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/anythink/expressad/exoplayer/t;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/e/a/l;)V
    .locals 5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v1

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/a;->b(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v0

    iget-wide v1, p1, Lcom/anythink/expressad/exoplayer/e/a/l;->d:J

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lcom/anythink/expressad/exoplayer/e/a/l;->d:J

    return-void

    :cond_2
    new-instance p0, Lcom/anythink/expressad/exoplayer/t;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected saio entry count: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/e/a/l;[B)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p2, v0, v1}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    sget-object v0, Lcom/anythink/expressad/exoplayer/e/a/e;->l:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v1, p1}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/k/s;ILcom/anythink/expressad/exoplayer/e/a/l;)V

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/k/s;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/e/a/l;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v5

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/e;->k:I

    if-eq v5, v6, :cond_0

    return-void

    :cond_0
    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    if-ne v0, v7, :cond_a

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    if-eq v3, v6, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/anythink/expressad/exoplayer/t;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    invoke-virtual {v1, v5}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v3

    const-wide/16 v8, 0x1

    cmp-long v0, v3, v8

    if-nez v0, :cond_9

    invoke-virtual {v1, v7}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v0

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v13, v3, 0x4

    and-int/lit8 v14, v0, 0xf

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v7, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v11

    const/16 v0, 0x10

    new-array v12, v0, [B

    invoke-virtual {v1, v12, v3, v0}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    const/4 v0, 0x0

    if-nez v11, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/k/s;->d()I

    move-result v0

    new-array v4, v0, [B

    invoke-virtual {v1, v4, v3, v0}, Lcom/anythink/expressad/exoplayer/k/s;->a([BII)V

    move-object v15, v4

    goto :goto_2

    :cond_8
    move-object v15, v0

    :goto_2
    iput-boolean v7, v2, Lcom/anythink/expressad/exoplayer/e/a/l;->m:Z

    new-instance v0, Lcom/anythink/expressad/exoplayer/e/a/k;

    const/4 v9, 0x1

    move-object v8, v0

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v15}, Lcom/anythink/expressad/exoplayer/e/a/k;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v2, Lcom/anythink/expressad/exoplayer/e/a/l;->o:Lcom/anythink/expressad/exoplayer/e/a/k;

    return-void

    :cond_9
    new-instance v0, Lcom/anythink/expressad/exoplayer/t;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/anythink/expressad/exoplayer/t;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(I)Z
    .locals 1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->X:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->W:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->H:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->F:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->Y:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->B:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->C:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->D:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->E:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->Z:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->ah:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->ai:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->am:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->al:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->aj:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->ak:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->V:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->S:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->aL:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/k/s;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/k/s;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/anythink/expressad/exoplayer/e/a/c;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v3

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lcom/anythink/expressad/exoplayer/e/a/c;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/anythink/expressad/exoplayer/e/a/c;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/util/SparseArray;I)Lcom/anythink/expressad/exoplayer/e/a/e$c;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/anythink/expressad/exoplayer/e/a/e$c;",
            ">;I)",
            "Lcom/anythink/expressad/exoplayer/e/a/e$c;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method private b()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/anythink/expressad/exoplayer/e/m;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->F:Lcom/anythink/expressad/exoplayer/e/m;

    if-eqz v3, :cond_0

    aput-object v3, v0, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->s:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lcom/anythink/expressad/exoplayer/e/g;->a(II)Lcom/anythink/expressad/exoplayer/e/m;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/anythink/expressad/exoplayer/e/m;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    sget-object v6, Lcom/anythink/expressad/exoplayer/e/a/e;->m:Lcom/anythink/expressad/exoplayer/m;

    invoke-interface {v5, v6}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/m;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->X:[Lcom/anythink/expressad/exoplayer/e/m;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/anythink/expressad/exoplayer/e/m;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->X:[Lcom/anythink/expressad/exoplayer/e/m;

    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->X:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Lcom/anythink/expressad/exoplayer/e/g;->a(II)Lcom/anythink/expressad/exoplayer/e/m;

    move-result-object v0

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->u:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/m;

    invoke-interface {v0, v3}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/m;)V

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->X:[Lcom/anythink/expressad/exoplayer/e/m;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private b(J)V
    .locals 13

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/e/a/e$b;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e$b;->b:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e$b;->a:J

    add-long/2addr v1, p1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/anythink/expressad/exoplayer/k/ac;->b(J)J

    move-result-wide v1

    :cond_1
    iget-object v10, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    const/4 v6, 0x1

    iget v7, v0, Lcom/anythink/expressad/exoplayer/e/a/e$b;->b:I

    iget v8, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->t:Lcom/anythink/expressad/exoplayer/e/a/j;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Lcom/anythink/expressad/exoplayer/k/a;->b(ZLjava/lang/Object;)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->v:Lcom/anythink/expressad/exoplayer/d/e;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aW:Ljava/util/List;

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Ljava/util/List;)Lcom/anythink/expressad/exoplayer/d/e;

    move-result-object v2

    :goto_1
    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->R:I

    invoke-virtual {v1, v5}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->e(I)Lcom/anythink/expressad/exoplayer/e/a/a$a;

    move-result-object v5

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v8, v5, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aW:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move-wide v13, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    iget-object v7, v5, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aW:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anythink/expressad/exoplayer/e/a/a$b;

    iget v9, v7, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v10, Lcom/anythink/expressad/exoplayer/e/a/a;->D:I

    if-ne v9, v10, :cond_2

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/e/a/e;->b(Lcom/anythink/expressad/exoplayer/k/s;)Landroid/util/Pair;

    move-result-object v7

    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/anythink/expressad/exoplayer/e/a/c;

    invoke-virtual {v12, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    sget v10, Lcom/anythink/expressad/exoplayer/e/a/a;->S:I

    if-ne v9, v10, :cond_3

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/e/a/e;->c(Lcom/anythink/expressad/exoplayer/k/s;)J

    move-result-wide v9

    move-wide v13, v9

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_8

    iget-object v5, v1, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aX:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget v6, v5, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->I:I

    if-ne v6, v7, :cond_6

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->H:I

    invoke-virtual {v1, v6}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v6

    iget v7, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->s:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    const/16 v17, 0x0

    move-wide v7, v13

    move-object v9, v2

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/anythink/expressad/exoplayer/e/a/b;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/a/a$b;JLcom/anythink/expressad/exoplayer/d/e;ZZ)Lcom/anythink/expressad/exoplayer/e/a/j;

    move-result-object v5

    if-eqz v5, :cond_7

    iget v6, v5, Lcom/anythink/expressad/exoplayer/e/a/j;->c:I

    invoke-virtual {v15, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_6
    move/from16 v18, v10

    move/from16 v16, v11

    :cond_7
    :goto_6
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v16

    goto :goto_4

    :cond_8
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    :goto_7
    if-ge v4, v1, :cond_9

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/e/a/j;

    new-instance v3, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    iget v6, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->d:I

    invoke-interface {v5, v4, v6}, Lcom/anythink/expressad/exoplayer/e/g;->a(II)Lcom/anythink/expressad/exoplayer/e/m;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/anythink/expressad/exoplayer/e/a/e$c;-><init>(Lcom/anythink/expressad/exoplayer/e/m;)V

    iget v5, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->c:I

    invoke-static {v12, v5}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Landroid/util/SparseArray;I)Lcom/anythink/expressad/exoplayer/e/a/c;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a(Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/e/a/c;)V

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    iget v6, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->c:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->O:J

    iget-wide v2, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->g:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->O:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/e/a/e;->b()V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/e/g;->c_()V

    return-void

    :cond_a
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    :goto_9
    if-ge v4, v1, :cond_c

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/e/a/j;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    iget v5, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->c:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget v5, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->c:I

    invoke-static {v12, v5}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Landroid/util/SparseArray;I)Lcom/anythink/expressad/exoplayer/e/a/c;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a(Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/e/a/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    return-void
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/e/a/a$a;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/e/a/a$a;",
            "Landroid/util/SparseArray<",
            "Lcom/anythink/expressad/exoplayer/e/a/e$c;",
            ">;I[B)V"
        }
    .end annotation

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->C:I

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/k/s;Landroid/util/SparseArray;)Lcom/anythink/expressad/exoplayer/e/a/e$c;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->s:J

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a()V

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->B:I

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v1

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/e;->d(Lcom/anythink/expressad/exoplayer/k/s;)J

    move-result-wide v1

    :cond_1
    invoke-static {p0, p1, v1, v2, p2}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/a/e$c;JI)V

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget-object p2, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->a:Lcom/anythink/expressad/exoplayer/e/a/c;

    iget p2, p2, Lcom/anythink/expressad/exoplayer/e/a/c;->a:I

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/e/a/j;->a(I)Lcom/anythink/expressad/exoplayer/e/a/k;

    move-result-object p1

    sget p2, Lcom/anythink/expressad/exoplayer/e/a/a;->ah:I

    invoke-virtual {p0, p2}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-static {p1, p2, v0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/e/a/k;Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/e/a/l;)V

    :cond_2
    sget p2, Lcom/anythink/expressad/exoplayer/e/a/a;->ai:I

    invoke-virtual {p0, p2}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-static {p2, v0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/e/a/l;)V

    :cond_3
    sget p2, Lcom/anythink/expressad/exoplayer/e/a/a;->am:I

    invoke-virtual {p0, p2}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-static {p2, v1, v0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/k/s;ILcom/anythink/expressad/exoplayer/e/a/l;)V

    :cond_4
    sget p2, Lcom/anythink/expressad/exoplayer/e/a/a;->aj:I

    invoke-virtual {p0, p2}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object p2

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->ak:I

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v2

    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    iget-object p2, p2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/e/a/k;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v2, p1, v0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/k/s;Ljava/lang/String;Lcom/anythink/expressad/exoplayer/e/a/l;)V

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aW:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_8

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aW:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/exoplayer/e/a/a$b;

    iget v2, p2, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->al:I

    if-ne v2, v3, :cond_7

    iget-object p2, p2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-static {p2, v0, p3}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/e/a/l;[B)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/k/s;Lcom/anythink/expressad/exoplayer/e/a/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/k/s;ILcom/anythink/expressad/exoplayer/e/a/l;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->G:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->I:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->J:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->K:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->L:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->P:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->Q:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->R:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->U:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private b(Lcom/anythink/expressad/exoplayer/e/f;)Z
    .locals 8

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-interface {p1, v0, v2, v1, v3}, Lcom/anythink/expressad/exoplayer/e/f;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iput v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    :cond_1
    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-interface {p1, v0, v1, v1}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v4

    :goto_0
    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->d()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aV:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    goto :goto_0

    :cond_4
    :goto_1
    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_12

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v4

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->P:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_5

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iput-wide v4, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->b:J

    iput-wide v4, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->d:J

    iput-wide v4, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->c:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->m:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_7

    iput-object v7, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->L:J

    iget-boolean p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->Y:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    new-instance v0, Lcom/anythink/expressad/exoplayer/e/k$b;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->O:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/anythink/expressad/exoplayer/e/k$b;-><init>(JJ)V

    invoke-interface {p1, v0}, Lcom/anythink/expressad/exoplayer/e/g;->a(Lcom/anythink/expressad/exoplayer/e/k;)V

    iput-boolean v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->Y:Z

    :cond_6
    const/4 p1, 0x2

    iput p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    return v3

    :cond_7
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->G:I

    if-eq v0, v4, :cond_9

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->I:I

    if-eq v0, v4, :cond_9

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->J:I

    if-eq v0, v4, :cond_9

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->K:I

    if-eq v0, v4, :cond_9

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->L:I

    if-eq v0, v4, :cond_9

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->P:I

    if-eq v0, v4, :cond_9

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->Q:I

    if-eq v0, v4, :cond_9

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->R:I

    if-eq v0, v4, :cond_9

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->U:I

    if-ne v0, v4, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-eqz v4, :cond_b

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    invoke-direct {v2, v4, v0, v1}, Lcom/anythink/expressad/exoplayer/e/a/a$a;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    iget p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_a

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(J)V

    goto/16 :goto_8

    :cond_a
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a()V

    goto/16 :goto_8

    :cond_b
    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->X:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->W:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->H:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->F:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->Y:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->B:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->C:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->T:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->D:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->E:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->Z:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->ah:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->ai:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->am:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->al:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->aj:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->ak:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->V:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->S:I

    if-eq v0, p1, :cond_d

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->aL:I

    if-ne v0, p1, :cond_c

    goto :goto_5

    :cond_c
    const/4 p1, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 p1, 0x1

    :goto_6
    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_10

    iget p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    if-ne p1, v1, :cond_f

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_e

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->K:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_e
    new-instance p1, Lcom/anythink/expressad/exoplayer/t;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Lcom/anythink/expressad/exoplayer/t;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_11

    iput-object v7, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->K:Lcom/anythink/expressad/exoplayer/k/s;

    :goto_7
    iput v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    :goto_8
    return v3

    :cond_11
    new-instance p1, Lcom/anythink/expressad/exoplayer/t;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Lcom/anythink/expressad/exoplayer/t;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c(Lcom/anythink/expressad/exoplayer/k/s;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method private c(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->s:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->C:[B

    invoke-static {p1, v0, v1, v2}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Landroid/util/SparseArray;I[B)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->v:Lcom/anythink/expressad/exoplayer/d/e;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aW:Ljava/util/List;

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(Ljava/util/List;)Lcom/anythink/expressad/exoplayer/d/e;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-virtual {v3, p1}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a(Lcom/anythink/expressad/exoplayer/d/e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->N:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->N:J

    invoke-virtual {v1, v5, v6}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iput-wide v3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->N:J

    :cond_3
    return-void
.end method

.method private c(Lcom/anythink/expressad/exoplayer/e/f;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    long-to-int v3, v2

    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    sub-int/2addr v3, v2

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->K:Lcom/anythink/expressad/exoplayer/k/s;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    const/16 v4, 0x8

    invoke-interface {v1, v2, v4, v3}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    new-instance v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->K:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-direct {v2, v3, v5}, Lcom/anythink/expressad/exoplayer/e/a/a$b;-><init>(ILcom/anythink/expressad/exoplayer/k/s;)V

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v5

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->a(Lcom/anythink/expressad/exoplayer/e/a/a$b;)V

    goto/16 :goto_5

    :cond_0
    iget v3, v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->F:I

    const/4 v8, 0x0

    if-ne v3, v7, :cond_4

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v2, v4}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    invoke-static {v3}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v15

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v11

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v11

    :goto_0
    add-long/2addr v5, v11

    move-wide/from16 v17, v9

    const-wide/32 v11, 0xf4240

    move-wide/from16 v9, v17

    move-wide v13, v15

    invoke-static/range {v9 .. v14}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v19

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v3

    new-array v7, v3, [I

    new-array v13, v3, [J

    new-array v14, v3, [J

    new-array v11, v3, [J

    move-wide/from16 v9, v19

    :goto_1
    if-ge v8, v3, :cond_3

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v12

    const/high16 v21, -0x80000000

    and-int v21, v12, v21

    if-nez v21, :cond_2

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v21

    const v23, 0x7fffffff

    and-int v12, v12, v23

    aput v12, v7, v8

    aput-wide v5, v13, v8

    aput-wide v9, v11, v8

    add-long v17, v17, v21

    const-wide/32 v21, 0xf4240

    move-wide/from16 v9, v17

    move-object v4, v11

    move-wide/from16 v11, v21

    move/from16 v21, v3

    move-object v3, v13

    move-object v1, v14

    move-wide v13, v15

    invoke-static/range {v9 .. v14}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v9

    aget-wide v11, v4, v8

    sub-long v11, v9, v11

    aput-wide v11, v1, v8

    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    aget v12, v7, v8

    int-to-long v12, v12

    add-long/2addr v5, v12

    add-int/lit8 v8, v8, 0x1

    move-object v14, v1

    move-object v13, v3

    move-object v11, v4

    move/from16 v3, v21

    const/4 v4, 0x4

    move-object/from16 v1, p1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v4, v11

    move-object v3, v13

    move-object v1, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v5, Lcom/anythink/expressad/exoplayer/e/a;

    invoke-direct {v5, v7, v3, v1, v4}, Lcom/anythink/expressad/exoplayer/e/a;-><init>([I[J[J[J)V

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->P:J

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v2, v1}, Lcom/anythink/expressad/exoplayer/e/g;->a(Lcom/anythink/expressad/exoplayer/e/k;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Y:Z

    goto/16 :goto_4

    :cond_4
    sget v1, Lcom/anythink/expressad/exoplayer/e/a/a;->aL:I

    if-ne v3, v1, :cond_9

    iget-object v1, v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    if-eqz v2, :cond_9

    array-length v2, v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v13

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v14}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v4

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v7, v6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_6

    aget-object v10, v6, v9

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-interface {v10, v1, v3}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->P:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v1, v6

    if-eqz v9, :cond_8

    add-long/2addr v1, v4

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v1, v2}, Lcom/anythink/expressad/exoplayer/k/ac;->b(J)J

    move-result-wide v1

    :cond_7
    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v5, v4

    :goto_3
    if-ge v8, v5, :cond_9

    aget-object v9, v4, v8

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v10, v1

    move v13, v3

    invoke-interface/range {v9 .. v15}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/anythink/expressad/exoplayer/e/a/e$b;

    invoke-direct {v2, v4, v5, v3}, Lcom/anythink/expressad/exoplayer/e/a/e$b;-><init>(JI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    :cond_9
    :goto_4
    move-object/from16 v1, p1

    goto :goto_5

    :cond_a
    invoke-interface {v1, v3}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    :goto_5
    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(J)V

    return-void
.end method

.method private static d(Lcom/anythink/expressad/exoplayer/k/s;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method private d(Lcom/anythink/expressad/exoplayer/e/f;)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-boolean v7, v6, Lcom/anythink/expressad/exoplayer/e/a/l;->r:Z

    if-eqz v7, :cond_0

    iget-wide v6, v6, Lcom/anythink/expressad/exoplayer/e/a/l;->d:J

    cmp-long v8, v6, v3

    if-gez v8, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    move-wide v3, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    return-void

    :cond_2
    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v0, v3

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    iget-object v0, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->q:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->p:I

    invoke-interface {p1, v2, v1, v3}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->q:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iput-boolean v1, v0, Lcom/anythink/expressad/exoplayer/e/a/l;->r:Z

    return-void

    :cond_3
    new-instance p1, Lcom/anythink/expressad/exoplayer/t;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(Lcom/anythink/expressad/exoplayer/e/f;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v3, :cond_9

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v10

    move-object v12, v5

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_1

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget v14, v13, Lcom/anythink/expressad/exoplayer/e/a/e$c;->g:I

    iget-object v15, v13, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget v4, v15, Lcom/anythink/expressad/exoplayer/e/a/l;->e:I

    if-eq v14, v4, :cond_0

    iget-object v4, v15, Lcom/anythink/expressad/exoplayer/e/a/l;->g:[J

    aget-wide v14, v4, v14

    cmp-long v4, v14, v8

    if-gez v4, :cond_0

    move-object v12, v13

    move-wide v8, v14

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    if-nez v12, :cond_3

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->L:J

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_2

    invoke-interface {v1, v3}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a()V

    return v7

    :cond_2
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v2, v12, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/l;->g:[J

    iget v4, v12, Lcom/anythink/expressad/exoplayer/e/a/e$c;->g:I

    aget-wide v8, v2, v4

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-int v2, v8

    if-gez v2, :cond_4

    const-string v2, "FragmentedMp4Extractor"

    const-string v4, "Ignoring negative offset to sample data."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_4
    invoke-interface {v1, v2}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    iput-object v12, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    :cond_5
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-object v4, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/e/a/l;->i:[I

    iget v8, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    aget v4, v4, v8

    iput v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    iget v9, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->h:I

    if-ge v8, v9, :cond_7

    invoke-interface {v1, v4}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a(Lcom/anythink/expressad/exoplayer/e/a/e$c;)V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b()Z

    move-result v1

    if-nez v1, :cond_6

    iput-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    :cond_6
    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    return v6

    :cond_7
    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->i:I

    if-ne v2, v6, :cond_8

    const/16 v2, 0x8

    sub-int/2addr v4, v2

    iput v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    invoke-interface {v1, v2}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    :cond_8
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c()I

    move-result v2

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    const/4 v2, 0x4

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    iput v7, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    :cond_9
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-object v4, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v8, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget-object v9, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a:Lcom/anythink/expressad/exoplayer/e/m;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    invoke-virtual {v4, v2}, Lcom/anythink/expressad/exoplayer/e/a/l;->b(I)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    if-eqz v12, :cond_a

    invoke-virtual {v12, v10, v11}, Lcom/anythink/expressad/exoplayer/k/ac;->b(J)J

    move-result-wide v10

    :cond_a
    move-wide/from16 v16, v10

    iget v10, v8, Lcom/anythink/expressad/exoplayer/e/a/j;->l:I

    if-eqz v10, :cond_e

    iget-object v11, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->y:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v11, v11, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    aput-byte v7, v11, v7

    aput-byte v7, v11, v6

    const/4 v12, 0x2

    aput-byte v7, v11, v12

    add-int/lit8 v12, v10, 0x1

    const/4 v13, 0x4

    rsub-int/lit8 v10, v10, 0x4

    :goto_1
    iget v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    if-ge v13, v14, :cond_f

    iget v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    if-nez v13, :cond_c

    invoke-interface {v1, v11, v10, v12}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->y:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v13, v7}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->y:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v13}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v13

    sub-int/2addr v13, v6

    iput v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->x:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v13, v7}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->x:Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v14, 0x4

    invoke-interface {v9, v13, v14}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->y:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-interface {v9, v13, v6}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->X:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v13, v13

    if-lez v13, :cond_b

    iget-object v13, v8, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    iget-object v13, v13, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    aget-byte v15, v11, v14

    invoke-static {v13, v15}, Lcom/anythink/expressad/exoplayer/k/p;->a(Ljava/lang/String;B)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    goto :goto_2

    :cond_b
    const/4 v13, 0x0

    :goto_2
    iput-boolean v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->U:Z

    iget v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    add-int/lit8 v13, v13, 0x5

    iput v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    add-int/2addr v13, v10

    iput v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    goto :goto_1

    :cond_c
    const/4 v14, 0x4

    iget-boolean v15, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->U:Z

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v15, v13}, Lcom/anythink/expressad/exoplayer/k/s;->a(I)V

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v13, v13, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v15, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    invoke-interface {v1, v13, v7, v15}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget-object v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    iget v15, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    invoke-interface {v9, v13, v15}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    iget v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v14, v15, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-virtual {v15}, Lcom/anythink/expressad/exoplayer/k/s;->b()I

    move-result v15

    invoke-static {v14, v15}, Lcom/anythink/expressad/exoplayer/k/p;->a([BI)I

    move-result v14

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v6, v8, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    const-string v3, "video/hevc"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v15, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v3, v14}, Lcom/anythink/expressad/exoplayer/k/s;->b(I)V

    goto :goto_3

    :cond_d
    invoke-interface {v9, v1, v13, v7}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I

    move-result v13

    :goto_3
    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    add-int/2addr v3, v13

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    sub-int/2addr v3, v13

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    const/4 v3, 0x3

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_e
    :goto_4
    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    if-ge v3, v6, :cond_f

    sub-int/2addr v6, v3

    invoke-interface {v9, v1, v6, v7}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I

    move-result v3

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    goto :goto_4

    :cond_f
    iget-object v1, v4, Lcom/anythink/expressad/exoplayer/e/a/l;->l:[Z

    aget-boolean v1, v1, v2

    iget-boolean v2, v4, Lcom/anythink/expressad/exoplayer/e/a/l;->m:Z

    if-eqz v2, :cond_11

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iget-object v2, v4, Lcom/anythink/expressad/exoplayer/e/a/l;->o:Lcom/anythink/expressad/exoplayer/e/a/k;

    if-eqz v2, :cond_10

    goto :goto_5

    :cond_10
    iget-object v2, v4, Lcom/anythink/expressad/exoplayer/e/a/l;->a:Lcom/anythink/expressad/exoplayer/e/a/c;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/e/a/c;->a:I

    invoke-virtual {v8, v2}, Lcom/anythink/expressad/exoplayer/e/a/j;->a(I)Lcom/anythink/expressad/exoplayer/e/a/k;

    move-result-object v2

    :goto_5
    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/k;->c:Lcom/anythink/expressad/exoplayer/e/m$a;

    move v12, v1

    move-object v15, v2

    goto :goto_6

    :cond_11
    move v12, v1

    move-object v15, v5

    :goto_6
    iget v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    const/4 v14, 0x0

    move-wide/from16 v10, v16

    invoke-interface/range {v9 .. v15}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    :cond_12
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/e/a/e$b;

    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    iget v3, v1, Lcom/anythink/expressad/exoplayer/e/a/e$b;->b:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    iget-wide v2, v1, Lcom/anythink/expressad/exoplayer/e/a/e$b;->a:J

    add-long v2, v16, v2

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    if-eqz v4, :cond_13

    invoke-virtual {v4, v2, v3}, Lcom/anythink/expressad/exoplayer/k/ac;->b(J)J

    move-result-wide v2

    :cond_13
    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v6, v4

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v6, :cond_12

    aget-object v8, v4, v15

    const/4 v11, 0x1

    iget v12, v1, Lcom/anythink/expressad/exoplayer/e/a/e$b;->b:I

    iget v13, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    const/4 v14, 0x0

    move-wide v9, v2

    invoke-interface/range {v8 .. v14}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_14
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b()Z

    move-result v1

    if-nez v1, :cond_15

    iput-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    :cond_15
    const/4 v1, 0x3

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/e/f;Lcom/anythink/expressad/exoplayer/e/j;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :cond_0
    :goto_0
    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v2, :cond_28

    if-eq v2, v6, :cond_1c

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x3

    if-eq v2, v3, :cond_17

    if-ne v2, v11, :cond_a

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v12

    move-object v14, v4

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget v3, v15, Lcom/anythink/expressad/exoplayer/e/a/e$c;->g:I

    iget-object v7, v15, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget v8, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->e:I

    if-eq v3, v8, :cond_1

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->g:[J

    aget-wide v18, v7, v3

    cmp-long v3, v18, v9

    if-gez v3, :cond_1

    move-object v14, v15

    move-wide/from16 v9, v18

    :cond_1
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    if-nez v14, :cond_4

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->L:J

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_3

    invoke-interface {v1, v3}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a()V

    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_3
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v2, v14, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/l;->g:[J

    iget v3, v14, Lcom/anythink/expressad/exoplayer/e/a/e$c;->g:I

    aget-wide v7, v2, v3

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v2

    sub-long/2addr v7, v2

    long-to-int v2, v7

    if-gez v2, :cond_5

    const-string v2, "FragmentedMp4Extractor"

    const-string v3, "Ignoring negative offset to sample data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_5
    invoke-interface {v1, v2}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    iput-object v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    :cond_6
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/e/a/l;->i:[I

    iget v7, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    aget v3, v3, v7

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    iget v8, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->h:I

    if-ge v7, v8, :cond_8

    invoke-interface {v1, v3}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a(Lcom/anythink/expressad/exoplayer/e/a/e$c;)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b()Z

    move-result v2

    if-nez v2, :cond_7

    iput-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    :cond_7
    iput v11, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    goto/16 :goto_9

    :cond_8
    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->i:I

    if-ne v2, v6, :cond_9

    add-int/lit8 v3, v3, -0x8

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    invoke-interface {v1, v5}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    :cond_9
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c()I

    move-result v2

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    const/4 v2, 0x4

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    :cond_a
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v5, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->c:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget-object v7, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a:Lcom/anythink/expressad/exoplayer/e/m;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/e/a/e$c;->e:I

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/exoplayer/e/a/l;->b(I)J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    mul-long v8, v8, v12

    iget-object v10, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    if-eqz v10, :cond_b

    invoke-virtual {v10, v8, v9}, Lcom/anythink/expressad/exoplayer/k/ac;->b(J)J

    move-result-wide v8

    :cond_b
    iget v10, v5, Lcom/anythink/expressad/exoplayer/e/a/j;->l:I

    if-eqz v10, :cond_f

    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->y:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v12, v12, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    const/4 v13, 0x0

    aput-byte v13, v12, v13

    aput-byte v13, v12, v6

    const/4 v14, 0x2

    aput-byte v13, v12, v14

    add-int/lit8 v13, v10, 0x1

    rsub-int/lit8 v10, v10, 0x4

    :goto_2
    iget v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v15, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    if-ge v14, v15, :cond_10

    iget v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    if-nez v14, :cond_d

    invoke-interface {v1, v12, v10, v13}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->y:Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->y:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v14}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v14

    sub-int/2addr v14, v6

    iput v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->x:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v14, v15}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->x:Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v15, 0x4

    invoke-interface {v7, v14, v15}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->y:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-interface {v7, v14, v6}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->X:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v14, v14

    if-lez v14, :cond_c

    iget-object v14, v5, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    iget-object v14, v14, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    aget-byte v6, v12, v15

    invoke-static {v14, v6}, Lcom/anythink/expressad/exoplayer/k/p;->a(Ljava/lang/String;B)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_3

    :cond_c
    const/4 v6, 0x0

    :goto_3
    iput-boolean v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->U:Z

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    add-int/2addr v6, v10

    iput v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    const/4 v6, 0x1

    goto :goto_2

    :cond_d
    iget-boolean v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->U:Z

    if-eqz v6, :cond_e

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v6, v14}, Lcom/anythink/expressad/exoplayer/k/s;->a(I)V

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    const/4 v15, 0x0

    invoke-interface {v1, v6, v15, v14}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    iget v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    invoke-interface {v7, v6, v14}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v15, v14, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-virtual {v14}, Lcom/anythink/expressad/exoplayer/k/s;->b()I

    move-result v14

    invoke-static {v15, v14}, Lcom/anythink/expressad/exoplayer/k/p;->a([BI)I

    move-result v14

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v11, v5, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    iget-object v11, v11, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    const-string v4, "video/hevc"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v15, v4}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->z:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v4, v14}, Lcom/anythink/expressad/exoplayer/k/s;->b(I)V

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    invoke-interface {v7, v1, v14, v4}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I

    move-result v6

    :goto_4
    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    sub-int/2addr v4, v6

    iput v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->T:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v11, 0x3

    goto/16 :goto_2

    :cond_f
    :goto_5
    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    if-ge v4, v6, :cond_10

    sub-int/2addr v6, v4

    const/4 v4, 0x0

    invoke-interface {v7, v1, v6, v4}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I

    move-result v6

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    add-int/2addr v4, v6

    iput v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->S:I

    goto :goto_5

    :cond_10
    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/e/a/l;->l:[Z

    aget-boolean v2, v4, v2

    iget-boolean v4, v3, Lcom/anythink/expressad/exoplayer/e/a/l;->m:Z

    if-eqz v4, :cond_12

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v2, v4

    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/e/a/l;->o:Lcom/anythink/expressad/exoplayer/e/a/k;

    if-eqz v4, :cond_11

    goto :goto_6

    :cond_11
    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/e/a/l;->a:Lcom/anythink/expressad/exoplayer/e/a/c;

    iget v3, v3, Lcom/anythink/expressad/exoplayer/e/a/c;->a:I

    invoke-virtual {v5, v3}, Lcom/anythink/expressad/exoplayer/e/a/j;->a(I)Lcom/anythink/expressad/exoplayer/e/a/k;

    move-result-object v4

    :goto_6
    iget-object v3, v4, Lcom/anythink/expressad/exoplayer/e/a/k;->c:Lcom/anythink/expressad/exoplayer/e/m$a;

    move/from16 v21, v2

    move-object/from16 v24, v3

    goto :goto_7

    :cond_12
    move/from16 v21, v2

    const/16 v24, 0x0

    :goto_7
    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->R:I

    const/16 v23, 0x0

    move-object/from16 v18, v7

    move-wide/from16 v19, v8

    move/from16 v22, v2

    invoke-interface/range {v18 .. v24}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    :cond_13
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/e/a/e$b;

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    iget v4, v2, Lcom/anythink/expressad/exoplayer/e/a/e$b;->b:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    iget-wide v3, v2, Lcom/anythink/expressad/exoplayer/e/a/e$b;->a:J

    add-long/2addr v3, v8

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    if-eqz v5, :cond_14

    invoke-virtual {v5, v3, v4}, Lcom/anythink/expressad/exoplayer/k/ac;->b(J)J

    move-result-wide v3

    :cond_14
    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_13

    aget-object v17, v5, v7

    const/16 v20, 0x1

    iget v10, v2, Lcom/anythink/expressad/exoplayer/e/a/e$b;->b:I

    iget v11, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    const/16 v23, 0x0

    move-wide/from16 v18, v3

    move/from16 v21, v10

    move/from16 v22, v11

    invoke-interface/range {v17 .. v23}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_15
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b()Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    :cond_16
    const/4 v2, 0x3

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    const/4 v6, 0x1

    :goto_9
    if-eqz v6, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_17
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v3, v2, :cond_19

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-boolean v6, v5, Lcom/anythink/expressad/exoplayer/e/a/l;->r:Z

    if-eqz v6, :cond_18

    iget-wide v5, v5, Lcom/anythink/expressad/exoplayer/e/a/l;->d:J

    cmp-long v7, v5, v9

    if-gez v7, :cond_18

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    move-wide v9, v5

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    if-nez v4, :cond_1a

    const/4 v2, 0x3

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    goto/16 :goto_0

    :cond_1a
    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v2

    sub-long/2addr v9, v2

    long-to-int v2, v9

    if-ltz v2, :cond_1b

    invoke-interface {v1, v2}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    iget-object v2, v4, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/e/a/l;->q:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v4, v2, Lcom/anythink/expressad/exoplayer/e/a/l;->p:I

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/e/a/l;->q:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v3, v5}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iput-boolean v5, v2, Lcom/anythink/expressad/exoplayer/e/a/l;->r:Z

    goto/16 :goto_0

    :cond_1b
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Offset to encryption data was negative."

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    long-to-int v3, v2

    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    sub-int/2addr v3, v2

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->K:Lcom/anythink/expressad/exoplayer/k/s;

    if-eqz v2, :cond_27

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-interface {v1, v2, v5, v3}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    new-instance v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->K:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-direct {v2, v3, v4}, Lcom/anythink/expressad/exoplayer/e/a/a$b;-><init>(ILcom/anythink/expressad/exoplayer/k/s;)V

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v3

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->a(Lcom/anythink/expressad/exoplayer/e/a/a$b;)V

    goto/16 :goto_10

    :cond_1d
    iget v6, v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v7, Lcom/anythink/expressad/exoplayer/e/a/a;->F:I

    if-ne v6, v7, :cond_21

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v2, v5}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v5

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/e/a/a;->a(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v13

    if-nez v5, :cond_1e

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v7

    goto :goto_b

    :cond_1e
    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v7

    :goto_b
    add-long/2addr v3, v7

    const-wide/32 v9, 0xf4240

    move-wide v7, v5

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v18

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->e()I

    move-result v15

    new-array v11, v15, [I

    new-array v12, v15, [J

    new-array v9, v15, [J

    new-array v10, v15, [J

    move-wide/from16 v20, v18

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v15, :cond_20

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v8

    const/high16 v16, -0x80000000

    and-int v16, v8, v16

    if-nez v16, :cond_1f

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v22

    const v16, 0x7fffffff

    and-int v8, v8, v16

    aput v8, v11, v7

    aput-wide v3, v12, v7

    aput-wide v20, v10, v7

    add-long v5, v5, v22

    const-wide/32 v20, 0xf4240

    move/from16 v16, v7

    move-wide v7, v5

    move-wide/from16 v22, v5

    move-object v5, v9

    move-object v6, v10

    move-wide/from16 v9, v20

    move-object v1, v12

    move/from16 p2, v15

    move-object v15, v11

    move-wide v11, v13

    invoke-static/range {v7 .. v12}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v20

    aget-wide v7, v6, v16

    sub-long v7, v20, v7

    aput-wide v7, v5, v16

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    aget v8, v15, v16

    int-to-long v8, v8

    add-long/2addr v3, v8

    add-int/lit8 v8, v16, 0x1

    move-object v12, v1

    move-object v9, v5

    move-object v10, v6

    move v7, v8

    move-object v11, v15

    move-wide/from16 v5, v22

    move-object/from16 v1, p1

    move/from16 v15, p2

    goto :goto_c

    :cond_1f
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Unhandled indirect reference"

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    move-object v5, v9

    move-object v6, v10

    move-object v15, v11

    move-object v1, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/anythink/expressad/exoplayer/e/a;

    invoke-direct {v3, v15, v1, v5, v6}, Lcom/anythink/expressad/exoplayer/e/a;-><init>([I[J[J[J)V

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->P:J

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/anythink/expressad/exoplayer/e/k;

    invoke-interface {v2, v1}, Lcom/anythink/expressad/exoplayer/e/g;->a(Lcom/anythink/expressad/exoplayer/e/k;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Y:Z

    goto/16 :goto_f

    :cond_21
    sget v1, Lcom/anythink/expressad/exoplayer/e/a/a;->aL:I

    if-ne v6, v1, :cond_26

    iget-object v1, v2, Lcom/anythink/expressad/exoplayer/e/a/a$b;->aV:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    if-eqz v2, :cond_26

    array-length v2, v2

    if-nez v2, :cond_22

    goto :goto_f

    :cond_22
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result v10

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->p()Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    invoke-static/range {v3 .. v8}, Lcom/anythink/expressad/exoplayer/k/af;->a(JJJ)J

    move-result-wide v3

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v6, :cond_23

    aget-object v8, v5, v7

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-interface {v8, v1, v10}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_23
    iget-wide v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->P:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v5

    if-eqz v7, :cond_25

    add-long/2addr v1, v3

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->A:Lcom/anythink/expressad/exoplayer/k/ac;

    if-eqz v3, :cond_24

    invoke-virtual {v3, v1, v2}, Lcom/anythink/expressad/exoplayer/k/ac;->b(J)J

    move-result-wide v1

    :cond_24
    iget-object v11, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->W:[Lcom/anythink/expressad/exoplayer/e/m;

    array-length v12, v11

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v12, :cond_26

    aget-object v3, v11, v13

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v1

    move v7, v10

    invoke-interface/range {v3 .. v9}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_25
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/anythink/expressad/exoplayer/e/a/e$b;

    invoke-direct {v2, v3, v4, v10}, Lcom/anythink/expressad/exoplayer/e/a/e$b;-><init>(JI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    :cond_26
    :goto_f
    move-object/from16 v1, p1

    goto :goto_10

    :cond_27
    invoke-interface {v1, v3}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    :goto_10
    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(J)V

    goto/16 :goto_0

    :cond_28
    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    if-nez v2, :cond_2a

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/anythink/expressad/exoplayer/e/f;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_29

    const/4 v6, 0x0

    goto/16 :goto_1b

    :cond_29
    iput v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v2, v4}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v2

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    :cond_2a
    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    const-wide/16 v6, 0x1

    cmp-long v4, v2, v6

    if-nez v4, :cond_2b

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-interface {v1, v2, v5, v5}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v2

    :goto_11
    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    goto :goto_12

    :cond_2b
    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-nez v4, :cond_2d

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->d()J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v4, v2, v6

    if-nez v4, :cond_2c

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget-wide v2, v2, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aV:J

    :cond_2c
    cmp-long v4, v2, v6

    if-eqz v4, :cond_2d

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    goto :goto_11

    :cond_2d
    :goto_12
    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    int-to-long v6, v4

    cmp-long v4, v2, v6

    if-ltz v4, :cond_3b

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v2

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    int-to-long v6, v4

    sub-long/2addr v2, v6

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->P:I

    if-ne v4, v6, :cond_2e

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v4, :cond_2e

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/e/a/e$c;->b:Lcom/anythink/expressad/exoplayer/e/a/l;

    iput-wide v2, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->b:J

    iput-wide v2, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->d:J

    iput-wide v2, v7, Lcom/anythink/expressad/exoplayer/e/a/l;->c:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_2e
    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    sget v6, Lcom/anythink/expressad/exoplayer/e/a/a;->m:I

    if-ne v4, v6, :cond_30

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Q:Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->L:J

    iget-boolean v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Y:Z

    if-nez v4, :cond_2f

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    new-instance v5, Lcom/anythink/expressad/exoplayer/e/k$b;

    iget-wide v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->O:J

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/anythink/expressad/exoplayer/e/k$b;-><init>(JJ)V

    invoke-interface {v4, v5}, Lcom/anythink/expressad/exoplayer/e/g;->a(Lcom/anythink/expressad/exoplayer/e/k;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->Y:Z

    :cond_2f
    const/4 v2, 0x2

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    :goto_14
    const/4 v2, 0x1

    goto/16 :goto_1a

    :cond_30
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->G:I

    if-eq v4, v2, :cond_32

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->I:I

    if-eq v4, v2, :cond_32

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->J:I

    if-eq v4, v2, :cond_32

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->K:I

    if-eq v4, v2, :cond_32

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->L:I

    if-eq v4, v2, :cond_32

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->P:I

    if-eq v4, v2, :cond_32

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->Q:I

    if-eq v4, v2, :cond_32

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->R:I

    if-eq v4, v2, :cond_32

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->U:I

    if-ne v4, v2, :cond_31

    goto :goto_15

    :cond_31
    const/4 v2, 0x0

    goto :goto_16

    :cond_32
    :goto_15
    const/4 v2, 0x1

    :goto_16
    if-eqz v2, :cond_34

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->H:I

    invoke-direct {v5, v6, v2, v3}, Lcom/anythink/expressad/exoplayer/e/a/a$a;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_33

    invoke-direct {v0, v2, v3}, Lcom/anythink/expressad/exoplayer/e/a/e;->a(J)V

    goto :goto_14

    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a()V

    goto :goto_14

    :cond_34
    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->X:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->W:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->H:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->F:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->Y:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->B:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->C:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->T:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->D:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->E:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->Z:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->ah:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->ai:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->am:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->al:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aj:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->ak:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->V:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->S:I

    if-eq v4, v2, :cond_36

    sget v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aL:I

    if-ne v4, v2, :cond_35

    goto :goto_17

    :cond_35
    const/4 v2, 0x0

    goto :goto_18

    :cond_36
    :goto_17
    const/4 v2, 0x1

    :goto_18
    const-wide/32 v3, 0x7fffffff

    if-eqz v2, :cond_39

    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->J:I

    if-ne v2, v5, :cond_38

    iget-wide v6, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    cmp-long v2, v6, v3

    if-gtz v2, :cond_37

    new-instance v2, Lcom/anythink/expressad/exoplayer/k/s;

    long-to-int v3, v6

    invoke-direct {v2, v3}, Lcom/anythink/expressad/exoplayer/k/s;-><init>(I)V

    iput-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->K:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->B:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_19

    :cond_37
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->I:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_3a

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->K:Lcom/anythink/expressad/exoplayer/k/s;

    :goto_19
    const/4 v2, 0x1

    iput v2, v0, Lcom/anythink/expressad/exoplayer/e/a/e;->G:I

    :goto_1a
    const/4 v6, 0x1

    :goto_1b
    if-nez v6, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_3a
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(JJ)V
    .locals 2

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->E:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->M:I

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->N:J

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->D:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/e;->a()V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/e/g;)V
    .locals 3

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->t:Lcom/anythink/expressad/exoplayer/e/a/j;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/expressad/exoplayer/e/a/e$c;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/e/a/j;->d:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/anythink/expressad/exoplayer/e/g;->a(II)Lcom/anythink/expressad/exoplayer/e/m;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/anythink/expressad/exoplayer/e/a/e$c;-><init>(Lcom/anythink/expressad/exoplayer/e/m;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->t:Lcom/anythink/expressad/exoplayer/e/a/j;

    new-instance v0, Lcom/anythink/expressad/exoplayer/e/a/c;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/anythink/expressad/exoplayer/e/a/c;-><init>(IIII)V

    invoke-virtual {v1, p1, v0}, Lcom/anythink/expressad/exoplayer/e/a/e$c;->a(Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/e/a/c;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->w:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/e;->b()V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/e;->V:Lcom/anythink/expressad/exoplayer/e/g;

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/g;->c_()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/e/f;)Z
    .locals 0

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/e/a/i;->a(Lcom/anythink/expressad/exoplayer/e/f;)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
