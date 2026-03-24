.class public final Lcom/anythink/expressad/exoplayer/i/c;
.super Lcom/anythink/expressad/exoplayer/i/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/i/c$a;,
        Lcom/anythink/expressad/exoplayer/i/c$b;,
        Lcom/anythink/expressad/exoplayer/i/c$e;,
        Lcom/anythink/expressad/exoplayer/i/c$c;,
        Lcom/anythink/expressad/exoplayer/i/c$d;
    }
.end annotation


# static fields
.field private static final a:F = 0.98f

.field private static final b:[I

.field private static final c:I = 0x3e8


# instance fields
.field private final d:Lcom/anythink/expressad/exoplayer/i/f$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/anythink/expressad/exoplayer/i/c$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/i/c;-><init>(Lcom/anythink/expressad/exoplayer/i/f$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/i/f$a;)V
    .locals 1
    .param p1    # Lcom/anythink/expressad/exoplayer/i/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/e;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/i/c;->d:Lcom/anythink/expressad/exoplayer/i/f$a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/anythink/expressad/exoplayer/i/c$c;->a:Lcom/anythink/expressad/exoplayer/i/c$c;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/i/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/exoplayer/j/d;)V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/i/a$a;

    invoke-direct {v0, p1}, Lcom/anythink/expressad/exoplayer/i/a$a;-><init>(Lcom/anythink/expressad/exoplayer/j/d;)V

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/i/c;-><init>(Lcom/anythink/expressad/exoplayer/i/f$a;)V

    return-void
.end method

.method public static synthetic a(II)I
    .locals 0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)I
    .locals 12
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/h/ae;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p0

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v5

    aget v7, p1, v3

    move-object v6, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;IIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/ae;[ILcom/anythink/expressad/exoplayer/i/c$a;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v2

    aget v3, p1, v0

    invoke-static {v2, v3, p2}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;ILcom/anythink/expressad/exoplayer/i/c$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(ZIIII)Landroid/graphics/Point;
    .locals 3

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eq v1, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_2
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    new-instance p0, Landroid/graphics/Point;

    invoke-static {v0, p3}, Lcom/anythink/expressad/exoplayer/k/af;->a(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_3
    new-instance p2, Landroid/graphics/Point;

    invoke-static {p0, p4}, Lcom/anythink/expressad/exoplayer/k/af;->a(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/af;[[IILcom/anythink/expressad/exoplayer/i/c$c;Lcom/anythink/expressad/exoplayer/i/f$a;)Lcom/anythink/expressad/exoplayer/i/f;
    .locals 25
    .param p4    # Lcom/anythink/expressad/exoplayer/i/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-boolean v3, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->m:Z

    if-nez v3, :cond_a

    if-eqz p4, :cond_a

    iget-boolean v3, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->o:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x18

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    iget-boolean v5, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->n:Z

    if-eqz v5, :cond_1

    and-int v5, p2, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    const/4 v15, 0x0

    :goto_2
    iget v5, v0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v15, v5, :cond_a

    invoke-virtual {v0, v15}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v12

    aget-object v16, v1, v15

    iget v11, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->f:I

    iget v10, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->g:I

    iget v9, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->h:I

    iget v5, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->j:I

    iget v6, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->k:I

    iget-boolean v7, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->l:Z

    iget v8, v12, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    const/4 v4, 0x2

    if-ge v8, v4, :cond_2

    :goto_3
    sget-object v4, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    move-object/from16 v24, v12

    goto/16 :goto_7

    :cond_2
    invoke-static {v12, v5, v6, v7}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;IIZ)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_3

    goto :goto_3

    :cond_3
    if-nez v14, :cond_7

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_6

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v13

    iget-object v13, v13, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v18

    move v4, v5

    if-eqz v18, :cond_4

    move-object v5, v12

    move/from16 v18, v6

    move-object/from16 v6, v16

    move-object/from16 v19, v7

    move v7, v3

    move-object/from16 v20, v8

    move-object v8, v13

    move/from16 v21, v9

    move v9, v11

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v11, v21

    move-object/from16 v24, v12

    move-object/from16 v12, v20

    invoke-static/range {v5 .. v12}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v5

    if-le v5, v4, :cond_5

    move-object/from16 v17, v13

    goto :goto_5

    :cond_4
    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    :cond_5
    move v5, v4

    :goto_5
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v12, v24

    const/4 v4, 0x2

    goto :goto_4

    :cond_6
    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v8, v17

    goto :goto_6

    :cond_7
    move-object/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    const/4 v8, 0x0

    :goto_6
    move-object/from16 v5, v24

    move-object/from16 v6, v16

    move v7, v3

    move/from16 v9, v23

    move/from16 v10, v22

    move/from16 v11, v21

    move-object/from16 v12, v20

    invoke-static/range {v5 .. v12}, Lcom/anythink/expressad/exoplayer/i/c;->b(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_8

    sget-object v4, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    goto :goto_7

    :cond_8
    invoke-static/range {v20 .. v20}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/util/List;)[I

    move-result-object v4

    :goto_7
    array-length v5, v4

    if-lez v5, :cond_9

    invoke-static/range {p4 .. p4}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/i/f$a;

    move-object/from16 v5, v24

    invoke-interface {v3, v5, v4}, Lcom/anythink/expressad/exoplayer/i/f$a;->a(Lcom/anythink/expressad/exoplayer/h/ae;[I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v3

    move-object v4, v3

    goto :goto_8

    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_a
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_b

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v4

    :cond_b
    return-object v4
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    :goto_0
    iget v11, v0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v5, v11, :cond_f

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v11

    iget v12, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->j:I

    iget v13, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->k:I

    iget-boolean v14, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->l:Z

    invoke-static {v11, v12, v13, v14}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;IIZ)Ljava/util/List;

    move-result-object v12

    aget-object v13, p1, v5

    const/4 v14, 0x0

    :goto_1
    iget v15, v11, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v14, v15, :cond_e

    aget v15, v13, v14

    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->p:Z

    invoke-static {v15, v2}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v11, v14}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_3

    iget v15, v2, Lcom/anythink/expressad/exoplayer/m;->m:I

    if-eq v15, v3, :cond_0

    iget v4, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->f:I

    if-gt v15, v4, :cond_3

    :cond_0
    iget v4, v2, Lcom/anythink/expressad/exoplayer/m;->n:I

    if-eq v4, v3, :cond_1

    iget v15, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->g:I

    if-gt v4, v15, :cond_3

    :cond_1
    iget v4, v2, Lcom/anythink/expressad/exoplayer/m;->d:I

    if-eq v4, v3, :cond_2

    iget v15, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->h:I

    if-gt v4, v15, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_4

    iget-boolean v15, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->i:Z

    if-eqz v15, :cond_d

    :cond_4
    if-eqz v4, :cond_5

    const/4 v15, 0x2

    goto :goto_3

    :cond_5
    const/4 v15, 0x1

    :goto_3
    aget v3, v13, v14

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit16 v15, v15, 0x3e8

    :cond_6
    if-le v15, v8, :cond_7

    const/16 v17, 0x1

    goto :goto_4

    :cond_7
    const/16 v17, 0x0

    :goto_4
    if-ne v15, v8, :cond_c

    iget-boolean v0, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->m:Z

    if-eqz v0, :cond_9

    iget v0, v2, Lcom/anythink/expressad/exoplayer/m;->d:I

    invoke-static {v0, v10}, Lcom/anythink/expressad/exoplayer/i/c;->b(II)I

    move-result v0

    if-gez v0, :cond_8

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    move/from16 v17, v16

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/m;->a()I

    move-result v0

    if-eq v0, v9, :cond_a

    invoke-static {v0, v9}, Lcom/anythink/expressad/exoplayer/i/c;->b(II)I

    move-result v0

    goto :goto_6

    :cond_a
    iget v0, v2, Lcom/anythink/expressad/exoplayer/m;->d:I

    invoke-static {v0, v10}, Lcom/anythink/expressad/exoplayer/i/c;->b(II)I

    move-result v0

    :goto_6
    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    if-lez v0, :cond_8

    goto :goto_5

    :cond_b
    if-gez v0, :cond_8

    goto :goto_5

    :cond_c
    :goto_7
    if-eqz v17, :cond_d

    iget v0, v2, Lcom/anythink/expressad/exoplayer/m;->d:I

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/m;->a()I

    move-result v2

    move v10, v0

    move v9, v2

    move-object v6, v11

    move v7, v14

    move v8, v15

    :cond_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_f
    if-nez v6, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    new-instance v0, Lcom/anythink/expressad/exoplayer/i/d;

    invoke-direct {v0, v6, v7}, Lcom/anythink/expressad/exoplayer/i/d;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;I)V

    return-object v0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;Lcom/anythink/expressad/exoplayer/i/f$a;)Lcom/anythink/expressad/exoplayer/i/f;
    .locals 16
    .param p3    # Lcom/anythink/expressad/exoplayer/i/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, -0x1

    :goto_0
    iget v10, v0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v6, v10, :cond_3

    invoke-virtual {v0, v6}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v10

    aget-object v11, p1, v6

    const/4 v12, 0x0

    :goto_1
    iget v13, v10, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v12, v13, :cond_2

    aget v13, v11, v12

    iget-boolean v14, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->p:Z

    invoke-static {v13, v14}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v10, v12}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v13

    new-instance v14, Lcom/anythink/expressad/exoplayer/i/c$b;

    aget v15, v11, v12

    invoke-direct {v14, v13, v1, v15}, Lcom/anythink/expressad/exoplayer/i/c$b;-><init>(Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/i/c$c;I)V

    if-eqz v8, :cond_0

    invoke-virtual {v14, v8}, Lcom/anythink/expressad/exoplayer/i/c$b;->a(Lcom/anythink/expressad/exoplayer/i/c$b;)I

    move-result v13

    if-lez v13, :cond_1

    :cond_0
    move v7, v6

    move v9, v12

    move-object v8, v14

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-ne v7, v3, :cond_4

    return-object v4

    :cond_4
    invoke-virtual {v0, v7}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v0

    iget-boolean v3, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->m:Z

    if-nez v3, :cond_b

    if-eqz v2, :cond_b

    aget-object v3, p1, v7

    iget-boolean v1, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->n:Z

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v10, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    iget v11, v0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v7, v11, :cond_7

    invoke-virtual {v0, v7}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v11

    new-instance v12, Lcom/anythink/expressad/exoplayer/i/c$a;

    iget v13, v11, Lcom/anythink/expressad/exoplayer/m;->u:I

    iget v14, v11, Lcom/anythink/expressad/exoplayer/m;->v:I

    if-eqz v1, :cond_5

    move-object v11, v4

    goto :goto_3

    :cond_5
    iget-object v11, v11, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    :goto_3
    invoke-direct {v12, v13, v14, v11}, Lcom/anythink/expressad/exoplayer/i/c$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {v0, v3, v12}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;[ILcom/anythink/expressad/exoplayer/i/c$a;)I

    move-result v11

    if-le v11, v8, :cond_6

    move v8, v11

    move-object v10, v12

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    if-le v8, v1, :cond_9

    new-array v1, v8, [I

    const/4 v4, 0x0

    :goto_4
    iget v6, v0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v5, v6, :cond_a

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v6

    aget v7, v3, v5

    invoke-static {v10}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/anythink/expressad/exoplayer/i/c$a;

    invoke-static {v6, v7, v8}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;ILcom/anythink/expressad/exoplayer/i/c$a;)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v6, v4, 0x1

    aput v5, v1, v4

    move v4, v6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    sget-object v1, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    :cond_a
    array-length v3, v1

    if-lez v3, :cond_b

    invoke-interface {v2, v0, v1}, Lcom/anythink/expressad/exoplayer/i/f$a;->a(Lcom/anythink/expressad/exoplayer/h/ae;[I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v1, Lcom/anythink/expressad/exoplayer/i/d;

    invoke-direct {v1, v0, v9}, Lcom/anythink/expressad/exoplayer/i/d;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;I)V

    return-object v1
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/ae;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/h/ae;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_6

    if-ne p2, v2, :cond_1

    goto :goto_3

    :cond_1
    const v3, 0x7fffffff

    :goto_1
    iget v4, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v4

    iget v5, v4, Lcom/anythink/expressad/exoplayer/m;->m:I

    if-lez v5, :cond_2

    iget v6, v4, Lcom/anythink/expressad/exoplayer/m;->n:I

    if-lez v6, :cond_2

    invoke-static {p3, p1, p2, v5, v6}, Lcom/anythink/expressad/exoplayer/i/c;->a(ZIIII)Landroid/graphics/Point;

    move-result-object v5

    iget v6, v4, Lcom/anythink/expressad/exoplayer/m;->m:I

    iget v4, v4, Lcom/anythink/expressad/exoplayer/m;->n:I

    mul-int v7, v6, v4

    iget v8, v5, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v6, v8, :cond_2

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v9

    float-to-int v5, v5

    if-lt v4, v5, :cond_2

    if-ge v7, v3, :cond_2

    move v3, v7

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq v3, v2, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/m;->a()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    if-le p2, v3, :cond_5

    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v0
.end method

.method private a(ILcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/c$e;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->d()Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/exoplayer/i/c$d;->a(ILcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/c$e;)Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/i/c$d;)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/i/c$c;)V
    .locals 1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/i/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/i/c$c;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/i/c$c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/i/h;->b()V

    :cond_0
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/i/c$d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/i/c$d;->b()Lcom/anythink/expressad/exoplayer/i/c$c;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/i/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/i/c$c;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/i/c$c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/i/h;->b()V

    :cond_0
    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/i/e$a;[[[I[Lcom/anythink/expressad/exoplayer/aa;[Lcom/anythink/expressad/exoplayer/i/f;I)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/i/e$a;->a()I

    move-result v7

    const/4 v8, 0x1

    if-ge v4, v7, :cond_9

    invoke-virtual {p0, v4}, Lcom/anythink/expressad/exoplayer/i/e$a;->a(I)I

    move-result v7

    aget-object v9, p3, v4

    if-eq v7, v8, :cond_1

    const/4 v10, 0x2

    if-ne v7, v10, :cond_8

    :cond_1
    if-eqz v9, :cond_8

    aget-object v10, p1, v4

    invoke-virtual {p0, v4}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v11

    if-nez v9, :cond_2

    :goto_1
    const/4 v9, 0x0

    goto :goto_3

    :cond_2
    invoke-interface {v9}, Lcom/anythink/expressad/exoplayer/i/f;->f()Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/anythink/expressad/exoplayer/h/af;->a(Lcom/anythink/expressad/exoplayer/h/ae;)I

    move-result v11

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v9}, Lcom/anythink/expressad/exoplayer/i/f;->g()I

    move-result v13

    if-ge v12, v13, :cond_4

    aget-object v13, v10, v11

    invoke-interface {v9, v12}, Lcom/anythink/expressad/exoplayer/i/f;->b(I)I

    move-result v14

    aget v13, v13, v14

    const/16 v14, 0x20

    and-int/2addr v13, v14

    if-eq v13, v14, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_8

    if-ne v7, v8, :cond_6

    if-eq v6, v2, :cond_5

    goto :goto_4

    :cond_5
    move v6, v4

    goto :goto_5

    :cond_6
    if-eq v5, v2, :cond_7

    :goto_4
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    move v5, v4

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    :goto_6
    if-eq v6, v2, :cond_a

    if-eq v5, v2, :cond_a

    const/4 v3, 0x1

    :cond_a
    and-int/2addr v0, v3

    if-eqz v0, :cond_b

    new-instance v0, Lcom/anythink/expressad/exoplayer/aa;

    invoke-direct {v0, v1}, Lcom/anythink/expressad/exoplayer/aa;-><init>(I)V

    aput-object v0, p2, v6

    aput-object v0, p2, v5

    :cond_b
    return-void
.end method

.method private a(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->c()Lcom/anythink/expressad/exoplayer/i/c$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/i/c$c;->a(I)Z

    move-result p1

    return p1
.end method

.method private a(ILcom/anythink/expressad/exoplayer/h/af;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->c()Lcom/anythink/expressad/exoplayer/i/c$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/i/c$c;->a(ILcom/anythink/expressad/exoplayer/h/af;)Z

    move-result p1

    return p1
.end method

.method public static a(IZ)Z
    .locals 1

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/m;)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/m;ILcom/anythink/expressad/exoplayer/i/c$a;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/anythink/expressad/exoplayer/m;->u:I

    iget v1, p2, Lcom/anythink/expressad/exoplayer/i/c$a;->a:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/anythink/expressad/exoplayer/m;->v:I

    iget v1, p2, Lcom/anythink/expressad/exoplayer/i/c$a;->b:I

    if-ne p1, v1, :cond_1

    iget-object p1, p2, Lcom/anythink/expressad/exoplayer/i/c$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    invoke-static {p0}, Lcom/anythink/expressad/exoplayer/k/af;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;IIIII)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    and-int/2addr p2, p3

    if-eqz p2, :cond_4

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    iget p1, p0, Lcom/anythink/expressad/exoplayer/m;->m:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-gt p1, p4, :cond_4

    :cond_1
    iget p1, p0, Lcom/anythink/expressad/exoplayer/m;->n:I

    if-eq p1, p2, :cond_2

    if-gt p1, p5, :cond_4

    :cond_2
    iget p0, p0, Lcom/anythink/expressad/exoplayer/m;->d:I

    if-eq p0, p2, :cond_3

    if-gt p0, p6, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method private static a([[ILcom/anythink/expressad/exoplayer/h/af;Lcom/anythink/expressad/exoplayer/i/f;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Lcom/anythink/expressad/exoplayer/i/f;->f()Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/h/af;->a(Lcom/anythink/expressad/exoplayer/h/ae;)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lcom/anythink/expressad/exoplayer/i/f;->g()I

    move-result v2

    if-ge v1, v2, :cond_2

    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lcom/anythink/expressad/exoplayer/i/f;->b(I)I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/ae;[IZ)[I
    .locals 10

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v6, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v3, v6, :cond_2

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v6

    new-instance v7, Lcom/anythink/expressad/exoplayer/i/c$a;

    iget v8, v6, Lcom/anythink/expressad/exoplayer/m;->u:I

    iget v9, v6, Lcom/anythink/expressad/exoplayer/m;->v:I

    if-eqz p2, :cond_0

    move-object v6, v1

    goto :goto_1

    :cond_0
    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    :goto_1
    invoke-direct {v7, v8, v9, v6}, Lcom/anythink/expressad/exoplayer/i/c$a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0, p1, v7}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;[ILcom/anythink/expressad/exoplayer/i/c$a;)I

    move-result v6

    if-le v6, v4, :cond_1

    move v4, v6

    move-object v5, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    if-le v4, p2, :cond_5

    new-array p2, v4, [I

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v1

    aget v3, p1, v2

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/exoplayer/i/c$a;

    invoke-static {v1, v3, v4}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;ILcom/anythink/expressad/exoplayer/i/c$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    aput v2, p2, v0

    move v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object p2

    :cond_5
    sget-object p0, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    return-object p0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/ae;[IZIIIIIIZ)[I
    .locals 16

    move-object/from16 v8, p0

    iget v0, v8, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    const/4 v9, 0x2

    if-ge v0, v9, :cond_0

    sget-object v0, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    return-object v0

    :cond_0
    move/from16 v0, p7

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v8, v0, v1, v2}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;IIZ)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v9, :cond_1

    sget-object v0, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-nez p2, :cond_4

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_3

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v0

    iget-object v15, v0, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v15

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v0

    if-le v0, v14, :cond_2

    move v14, v0

    move-object v12, v15

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v12

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lcom/anythink/expressad/exoplayer/i/c;->b(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v9, :cond_5

    sget-object v0, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    return-object v0

    :cond_5
    invoke-static {v10}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/i/e$a;[[[I[ILcom/anythink/expressad/exoplayer/i/c$c;)[Lcom/anythink/expressad/exoplayer/i/f;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/i/e$a;->a()I

    move-result v3

    new-array v4, v3, [Lcom/anythink/expressad/exoplayer/i/f;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v10, 0x2

    if-ge v6, v3, :cond_10

    invoke-virtual {v1, v6}, Lcom/anythink/expressad/exoplayer/i/e$a;->a(I)I

    move-result v12

    if-ne v10, v12, :cond_f

    if-nez v7, :cond_d

    invoke-virtual {v1, v6}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v7

    aget-object v12, p2, v6

    aget v13, p3, v6

    iget-object v14, v0, Lcom/anythink/expressad/exoplayer/i/c;->d:Lcom/anythink/expressad/exoplayer/i/f$a;

    iget-boolean v15, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->m:Z

    if-nez v15, :cond_a

    if-eqz v14, :cond_a

    iget-boolean v15, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->o:Z

    if-eqz v15, :cond_0

    const/16 v15, 0x18

    goto :goto_1

    :cond_0
    const/16 v15, 0x10

    :goto_1
    iget-boolean v5, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->n:Z

    if-eqz v5, :cond_1

    and-int v5, v13, v15

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    const/4 v13, 0x0

    :goto_3
    iget v9, v7, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v13, v9, :cond_a

    invoke-virtual {v7, v13}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v9

    aget-object v24, v12, v13

    iget v11, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->f:I

    iget v10, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->g:I

    iget v0, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->h:I

    move/from16 v25, v3

    iget v3, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->j:I

    move/from16 v26, v8

    iget v8, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->k:I

    iget-boolean v1, v2, Lcom/anythink/expressad/exoplayer/i/c$c;->l:Z

    move-object/from16 v27, v4

    iget v4, v9, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    move/from16 v28, v6

    const/4 v6, 0x2

    if-ge v4, v6, :cond_2

    :goto_4
    sget-object v0, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    move/from16 v29, v5

    goto/16 :goto_8

    :cond_2
    invoke-static {v9, v3, v8, v1}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;IIZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v6, :cond_3

    goto :goto_4

    :cond_3
    if-nez v5, :cond_7

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move/from16 v29, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v9, v5}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v5

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v16, v9

    move-object/from16 v17, v24

    move/from16 v18, v15

    move-object/from16 v19, v5

    move/from16 v20, v11

    move/from16 v21, v10

    move/from16 v22, v0

    move-object/from16 v23, v1

    move-object/from16 v30, v3

    invoke-static/range {v16 .. v23}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v3

    if-le v3, v8, :cond_5

    move v8, v3

    move-object v6, v5

    goto :goto_6

    :cond_4
    move-object/from16 v30, v3

    :cond_5
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, v30

    goto :goto_5

    :cond_6
    move-object/from16 v19, v6

    goto :goto_7

    :cond_7
    move/from16 v29, v5

    const/16 v19, 0x0

    :goto_7
    move-object/from16 v16, v9

    move-object/from16 v17, v24

    move/from16 v18, v15

    move/from16 v20, v11

    move/from16 v21, v10

    move/from16 v22, v0

    move-object/from16 v23, v1

    invoke-static/range {v16 .. v23}, Lcom/anythink/expressad/exoplayer/i/c;->b(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_8

    sget-object v0, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    goto :goto_8

    :cond_8
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/util/List;)[I

    move-result-object v0

    :goto_8
    array-length v1, v0

    if-lez v1, :cond_9

    invoke-static {v14}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/i/f$a;

    invoke-interface {v1, v9, v0}, Lcom/anythink/expressad/exoplayer/i/f$a;->a(Lcom/anythink/expressad/exoplayer/h/ae;[I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v0

    move-object v9, v0

    goto :goto_9

    :cond_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v25

    move/from16 v8, v26

    move-object/from16 v4, v27

    move/from16 v6, v28

    move/from16 v5, v29

    const/4 v10, 0x2

    goto/16 :goto_3

    :cond_a
    move/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v28, v6

    move/from16 v26, v8

    const/4 v9, 0x0

    :goto_9
    if-nez v9, :cond_b

    invoke-static {v7, v12, v2}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v9

    :cond_b
    aput-object v9, v27, v28

    aget-object v0, v27, v28

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    :goto_a
    move v7, v0

    move/from16 v5, v28

    move-object/from16 v0, p1

    goto :goto_b

    :cond_d
    move/from16 v25, v3

    move-object/from16 v27, v4

    move/from16 v26, v8

    move-object/from16 v0, p1

    move v5, v6

    :goto_b
    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v1

    iget v1, v1, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-lez v1, :cond_e

    const/4 v11, 0x1

    goto :goto_c

    :cond_e
    const/4 v11, 0x0

    :goto_c
    or-int v8, v26, v11

    goto :goto_d

    :cond_f
    move-object v0, v1

    move/from16 v25, v3

    move-object/from16 v27, v4

    move v5, v6

    move/from16 v26, v8

    :goto_d
    add-int/lit8 v6, v5, 0x1

    move-object v1, v0

    move/from16 v3, v25

    move-object/from16 v4, v27

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    move-object/from16 v27, v4

    move/from16 v26, v8

    move v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v3, v1, :cond_17

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/i/e$a;->a(I)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eq v6, v7, :cond_14

    if-eq v6, v8, :cond_13

    const/4 v9, 0x3

    if-eq v6, v9, :cond_11

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v6

    aget-object v9, p2, v3

    invoke-static {v6, v9, v2}, Lcom/anythink/expressad/exoplayer/i/c;->c(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v6

    aput-object v6, v27, v3

    goto :goto_f

    :cond_11
    if-nez v5, :cond_13

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v5

    aget-object v6, p2, v3

    invoke-static {v5, v6, v2}, Lcom/anythink/expressad/exoplayer/i/c;->b(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v5

    aput-object v5, v27, v3

    aget-object v5, v27, v3

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_f

    :cond_12
    const/4 v5, 0x0

    :cond_13
    :goto_f
    move-object/from16 v9, p0

    goto :goto_11

    :cond_14
    if-nez v4, :cond_13

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v4

    aget-object v6, p2, v3

    if-eqz v26, :cond_15

    const/4 v10, 0x0

    move-object/from16 v9, p0

    goto :goto_10

    :cond_15
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/anythink/expressad/exoplayer/i/c;->d:Lcom/anythink/expressad/exoplayer/i/f$a;

    :goto_10
    invoke-static {v4, v6, v2, v10}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;Lcom/anythink/expressad/exoplayer/i/f$a;)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v4

    aput-object v4, v27, v3

    aget-object v4, v27, v3

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    goto :goto_11

    :cond_16
    const/4 v4, 0x0

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_17
    move-object/from16 v9, p0

    return-object v27
.end method

.method private static b(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    sub-int/2addr p0, p1

    return p0
.end method

.method private b(ILcom/anythink/expressad/exoplayer/h/af;)Lcom/anythink/expressad/exoplayer/i/c$e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->c()Lcom/anythink/expressad/exoplayer/i/c$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/i/c$c;->b(ILcom/anythink/expressad/exoplayer/h/af;)Lcom/anythink/expressad/exoplayer/i/c$e;

    move-result-object p1

    return-object p1
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/h/af;[[IILcom/anythink/expressad/exoplayer/i/c$c;Lcom/anythink/expressad/exoplayer/i/f$a;)Lcom/anythink/expressad/exoplayer/i/f;
    .locals 24
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-boolean v2, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->o:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x18

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    iget-boolean v3, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->n:Z

    if-eqz v3, :cond_1

    and-int v3, p2, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    :goto_2
    iget v3, v0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    const/4 v4, 0x0

    if-ge v13, v3, :cond_a

    invoke-virtual {v0, v13}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v14

    aget-object v15, p1, v13

    iget v10, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->f:I

    iget v9, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->g:I

    iget v8, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->h:I

    iget v3, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->j:I

    iget v5, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->k:I

    iget-boolean v6, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->l:Z

    iget v7, v14, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    const/4 v11, 0x2

    if-ge v7, v11, :cond_2

    :goto_3
    sget-object v3, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    goto/16 :goto_7

    :cond_2
    invoke-static {v14, v3, v5, v6}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;IIZ)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v11, :cond_3

    goto :goto_3

    :cond_3
    if-nez v12, :cond_7

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v16, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_6

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v14, v3}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v3

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, v3

    move-object v3, v14

    move v11, v4

    move-object v4, v15

    move/from16 v18, v5

    move v5, v2

    move-object/from16 v19, v6

    move-object/from16 v6, v17

    move-object/from16 v20, v7

    move v7, v10

    move/from16 v21, v8

    move v8, v9

    move/from16 v22, v9

    move/from16 v9, v21

    move/from16 v23, v10

    move-object/from16 v10, v20

    invoke-static/range {v3 .. v10}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v4

    if-le v4, v11, :cond_5

    move-object/from16 v16, v17

    goto :goto_5

    :cond_4
    move v11, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    :cond_5
    move v4, v11

    :goto_5
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v10, v23

    const/4 v11, 0x2

    goto :goto_4

    :cond_6
    move-object/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object/from16 v6, v16

    goto :goto_6

    :cond_7
    move-object/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-object v6, v4

    :goto_6
    move-object v3, v14

    move-object v4, v15

    move v5, v2

    move/from16 v7, v23

    move/from16 v8, v22

    move/from16 v9, v21

    move-object/from16 v10, v20

    invoke-static/range {v3 .. v10}, Lcom/anythink/expressad/exoplayer/i/c;->b(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    goto/16 :goto_3

    :cond_8
    invoke-static/range {v20 .. v20}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/util/List;)[I

    move-result-object v3

    :goto_7
    array-length v4, v3

    if-lez v4, :cond_9

    invoke-static/range {p4 .. p4}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/i/f$a;

    invoke-interface {v0, v14, v3}, Lcom/anythink/expressad/exoplayer/i/f$a;->a(Lcom/anythink/expressad/exoplayer/h/ae;[I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v0

    return-object v0

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_a
    return-object v4
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v4, v8, :cond_d

    invoke-virtual {v0, v4}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v8

    aget-object v9, p1, v4

    const/4 v10, 0x0

    :goto_1
    iget v11, v8, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v10, v11, :cond_c

    aget v11, v9, v10

    iget-boolean v12, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->p:Z

    invoke-static {v11, v12}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v8, v10}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v11

    iget v12, v11, Lcom/anythink/expressad/exoplayer/m;->z:I

    iget v13, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->e:I

    not-int v13, v13

    and-int/2addr v12, v13

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    goto :goto_2

    :cond_0
    const/4 v13, 0x0

    :goto_2
    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_3

    :cond_1
    const/4 v12, 0x0

    :goto_3
    iget-object v15, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->c:Ljava/lang/String;

    invoke-static {v11, v15}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    iget-boolean v14, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->d:Z

    if-eqz v14, :cond_4

    iget-object v14, v11, Lcom/anythink/expressad/exoplayer/m;->A:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "und"

    invoke-static {v11, v14}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_4

    :cond_2
    const/4 v14, 0x0

    goto :goto_5

    :cond_3
    :goto_4
    const/4 v14, 0x1

    :goto_5
    if-eqz v14, :cond_4

    goto :goto_6

    :cond_4
    if-eqz v13, :cond_5

    const/4 v14, 0x3

    goto :goto_8

    :cond_5
    if-eqz v12, :cond_b

    iget-object v12, v1, Lcom/anythink/expressad/exoplayer/i/c$c;->b:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v14, 0x2

    goto :goto_8

    :cond_6
    const/4 v14, 0x1

    goto :goto_8

    :cond_7
    :goto_6
    if-eqz v13, :cond_8

    const/16 v11, 0x8

    goto :goto_7

    :cond_8
    if-nez v12, :cond_9

    const/4 v11, 0x6

    goto :goto_7

    :cond_9
    const/4 v11, 0x4

    :goto_7
    add-int v14, v11, v15

    :goto_8
    aget v11, v9, v10

    invoke-static {v11, v3}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result v11

    if-eqz v11, :cond_a

    add-int/lit16 v14, v14, 0x3e8

    :cond_a
    if-le v14, v7, :cond_b

    move-object v5, v8

    move v6, v10

    move v7, v14

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_d
    if-nez v5, :cond_e

    return-object v2

    :cond_e
    new-instance v0, Lcom/anythink/expressad/exoplayer/i/d;

    invoke-direct {v0, v5, v6}, Lcom/anythink/expressad/exoplayer/i/d;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;I)V

    return-object v0
.end method

.method private b(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->d()Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/i/c$d;->a(I)Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/i/c$d;)V

    return-void
.end method

.method private b(IZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->d()Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/i/c$d;->a(IZ)Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/i/c$d;)V

    return-void
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)V
    .locals 11
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/h/ae;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p7

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p0

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v4

    aget v6, p1, v2

    move-object v5, p3

    move v7, p2

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/m;Ljava/lang/String;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static c(II)I
    .locals 0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private c()Lcom/anythink/expressad/exoplayer/i/c$c;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/i/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/i/c$c;

    return-object v0
.end method

.method private static c(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v2, v6, :cond_5

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v6

    aget-object v7, p1, v2

    const/4 v8, 0x0

    :goto_1
    iget v9, v6, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    if-ge v8, v9, :cond_4

    aget v9, v7, v8

    iget-boolean v10, p2, Lcom/anythink/expressad/exoplayer/i/c$c;->p:Z

    invoke-static {v9, v10}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6, v8}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v9

    iget v9, v9, Lcom/anythink/expressad/exoplayer/m;->z:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_1

    const/4 v10, 0x2

    :cond_1
    aget v9, v7, v8

    invoke-static {v9, v1}, Lcom/anythink/expressad/exoplayer/i/c;->a(IZ)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit16 v10, v10, 0x3e8

    :cond_2
    if-le v10, v5, :cond_3

    move-object v3, v6

    move v4, v8

    move v5, v10

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    return-object v0

    :cond_6
    new-instance p0, Lcom/anythink/expressad/exoplayer/i/d;

    invoke-direct {p0, v3, v4}, Lcom/anythink/expressad/exoplayer/i/d;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;I)V

    return-object p0
.end method

.method private c(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->d()Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/i/c$d;->b(I)Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/i/c$d;)V

    return-void
.end method

.method private c(ILcom/anythink/expressad/exoplayer/h/af;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->d()Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/i/c$d;->a(ILcom/anythink/expressad/exoplayer/h/af;)Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/i/c$d;)V

    return-void
.end method

.method private d()Lcom/anythink/expressad/exoplayer/i/c$d;
    .locals 3

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->c()Lcom/anythink/expressad/exoplayer/i/c$c;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/exoplayer/i/c$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/anythink/expressad/exoplayer/i/c$d;-><init>(Lcom/anythink/expressad/exoplayer/i/c$c;B)V

    return-object v1
.end method

.method private e()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/i/c;->d()Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/i/c$d;->a()Lcom/anythink/expressad/exoplayer/i/c$d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/i/c$d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/i/e$a;[[[I[I)Landroid/util/Pair;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/i/e$a;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/anythink/expressad/exoplayer/aa;",
            "[",
            "Lcom/anythink/expressad/exoplayer/i/f;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/i/c;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/i/c$c;

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/i/e$a;->a()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/i/e$a;->a()I

    move-result v5

    new-array v6, v5, [Lcom/anythink/expressad/exoplayer/i/f;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x2

    if-ge v8, v5, :cond_10

    invoke-virtual {v1, v8}, Lcom/anythink/expressad/exoplayer/i/e$a;->a(I)I

    move-result v14

    if-ne v11, v14, :cond_f

    if-nez v9, :cond_d

    invoke-virtual {v1, v8}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v9

    aget-object v14, v2, v8

    aget v15, p3, v8

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/i/c;->d:Lcom/anythink/expressad/exoplayer/i/f$a;

    iget-boolean v12, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->m:Z

    if-nez v12, :cond_a

    if-eqz v7, :cond_a

    iget-boolean v12, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->o:Z

    if-eqz v12, :cond_0

    const/16 v12, 0x18

    goto :goto_1

    :cond_0
    const/16 v12, 0x10

    :goto_1
    iget-boolean v13, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->n:Z

    if-eqz v13, :cond_1

    and-int v13, v15, v12

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    const/4 v15, 0x0

    :goto_3
    iget v11, v9, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-ge v15, v11, :cond_a

    invoke-virtual {v9, v15}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v11

    aget-object v24, v14, v15

    move/from16 v25, v4

    iget v4, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->f:I

    iget v0, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->g:I

    iget v2, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->h:I

    move/from16 v26, v5

    iget v5, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->j:I

    move/from16 v27, v10

    iget v10, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->k:I

    iget-boolean v1, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->l:Z

    move-object/from16 v28, v6

    iget v6, v11, Lcom/anythink/expressad/exoplayer/h/ae;->a:I

    move/from16 v29, v8

    const/4 v8, 0x2

    if-ge v6, v8, :cond_2

    :goto_4
    sget-object v0, Lcom/anythink/expressad/exoplayer/i/c;->b:[I

    goto/16 :goto_8

    :cond_2
    invoke-static {v11, v5, v10, v1}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;IIZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v8, :cond_3

    goto :goto_4

    :cond_3
    if-nez v13, :cond_7

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/16 v30, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v11, v8}, Lcom/anythink/expressad/exoplayer/h/ae;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v8

    iget-object v8, v8, Lcom/anythink/expressad/exoplayer/m;->h:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v16, v11

    move-object/from16 v17, v24

    move/from16 v18, v12

    move-object/from16 v19, v8

    move/from16 v20, v4

    move/from16 v21, v0

    move/from16 v22, v2

    move-object/from16 v23, v1

    move-object/from16 v31, v5

    invoke-static/range {v16 .. v23}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v5

    if-le v5, v10, :cond_5

    move v10, v5

    move-object/from16 v30, v8

    goto :goto_6

    :cond_4
    move-object/from16 v31, v5

    :cond_5
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v31

    goto :goto_5

    :cond_6
    move-object/from16 v19, v30

    goto :goto_7

    :cond_7
    const/16 v19, 0x0

    :goto_7
    move-object/from16 v16, v11

    move-object/from16 v17, v24

    move/from16 v18, v12

    move/from16 v20, v4

    move/from16 v21, v0

    move/from16 v22, v2

    move-object/from16 v23, v1

    invoke-static/range {v16 .. v23}, Lcom/anythink/expressad/exoplayer/i/c;->b(Lcom/anythink/expressad/exoplayer/h/ae;[IILjava/lang/String;IIILjava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/util/List;)[I

    move-result-object v0

    :goto_8
    array-length v1, v0

    if-lez v1, :cond_9

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/i/f$a;

    invoke-interface {v1, v11, v0}, Lcom/anythink/expressad/exoplayer/i/f$a;->a(Lcom/anythink/expressad/exoplayer/h/ae;[I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v0

    move-object v12, v0

    goto :goto_9

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v10, v27

    move-object/from16 v6, v28

    move/from16 v8, v29

    goto/16 :goto_3

    :cond_a
    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v29, v8

    move/from16 v27, v10

    const/4 v12, 0x0

    :goto_9
    if-nez v12, :cond_b

    invoke-static {v9, v14, v3}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v12

    :cond_b
    aput-object v12, v28, v29

    aget-object v0, v28, v29

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    :goto_a
    move v9, v0

    move/from16 v7, v29

    move-object/from16 v0, p1

    goto :goto_b

    :cond_d
    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move/from16 v27, v10

    move-object/from16 v0, p1

    move v7, v8

    :goto_b
    invoke-virtual {v0, v7}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v1

    iget v1, v1, Lcom/anythink/expressad/exoplayer/h/af;->b:I

    if-lez v1, :cond_e

    const/4 v13, 0x1

    goto :goto_c

    :cond_e
    const/4 v13, 0x0

    :goto_c
    or-int v10, v27, v13

    goto :goto_d

    :cond_f
    move-object v0, v1

    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v28, v6

    move v7, v8

    move/from16 v27, v10

    :goto_d
    add-int/lit8 v8, v7, 0x1

    move-object/from16 v2, p2

    move-object v1, v0

    move/from16 v4, v25

    move/from16 v5, v26

    move-object/from16 v6, v28

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    move/from16 v25, v4

    move-object/from16 v28, v6

    move/from16 v27, v10

    move v1, v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/i/e$a;->a(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_15

    const/4 v7, 0x2

    if-eq v6, v7, :cond_14

    const/4 v8, 0x3

    if-eq v6, v8, :cond_11

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v6

    move-object/from16 v8, p2

    aget-object v9, v8, v2

    invoke-static {v6, v9, v3}, Lcom/anythink/expressad/exoplayer/i/c;->c(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v6

    aput-object v6, v28, v2

    goto :goto_f

    :cond_11
    move-object/from16 v8, p2

    if-nez v5, :cond_13

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v5

    aget-object v6, v8, v2

    invoke-static {v5, v6, v3}, Lcom/anythink/expressad/exoplayer/i/c;->b(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v5

    aput-object v5, v28, v2

    aget-object v5, v28, v2

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    goto :goto_f

    :cond_12
    const/4 v5, 0x0

    :cond_13
    :goto_f
    move-object/from16 v9, p0

    goto :goto_11

    :cond_14
    move-object/from16 v8, p2

    goto :goto_f

    :cond_15
    move-object/from16 v8, p2

    const/4 v7, 0x2

    if-nez v4, :cond_13

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v4

    aget-object v6, v8, v2

    if-eqz v27, :cond_16

    const/4 v10, 0x0

    move-object/from16 v9, p0

    goto :goto_10

    :cond_16
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/anythink/expressad/exoplayer/i/c;->d:Lcom/anythink/expressad/exoplayer/i/f$a;

    :goto_10
    invoke-static {v4, v6, v3, v10}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/h/af;[[ILcom/anythink/expressad/exoplayer/i/c$c;Lcom/anythink/expressad/exoplayer/i/f$a;)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v4

    aput-object v4, v28, v2

    aget-object v4, v28, v2

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    goto :goto_11

    :cond_17
    const/4 v4, 0x0

    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    move-object/from16 v9, p0

    move-object/from16 v8, p2

    move/from16 v1, v25

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_1d

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/exoplayer/i/c$c;->a(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    aput-object v4, v28, v2

    goto :goto_13

    :cond_19
    const/4 v4, 0x0

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/exoplayer/i/e$a;->b(I)Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/anythink/expressad/exoplayer/i/c$c;->a(ILcom/anythink/expressad/exoplayer/h/af;)Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v3, v2, v5}, Lcom/anythink/expressad/exoplayer/i/c$c;->b(ILcom/anythink/expressad/exoplayer/h/af;)Lcom/anythink/expressad/exoplayer/i/c$e;

    move-result-object v6

    if-nez v6, :cond_1a

    aput-object v4, v28, v2

    goto :goto_13

    :cond_1a
    iget v7, v6, Lcom/anythink/expressad/exoplayer/i/c$e;->c:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_1b

    new-instance v7, Lcom/anythink/expressad/exoplayer/i/d;

    iget v11, v6, Lcom/anythink/expressad/exoplayer/i/c$e;->a:I

    invoke-virtual {v5, v11}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v5

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/i/c$e;->b:[I

    const/4 v11, 0x0

    aget v6, v6, v11

    invoke-direct {v7, v5, v6}, Lcom/anythink/expressad/exoplayer/i/d;-><init>(Lcom/anythink/expressad/exoplayer/h/ae;I)V

    aput-object v7, v28, v2

    goto :goto_14

    :cond_1b
    const/4 v11, 0x0

    iget-object v7, v9, Lcom/anythink/expressad/exoplayer/i/c;->d:Lcom/anythink/expressad/exoplayer/i/f$a;

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/anythink/expressad/exoplayer/i/f$a;

    iget v12, v6, Lcom/anythink/expressad/exoplayer/i/c$e;->a:I

    invoke-virtual {v5, v12}, Lcom/anythink/expressad/exoplayer/h/af;->a(I)Lcom/anythink/expressad/exoplayer/h/ae;

    move-result-object v5

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/i/c$e;->b:[I

    invoke-interface {v7, v5, v6}, Lcom/anythink/expressad/exoplayer/i/f$a;->a(Lcom/anythink/expressad/exoplayer/h/ae;[I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v5

    aput-object v5, v28, v2

    goto :goto_14

    :cond_1c
    :goto_13
    const/4 v10, 0x1

    const/4 v11, 0x0

    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1d
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    new-array v2, v1, [Lcom/anythink/expressad/exoplayer/aa;

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v1, :cond_21

    invoke-virtual {v3, v5}, Lcom/anythink/expressad/exoplayer/i/c$c;->a(I)Z

    move-result v6

    if-nez v6, :cond_1f

    invoke-virtual {v0, v5}, Lcom/anythink/expressad/exoplayer/i/e$a;->a(I)I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1e

    aget-object v6, v28, v5

    if-eqz v6, :cond_1f

    :cond_1e
    const/4 v7, 0x1

    goto :goto_16

    :cond_1f
    const/4 v7, 0x0

    :goto_16
    if-eqz v7, :cond_20

    sget-object v6, Lcom/anythink/expressad/exoplayer/aa;->a:Lcom/anythink/expressad/exoplayer/aa;

    goto :goto_17

    :cond_20
    move-object v6, v4

    :goto_17
    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_21
    iget v1, v3, Lcom/anythink/expressad/exoplayer/i/c$c;->q:I

    move-object/from16 v3, v28

    invoke-static {v0, v8, v2, v3, v1}, Lcom/anythink/expressad/exoplayer/i/c;->a(Lcom/anythink/expressad/exoplayer/i/e$a;[[[I[Lcom/anythink/expressad/exoplayer/aa;[Lcom/anythink/expressad/exoplayer/i/f;I)V

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
