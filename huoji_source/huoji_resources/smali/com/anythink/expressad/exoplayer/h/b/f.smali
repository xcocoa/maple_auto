.class public final Lcom/anythink/expressad/exoplayer/h/b/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/y;
.implements Lcom/anythink/expressad/exoplayer/h/z;
.implements Lcom/anythink/expressad/exoplayer/j/t$a;
.implements Lcom/anythink/expressad/exoplayer/j/t$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/h/b/f$a;,
        Lcom/anythink/expressad/exoplayer/h/b/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/anythink/expressad/exoplayer/h/b/g;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/anythink/expressad/exoplayer/h/y;",
        "Lcom/anythink/expressad/exoplayer/h/z;",
        "Lcom/anythink/expressad/exoplayer/j/t$a<",
        "Lcom/anythink/expressad/exoplayer/h/b/c;",
        ">;",
        "Lcom/anythink/expressad/exoplayer/j/t$d;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "ChunkSampleStream"


# instance fields
.field public final a:I

.field public b:J

.field public c:Z

.field private final e:[I

.field private final f:[Lcom/anythink/expressad/exoplayer/m;

.field private final g:[Z

.field private final h:Lcom/anythink/expressad/exoplayer/h/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final i:Lcom/anythink/expressad/exoplayer/h/z$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/expressad/exoplayer/h/z$a<",
            "Lcom/anythink/expressad/exoplayer/h/b/f<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final j:Lcom/anythink/expressad/exoplayer/h/t$a;

.field private final k:I

.field private final l:Lcom/anythink/expressad/exoplayer/j/t;

.field private final m:Lcom/anythink/expressad/exoplayer/h/b/e;

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/exoplayer/h/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/exoplayer/h/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/anythink/expressad/exoplayer/h/x;

.field private final q:[Lcom/anythink/expressad/exoplayer/h/x;

.field private final r:Lcom/anythink/expressad/exoplayer/h/b/b;

.field private s:Lcom/anythink/expressad/exoplayer/m;

.field private t:Lcom/anythink/expressad/exoplayer/h/b/f$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/expressad/exoplayer/h/b/f$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private u:J

.field private v:J


# direct methods
.method private constructor <init>(I[I[Lcom/anythink/expressad/exoplayer/m;Lcom/anythink/expressad/exoplayer/h/b/g;Lcom/anythink/expressad/exoplayer/h/z$a;Lcom/anythink/expressad/exoplayer/j/b;JILcom/anythink/expressad/exoplayer/h/t$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lcom/anythink/expressad/exoplayer/m;",
            "TT;",
            "Lcom/anythink/expressad/exoplayer/h/z$a<",
            "Lcom/anythink/expressad/exoplayer/h/b/f<",
            "TT;>;>;",
            "Lcom/anythink/expressad/exoplayer/j/b;",
            "JI",
            "Lcom/anythink/expressad/exoplayer/h/t$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->e:[I

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->f:[Lcom/anythink/expressad/exoplayer/m;

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->h:Lcom/anythink/expressad/exoplayer/h/b/g;

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->i:Lcom/anythink/expressad/exoplayer/h/z$a;

    iput-object p10, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iput p9, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->k:I

    new-instance p3, Lcom/anythink/expressad/exoplayer/j/t;

    const-string p4, "Loader:ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/anythink/expressad/exoplayer/j/t;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    new-instance p3, Lcom/anythink/expressad/exoplayer/h/b/e;

    invoke-direct {p3}, Lcom/anythink/expressad/exoplayer/h/b/e;-><init>()V

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->m:Lcom/anythink/expressad/exoplayer/h/b/e;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->o:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    array-length p4, p2

    :goto_0
    new-array p5, p4, [Lcom/anythink/expressad/exoplayer/h/x;

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    new-array p5, p4, [Z

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->g:[Z

    add-int/lit8 p5, p4, 0x1

    new-array p9, p5, [I

    new-array p5, p5, [Lcom/anythink/expressad/exoplayer/h/x;

    new-instance p10, Lcom/anythink/expressad/exoplayer/h/x;

    invoke-direct {p10, p6}, Lcom/anythink/expressad/exoplayer/h/x;-><init>(Lcom/anythink/expressad/exoplayer/j/b;)V

    iput-object p10, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    aput p1, p9, p3

    aput-object p10, p5, p3

    :goto_1
    if-ge p3, p4, :cond_1

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/x;

    invoke-direct {p1, p6}, Lcom/anythink/expressad/exoplayer/h/x;-><init>(Lcom/anythink/expressad/exoplayer/j/b;)V

    iget-object p10, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    aput-object p1, p10, p3

    add-int/lit8 p10, p3, 0x1

    aput-object p1, p5, p10

    aget p1, p2, p3

    aput p1, p9, p10

    move p3, p10

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/anythink/expressad/exoplayer/h/b/b;

    invoke-direct {p1, p9, p5}, Lcom/anythink/expressad/exoplayer/h/b/b;-><init>([I[Lcom/anythink/expressad/exoplayer/h/x;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->r:Lcom/anythink/expressad/exoplayer/h/b/b;

    iput-wide p7, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    iput-wide p7, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->v:J

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/b/c;JJLjava/io/IOException;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/b/c;->d()J

    move-result-wide v17

    instance-of v2, v1, Lcom/anythink/expressad/exoplayer/h/b/a;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/16 v21, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v17, v5

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {v0, v3}, Lcom/anythink/expressad/exoplayer/h/b/f;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->h:Lcom/anythink/expressad/exoplayer/h/b/g;

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/h/b/g;->f()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_2

    const-string v2, "ChunkSampleStream"

    const-string v3, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_4

    invoke-direct {v0, v3}, Lcom/anythink/expressad/exoplayer/h/b/f;->d(I)Lcom/anythink/expressad/exoplayer/h/b/a;

    move-result-object v2

    if-ne v2, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->v:J

    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    :cond_4
    const/16 v22, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v22, 0x0

    :goto_4
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->b:Lcom/anythink/expressad/exoplayer/j/k;

    iget v4, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->c:I

    iget v5, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->d:Lcom/anythink/expressad/exoplayer/m;

    iget v7, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->e:I

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    iget-wide v11, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    move-object/from16 v19, p6

    move/from16 v20, v22

    invoke-virtual/range {v2 .. v20}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_6

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->i:Lcom/anythink/expressad/exoplayer/h/z$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    const/4 v1, 0x2

    return v1

    :cond_6
    return v21
.end method

.method private a(JI)Lcom/anythink/expressad/exoplayer/h/b/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/anythink/expressad/exoplayer/h/b/f<",
            "TT;>.a;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->e:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->g:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->g:[Z

    aput-boolean v1, p3, v0

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/anythink/expressad/exoplayer/h/x;->i()V

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZ)I

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/b/f$a;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lcom/anythink/expressad/exoplayer/h/b/f$a;-><init>(Lcom/anythink/expressad/exoplayer/h/b/f;Lcom/anythink/expressad/exoplayer/h/b/f;Lcom/anythink/expressad/exoplayer/h/x;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private a(II)V
    .locals 2

    sub-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/h/b/f;->b(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v1

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/h/b/f;->b(II)I

    move-result p1

    :goto_0
    if-gt v0, p1, :cond_1

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/h/b/f;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(JZ)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->d()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZZ)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/x;->d()I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/x;->h()J

    move-result-wide v0

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->g:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, v0, v1, p3, v4}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/b/f;->b(II)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-static {p3, p2, p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/util/List;II)V

    :cond_1
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/b/c;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->b:Lcom/anythink/expressad/exoplayer/j/k;

    iget v4, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->c:I

    iget v5, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->d:Lcom/anythink/expressad/exoplayer/m;

    iget v7, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->e:I

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    iget-wide v11, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/b/c;->d()J

    move-result-wide v17

    invoke-virtual/range {v2 .. v18}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->i:Lcom/anythink/expressad/exoplayer/h/z$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/b/c;JJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->b:Lcom/anythink/expressad/exoplayer/j/k;

    iget v4, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->c:I

    iget v5, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->d:Lcom/anythink/expressad/exoplayer/m;

    iget v7, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->e:I

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    iget-wide v11, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/h/b/c;->d()J

    move-result-wide v17

    invoke-virtual/range {v2 .. v18}, Lcom/anythink/expressad/exoplayer/h/t$a;->b(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->i:Lcom/anythink/expressad/exoplayer/h/z$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/h/b/f$b;)V
    .locals 3
    .param p1    # Lcom/anythink/expressad/exoplayer/h/b/f$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/h/b/f$b<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->t:Lcom/anythink/expressad/exoplayer/h/b/f$b;

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/x;->j()V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/h/x;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {p1, p0}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t$d;)V

    return-void
.end method

.method private a(I)Z
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/b/a;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->e()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/exoplayer/h/b/a;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/h/x;->e()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/h/b/a;->a(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/h/b/c;)Z
    .locals 0

    instance-of p0, p0, Lcom/anythink/expressad/exoplayer/h/b/a;

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/h/b/f;)[Z
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->g:[Z

    return-object p0
.end method

.method private b(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/h/b/a;->a(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private b(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/expressad/exoplayer/h/b/f;->b(II)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-static {v1, v0, p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/util/List;II)V

    :cond_0
    return-void
.end method

.method private b(J)V
    .locals 10

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->v:J

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->i()V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/h/b/a;

    iget-wide v4, v3, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    cmp-long v6, v4, p1

    if-nez v6, :cond_1

    iget-wide v4, v3, Lcom/anythink/expressad/exoplayer/h/b/a;->a:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v4, v7

    if-nez v9, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    if-gtz v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/h/b/a;->a(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/h/x;->b(I)Z

    move-result v0

    const-wide/high16 v2, -0x8000000000000000L

    :goto_2
    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->b:J

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->e()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, p1, v2

    if-gez v5, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, p1, p2, v2}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZ)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->v:J

    goto :goto_2

    :goto_5
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/x;->i()V

    invoke-virtual {v4, p1, p2, v1}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZ)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    return-void

    :cond_7
    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    iput-boolean v1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->c:Z

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/t;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/t;->b()V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length p2, p1

    :goto_7
    if-ge v1, p2, :cond_9

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/h/b/f;)[I
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->e:[I

    return-object p0
.end method

.method private c(I)V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/b/a;

    iget-object v7, p1, Lcom/anythink/expressad/exoplayer/h/b/c;->d:Lcom/anythink/expressad/exoplayer/m;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->s:Lcom/anythink/expressad/exoplayer/m;

    invoke-virtual {v7, v0}, Lcom/anythink/expressad/exoplayer/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iget v3, p1, Lcom/anythink/expressad/exoplayer/h/b/c;->e:I

    iget-object v4, p1, Lcom/anythink/expressad/exoplayer/h/b/c;->f:Ljava/lang/Object;

    iget-wide v5, p1, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(ILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;J)V

    :cond_0
    iput-object v7, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->s:Lcom/anythink/expressad/exoplayer/m;

    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/exoplayer/h/b/f;)[Lcom/anythink/expressad/exoplayer/m;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->f:[Lcom/anythink/expressad/exoplayer/m;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/expressad/exoplayer/h/b/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->v:J

    return-wide v0
.end method

.method private d(I)Lcom/anythink/expressad/exoplayer/h/b/a;
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/b/a;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/util/List;II)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/h/b/a;->a(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/exoplayer/h/x;->a(I)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic e(Lcom/anythink/expressad/exoplayer/h/b/f;)Lcom/anythink/expressad/exoplayer/h/t$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    return-object p0
.end method

.method private f()Lcom/anythink/expressad/exoplayer/h/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->h:Lcom/anythink/expressad/exoplayer/h/b/g;

    return-object v0
.end method

.method private h()J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->h:Lcom/anythink/expressad/exoplayer/h/b/g;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/b/g;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method private i()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->t:Lcom/anythink/expressad/exoplayer/h/b/f$b;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->j()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/h/x;->j()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t$d;)V

    return-void
.end method

.method private j()Lcom/anythink/expressad/exoplayer/h/b/a;
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/h/b/a;

    return-object v0
.end method


# virtual methods
.method public final a(J)I
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->g()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/x;->k()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Lcom/anythink/expressad/exoplayer/h/x;->a(JZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    if-lez v1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/x;->e()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/anythink/expressad/exoplayer/h/b/f;->a(II)V

    :cond_3
    return v1
.end method

.method public final synthetic a(Lcom/anythink/expressad/exoplayer/j/t$c;JJLjava/io/IOException;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/b/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/h/b/c;->d()J

    move-result-wide v17

    instance-of v2, v1, Lcom/anythink/expressad/exoplayer/h/b/a;

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/16 v21, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v17, v5

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    invoke-direct {v0, v3}, Lcom/anythink/expressad/exoplayer/h/b/f;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->h:Lcom/anythink/expressad/exoplayer/h/b/g;

    invoke-interface {v6}, Lcom/anythink/expressad/exoplayer/h/b/g;->f()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v5, :cond_2

    const-string v2, "ChunkSampleStream"

    const-string v3, "Ignoring attempt to cancel non-cancelable load."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_4

    invoke-direct {v0, v3}, Lcom/anythink/expressad/exoplayer/h/b/f;->d(I)Lcom/anythink/expressad/exoplayer/h/b/a;

    move-result-object v2

    if-ne v2, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->v:J

    iput-wide v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    :cond_4
    const/16 v22, 0x1

    goto :goto_4

    :cond_5
    :goto_3
    const/16 v22, 0x0

    :goto_4
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget-object v3, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->b:Lcom/anythink/expressad/exoplayer/j/k;

    iget v4, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->c:I

    iget v5, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iget-object v6, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->d:Lcom/anythink/expressad/exoplayer/m;

    iget v7, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->e:I

    iget-object v8, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    iget-wide v11, v1, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    move-object/from16 v19, p6

    move/from16 v20, v22

    invoke-virtual/range {v2 .. v20}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v22, :cond_6

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->i:Lcom/anythink/expressad/exoplayer/h/z$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    const/4 v1, 0x2

    return v1

    :cond_6
    return v21
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/n;Lcom/anythink/expressad/exoplayer/c/e;Z)I
    .locals 7

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    iget-boolean v4, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->c:Z

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->b:J

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/expressad/exoplayer/h/x;->a(Lcom/anythink/expressad/exoplayer/n;Lcom/anythink/expressad/exoplayer/c/e;ZZJ)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/h/x;->e()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/anythink/expressad/exoplayer/h/b/f;->a(II)V

    :cond_1
    return p1
.end method

.method public final synthetic a(Lcom/anythink/expressad/exoplayer/j/t$c;JJ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p1

    check-cast v10, Lcom/anythink/expressad/exoplayer/h/b/c;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget-object v2, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->b:Lcom/anythink/expressad/exoplayer/j/k;

    iget v3, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->c:I

    iget v4, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iget-object v5, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->d:Lcom/anythink/expressad/exoplayer/m;

    iget v6, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->e:I

    iget-object v7, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->f:Ljava/lang/Object;

    iget-wide v8, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    move-object/from16 p1, v1

    iget-wide v0, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    move-object/from16 v16, v10

    move-wide v10, v0

    invoke-virtual/range {v16 .. v16}, Lcom/anythink/expressad/exoplayer/h/b/c;->d()J

    move-result-wide v16

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->i:Lcom/anythink/expressad/exoplayer/h/z$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    return-void
.end method

.method public final synthetic a(Lcom/anythink/expressad/exoplayer/j/t$c;JJZ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p1

    check-cast v10, Lcom/anythink/expressad/exoplayer/h/b/c;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget-object v2, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->b:Lcom/anythink/expressad/exoplayer/j/k;

    iget v3, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->c:I

    iget v4, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iget-object v5, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->d:Lcom/anythink/expressad/exoplayer/m;

    iget v6, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->e:I

    iget-object v7, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->f:Ljava/lang/Object;

    iget-wide v8, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    move-object/from16 p1, v1

    iget-wide v0, v10, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    move-object/from16 v16, v10

    move-wide v10, v0

    invoke-virtual/range {v16 .. v16}, Lcom/anythink/expressad/exoplayer/h/b/c;->d()J

    move-result-wide v16

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Lcom/anythink/expressad/exoplayer/h/t$a;->b(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, p0

    if-nez p6, :cond_1

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->i:Lcom/anythink/expressad/exoplayer/h/z$a;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/h/z$a;->a(Lcom/anythink/expressad/exoplayer/h/z;)V

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a_(J)V
    .locals 6

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/j/t;->a()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->h:Lcom/anythink/expressad/exoplayer/h/b/g;

    invoke-interface {p2}, Lcom/anythink/expressad/exoplayer/h/b/g;->c()I

    move-result p2

    if-gt p1, p2, :cond_1

    return-void

    :cond_1
    :goto_0
    if-ge p2, p1, :cond_3

    invoke-direct {p0, p2}, Lcom/anythink/expressad/exoplayer/h/b/f;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move p2, p1

    :goto_1
    if-ne p2, p1, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->j()Lcom/anythink/expressad/exoplayer/h/b/a;

    move-result-object p1

    iget-wide v4, p1, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    invoke-direct {p0, p2}, Lcom/anythink/expressad/exoplayer/h/b/f;->d(I)Lcom/anythink/expressad/exoplayer/h/b/a;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->v:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    :cond_5
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->c:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(IJJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->c()Z

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

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/t;->c()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/j/t;->a()Z

    return-void
.end method

.method public final c(J)Z
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    invoke-virtual {v1}, Lcom/anythink/expressad/exoplayer/j/t;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->j()Lcom/anythink/expressad/exoplayer/h/b/a;

    :cond_1
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->m:Lcom/anythink/expressad/exoplayer/h/b/e;

    iget-boolean v4, v3, Lcom/anythink/expressad/exoplayer/h/b/e;->b:Z

    iget-object v5, v3, Lcom/anythink/expressad/exoplayer/h/b/e;->a:Lcom/anythink/expressad/exoplayer/h/b/c;

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/anythink/expressad/exoplayer/h/b/e;->a:Lcom/anythink/expressad/exoplayer/h/b/c;

    iput-boolean v2, v3, Lcom/anythink/expressad/exoplayer/h/b/e;->b:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    if-eqz v4, :cond_2

    iput-wide v6, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    iput-boolean v3, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->c:Z

    return v3

    :cond_2
    if-nez v5, :cond_3

    return v2

    :cond_3
    instance-of v4, v5, Lcom/anythink/expressad/exoplayer/h/b/a;

    if-eqz v4, :cond_7

    move-object v4, v5

    check-cast v4, Lcom/anythink/expressad/exoplayer/h/b/a;

    if-eqz v1, :cond_6

    iget-wide v8, v4, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    iget-wide v10, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    cmp-long v1, v8, v10

    if-nez v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    const-wide/high16 v10, -0x8000000000000000L

    :cond_5
    iput-wide v10, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->b:J

    iput-wide v6, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    :cond_6
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->r:Lcom/anythink/expressad/exoplayer/h/b/b;

    invoke-virtual {v4, v1}, Lcom/anythink/expressad/exoplayer/h/b/a;->a(Lcom/anythink/expressad/exoplayer/h/b/b;)V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->l:Lcom/anythink/expressad/exoplayer/j/t;

    iget v2, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->k:I

    invoke-virtual {v1, v5, v0, v2}, Lcom/anythink/expressad/exoplayer/j/t;->a(Lcom/anythink/expressad/exoplayer/j/t$c;Lcom/anythink/expressad/exoplayer/j/t$a;I)J

    move-result-wide v17

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->j:Lcom/anythink/expressad/exoplayer/h/t$a;

    iget-object v7, v5, Lcom/anythink/expressad/exoplayer/h/b/c;->b:Lcom/anythink/expressad/exoplayer/j/k;

    iget v8, v5, Lcom/anythink/expressad/exoplayer/h/b/c;->c:I

    iget v9, v0, Lcom/anythink/expressad/exoplayer/h/b/f;->a:I

    iget-object v10, v5, Lcom/anythink/expressad/exoplayer/h/b/c;->d:Lcom/anythink/expressad/exoplayer/m;

    iget v11, v5, Lcom/anythink/expressad/exoplayer/h/b/c;->e:I

    iget-object v12, v5, Lcom/anythink/expressad/exoplayer/h/b/c;->f:Ljava/lang/Object;

    iget-wide v13, v5, Lcom/anythink/expressad/exoplayer/h/b/c;->g:J

    iget-wide v1, v5, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    move-wide v15, v1

    invoke-virtual/range {v6 .. v18}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;IILcom/anythink/expressad/exoplayer/m;ILjava/lang/Object;JJJ)V

    return v3

    :cond_8
    :goto_0
    return v2
.end method

.method public final d()J
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->c:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->v:J

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->j()Lcom/anythink/expressad/exoplayer/h/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/h/b/i;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/h/b/a;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/h/x;->g()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()J
    .locals 2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->u:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->c:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/h/b/f;->j()Lcom/anythink/expressad/exoplayer/h/b/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/h/b/c;->h:J

    return-wide v0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->p:Lcom/anythink/expressad/exoplayer/h/x;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/b/f;->q:[Lcom/anythink/expressad/exoplayer/h/x;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/h/x;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
