.class public final Lcom/anythink/expressad/exoplayer/e/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/e/e;
.implements Lcom/anythink/expressad/exoplayer/e/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/e/a/g$b;,
        Lcom/anythink/expressad/exoplayer/e/a/g$c;,
        Lcom/anythink/expressad/exoplayer/e/a/g$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/anythink/expressad/exoplayer/e/h;

.field public static final e:I = 0x1

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I

.field private static final j:J = 0x40000L

.field private static final k:J = 0xa00000L


# instance fields
.field private A:[[J

.field private B:I

.field private C:J

.field private D:Z

.field private final l:I

.field private final m:Lcom/anythink/expressad/exoplayer/k/s;

.field private final n:Lcom/anythink/expressad/exoplayer/k/s;

.field private final o:Lcom/anythink/expressad/exoplayer/k/s;

.field private final p:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/anythink/expressad/exoplayer/e/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:J

.field private t:I

.field private u:Lcom/anythink/expressad/exoplayer/k/s;

.field private v:I

.field private w:I

.field private x:I

.field private y:Lcom/anythink/expressad/exoplayer/e/g;

.field private z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/e/a/g$1;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/e/a/g$1;-><init>()V

    sput-object v0, Lcom/anythink/expressad/exoplayer/e/a/g;->d:Lcom/anythink/expressad/exoplayer/e/h;

    const-string v0, "qt  "

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/af;->f(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/anythink/expressad/exoplayer/e/a/g;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/e/a/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->l:I

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    sget-object v0, Lcom/anythink/expressad/exoplayer/k/p;->a:[B

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;-><init>([B)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->m:Lcom/anythink/expressad/exoplayer/k/s;

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->n:Lcom/anythink/expressad/exoplayer/k/s;

    const/4 p1, -0x1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    return-void
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/e/a/m;J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/e/a/m;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/e/a/m;->b(J)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static a(Lcom/anythink/expressad/exoplayer/e/a/m;JJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/anythink/expressad/exoplayer/e/a/g;->a(Lcom/anythink/expressad/exoplayer/e/a/m;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    :cond_0
    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/e/a/m;->c:[J

    aget-wide p1, p0, p1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/i;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/exoplayer/e/a/a$a;",
            "Lcom/anythink/expressad/exoplayer/e/i;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/exoplayer/e/a/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p1, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aX:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget v3, v2, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->I:I

    if-ne v3, v4, :cond_0

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->H:I

    invoke-virtual {p1, v3}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    iget-boolean v9, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->D:Z

    move-object v3, v2

    move v8, p3

    invoke-static/range {v3 .. v9}, Lcom/anythink/expressad/exoplayer/e/a/b;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/a/a$b;JLcom/anythink/expressad/exoplayer/d/e;ZZ)Lcom/anythink/expressad/exoplayer/e/a/j;

    move-result-object v3

    if-eqz v3, :cond_0

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->J:I

    invoke-virtual {v2, v4}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->e(I)Lcom/anythink/expressad/exoplayer/e/a/a$a;

    move-result-object v2

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->K:I

    invoke-virtual {v2, v4}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->e(I)Lcom/anythink/expressad/exoplayer/e/a/a$a;

    move-result-object v2

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->L:I

    invoke-virtual {v2, v4}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->e(I)Lcom/anythink/expressad/exoplayer/e/a/a$a;

    move-result-object v2

    invoke-static {v3, v2, p2}, Lcom/anythink/expressad/exoplayer/e/a/b;->a(Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/i;)Lcom/anythink/expressad/exoplayer/e/a/m;

    move-result-object v2

    iget v3, v2, Lcom/anythink/expressad/exoplayer/e/a/m;->b:I

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/anythink/expressad/exoplayer/e/i;

    invoke-direct {v3}, Lcom/anythink/expressad/exoplayer/e/i;-><init>()V

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aF:I

    invoke-virtual {v1, v4}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->d(I)Lcom/anythink/expressad/exoplayer/e/a/a$b;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-boolean v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->D:Z

    invoke-static {v4, v5}, Lcom/anythink/expressad/exoplayer/e/a/b;->a(Lcom/anythink/expressad/exoplayer/e/a/a$b;Z)Lcom/anythink/expressad/exoplayer/g/a;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/exoplayer/e/i;->a(Lcom/anythink/expressad/exoplayer/g/a;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->l:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    :try_start_0
    invoke-direct {v0, v1, v3, v5}, Lcom/anythink/expressad/exoplayer/e/a/g;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/i;Z)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catch Lcom/anythink/expressad/exoplayer/e/a/b$g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v3, Lcom/anythink/expressad/exoplayer/e/i;

    invoke-direct {v3}, Lcom/anythink/expressad/exoplayer/e/i;-><init>()V

    invoke-direct {v0, v1, v3, v6}, Lcom/anythink/expressad/exoplayer/e/a/g;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;Lcom/anythink/expressad/exoplayer/e/i;Z)Ljava/util/ArrayList;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v11, -0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    if-ge v7, v5, :cond_8

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/anythink/expressad/exoplayer/e/a/m;

    iget-object v15, v14, Lcom/anythink/expressad/exoplayer/e/a/m;->a:Lcom/anythink/expressad/exoplayer/e/a/j;

    new-instance v10, Lcom/anythink/expressad/exoplayer/e/a/g$b;

    iget-object v8, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->y:Lcom/anythink/expressad/exoplayer/e/g;

    iget v9, v15, Lcom/anythink/expressad/exoplayer/e/a/j;->d:I

    invoke-interface {v8, v7, v9}, Lcom/anythink/expressad/exoplayer/e/g;->a(II)Lcom/anythink/expressad/exoplayer/e/m;

    move-result-object v8

    invoke-direct {v10, v15, v14, v8}, Lcom/anythink/expressad/exoplayer/e/a/g$b;-><init>(Lcom/anythink/expressad/exoplayer/e/a/j;Lcom/anythink/expressad/exoplayer/e/a/m;Lcom/anythink/expressad/exoplayer/e/m;)V

    iget v8, v14, Lcom/anythink/expressad/exoplayer/e/a/m;->e:I

    add-int/lit8 v8, v8, 0x1e

    iget-object v9, v15, Lcom/anythink/expressad/exoplayer/e/a/j;->h:Lcom/anythink/expressad/exoplayer/m;

    invoke-virtual {v9, v8}, Lcom/anythink/expressad/exoplayer/m;->a(I)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v8

    iget v9, v15, Lcom/anythink/expressad/exoplayer/e/a/j;->d:I

    if-ne v9, v6, :cond_4

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/e/i;->a()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, v3, Lcom/anythink/expressad/exoplayer/e/i;->b:I

    iget v6, v3, Lcom/anythink/expressad/exoplayer/e/i;->c:I

    invoke-virtual {v8, v9, v6}, Lcom/anythink/expressad/exoplayer/m;->a(II)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v8

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v8, v4}, Lcom/anythink/expressad/exoplayer/m;->a(Lcom/anythink/expressad/exoplayer/g/a;)Lcom/anythink/expressad/exoplayer/m;

    move-result-object v8

    :cond_4
    iget-object v6, v10, Lcom/anythink/expressad/exoplayer/e/a/g$b;->c:Lcom/anythink/expressad/exoplayer/e/m;

    invoke-interface {v6, v8}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/m;)V

    iget-wide v8, v15, Lcom/anythink/expressad/exoplayer/e/a/j;->g:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v8, v16

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    iget-wide v8, v14, Lcom/anythink/expressad/exoplayer/e/a/m;->h:J

    :goto_4
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget v6, v15, Lcom/anythink/expressad/exoplayer/e/a/j;->d:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    const/4 v6, -0x1

    if-ne v11, v6, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_5

    :cond_6
    const/4 v6, -0x1

    :cond_7
    :goto_5
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    iput v11, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->B:I

    iput-wide v12, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->C:J

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/anythink/expressad/exoplayer/e/a/g$b;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/anythink/expressad/exoplayer/e/a/g$b;

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/e/a/g;->a([Lcom/anythink/expressad/exoplayer/e/a/g$b;)[[J

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->A:[[J

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->y:Lcom/anythink/expressad/exoplayer/e/g;

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/e/g;->c_()V

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->y:Lcom/anythink/expressad/exoplayer/e/g;

    invoke-interface {v1, v0}, Lcom/anythink/expressad/exoplayer/e/g;->a(Lcom/anythink/expressad/exoplayer/e/k;)V

    return-void
.end method

.method private static a(I)Z
    .locals 1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->W:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->H:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->X:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->Y:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->ar:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->as:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->at:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->V:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->au:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->av:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->aw:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->ax:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->ay:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->T:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->f:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/a;->aF:I

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

.method private static a(Lcom/anythink/expressad/exoplayer/k/s;)Z
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    sget v1, Lcom/anythink/expressad/exoplayer/e/a/g;->i:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    sget v1, Lcom/anythink/expressad/exoplayer/e/a/g;->i:I

    if-ne v0, v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a([Lcom/anythink/expressad/exoplayer/e/a/g$b;)[[J
    .locals 15

    array-length v0, p0

    new-array v0, v0, [[J

    array-length v1, p0

    new-array v1, v1, [I

    array-length v2, p0

    new-array v2, v2, [J

    array-length v3, p0

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget v6, v6, Lcom/anythink/expressad/exoplayer/e/a/m;->b:I

    new-array v6, v6, [J

    aput-object v6, v0, v5

    aget-object v6, p0, v5

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/e/a/m;->f:[J

    aget-wide v7, v6, v4

    aput-wide v7, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_4

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_2
    array-length v12, p0

    if-ge v11, v12, :cond_2

    aget-boolean v12, v3, v11

    if-nez v12, :cond_1

    aget-wide v12, v2, v11

    cmp-long v14, v12, v8

    if-gtz v14, :cond_1

    aget-wide v8, v2, v11

    move v10, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    aget v8, v1, v10

    aget-object v9, v0, v10

    aput-wide v5, v9, v8

    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/m;->d:[I

    aget v9, v9, v8

    int-to-long v11, v9

    add-long/2addr v5, v11

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aput v8, v1, v10

    aget-object v11, v0, v10

    array-length v11, v11

    if-ge v8, v11, :cond_3

    aget-object v9, p0, v10

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/m;->f:[J

    aget-wide v8, v9, v8

    aput-wide v8, v2, v10

    goto :goto_1

    :cond_3
    aput-boolean v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private b(J)V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget-wide v2, v0, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aV:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/a;->aU:I

    sget v3, Lcom/anythink/expressad/exoplayer/e/a/a;->G:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/e/a/g;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput v1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->q:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->a(Lcom/anythink/expressad/exoplayer/e/a/a$a;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->q:I

    if-eq p1, v1, :cond_3

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/g;->d()V

    :cond_3
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
    .locals 9

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-interface {p1, v0, v3, v1, v2}, Lcom/anythink/expressad/exoplayer/e/f;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    iput v1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    :cond_1
    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-interface {p1, v0, v1, v1}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v4

    :goto_0
    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

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

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

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

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    goto :goto_0

    :cond_4
    :goto_1
    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v6, v0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_e

    iget v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->G:I

    if-eq v4, v5, :cond_6

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->I:I

    if-eq v4, v5, :cond_6

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->J:I

    if-eq v4, v5, :cond_6

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->K:I

    if-eq v4, v5, :cond_6

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->L:I

    if-eq v4, v5, :cond_6

    sget v5, Lcom/anythink/expressad/exoplayer/e/a/a;->U:I

    if-ne v4, v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v5, :cond_8

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    add-long/2addr v0, v3

    iget p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v3, p1

    sub-long/2addr v0, v3

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    invoke-direct {v3, v4, v0, v1}, Lcom/anythink/expressad/exoplayer/e/a/a$a;-><init>(IJ)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v3, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    iget p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-nez p1, :cond_7

    invoke-direct {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/e/a/g;->b(J)V

    goto/16 :goto_9

    :cond_7
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/g;->d()V

    goto/16 :goto_9

    :cond_8
    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->W:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->H:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->X:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->Y:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->ar:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->as:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->at:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->V:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->au:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->av:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->aw:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->ax:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->ay:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->T:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->f:I

    if-eq v4, p1, :cond_a

    sget p1, Lcom/anythink/expressad/exoplayer/e/a/a;->aF:I

    if-ne v4, p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eqz p1, :cond_d

    if-ne v0, v1, :cond_b

    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    :goto_6
    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_7

    :cond_c
    const/4 p1, 0x0

    :goto_7
    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    new-instance p1, Lcom/anythink/expressad/exoplayer/k/s;

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/k/s;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    :goto_8
    iput v2, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->q:I

    :goto_9
    return v2

    :cond_e
    new-instance p1, Lcom/anythink/expressad/exoplayer/t;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lcom/anythink/expressad/exoplayer/e/f;Lcom/anythink/expressad/exoplayer/e/j;)Z
    .locals 9

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    iget v2, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    iget-object p2, v4, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v4, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v4, v1}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    sget p2, Lcom/anythink/expressad/exoplayer/e/a/a;->f:I

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result p2

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/g;->i:I

    if-ne p2, v0, :cond_0

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result p2

    sget v0, Lcom/anythink/expressad/exoplayer/e/a/g;->i:I

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->D:Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    new-instance p2, Lcom/anythink/expressad/exoplayer/e/a/a$b;

    iget v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-direct {p2, v0, v1}, Lcom/anythink/expressad/exoplayer/e/a/a$b;-><init>(ILcom/anythink/expressad/exoplayer/k/s;)V

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->a(Lcom/anythink/expressad/exoplayer/e/a/a$b;)V

    goto :goto_2

    :cond_4
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_6

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    :cond_5
    :goto_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    const/4 p1, 0x1

    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/anythink/expressad/exoplayer/e/a/g;->b(J)V

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->q:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_7

    return v6

    :cond_7
    return v5
.end method

.method private c(J)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v10, 0x1

    const-wide v11, 0x7fffffffffffffffL

    const/4 v13, 0x1

    const-wide v14, 0x7fffffffffffffffL

    :goto_0
    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    array-length v3, v1

    if-ge v7, v3, :cond_6

    aget-object v1, v1, v7

    iget v3, v1, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget v4, v1, Lcom/anythink/expressad/exoplayer/e/a/m;->b:I

    if-eq v3, v4, :cond_5

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/m;->c:[J

    aget-wide v4, v1, v3

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->A:[[J

    aget-object v1, v1, v7

    aget-wide v16, v1, v3

    sub-long v4, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v1, v4, v18

    if-ltz v1, :cond_1

    const-wide/32 v18, 0x40000

    cmp-long v1, v4, v18

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_2

    if-nez v13, :cond_3

    :cond_2
    if-ne v1, v13, :cond_4

    cmp-long v3, v4, v14

    if-gez v3, :cond_4

    :cond_3
    move v13, v1

    move-wide v14, v4

    move v6, v7

    move-wide/from16 v11, v16

    :cond_4
    cmp-long v3, v16, v8

    if-gez v3, :cond_5

    move v10, v1

    move v2, v7

    move-wide/from16 v8, v16

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v8, v3

    if-eqz v1, :cond_8

    if-eqz v10, :cond_8

    const-wide/32 v3, 0xa00000

    add-long/2addr v8, v3

    cmp-long v1, v11, v8

    if-gez v1, :cond_7

    goto :goto_3

    :cond_7
    return v2

    :cond_8
    :goto_3
    return v6
.end method

.method private c(Lcom/anythink/expressad/exoplayer/e/f;Lcom/anythink/expressad/exoplayer/e/j;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v2

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    const-wide/32 v5, 0x40000

    const-wide/16 v7, 0x0

    const/4 v9, -0x1

    if-ne v4, v9, :cond_9

    const/4 v4, 0x0

    const/4 v11, 0x1

    const-wide v14, 0x7fffffffffffffffL

    const/16 v16, 0x1

    const-wide v17, 0x7fffffffffffffffL

    const/16 v19, -0x1

    const/16 v20, -0x1

    const-wide v21, 0x7fffffffffffffffL

    :goto_0
    iget-object v10, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    array-length v9, v10

    if-ge v4, v9, :cond_6

    aget-object v9, v10, v4

    iget v10, v9, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget v12, v9, Lcom/anythink/expressad/exoplayer/e/a/m;->b:I

    if-eq v10, v12, :cond_5

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/m;->c:[J

    aget-wide v12, v9, v10

    iget-object v9, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->A:[[J

    aget-object v9, v9, v4

    aget-wide v23, v9, v10

    sub-long/2addr v12, v2

    cmp-long v9, v12, v7

    if-ltz v9, :cond_1

    cmp-long v9, v12, v5

    if-ltz v9, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_2

    if-nez v11, :cond_3

    :cond_2
    if-ne v9, v11, :cond_4

    cmp-long v10, v12, v21

    if-gez v10, :cond_4

    :cond_3
    move/from16 v20, v4

    move v11, v9

    move-wide/from16 v21, v12

    move-wide/from16 v17, v23

    :cond_4
    cmp-long v10, v23, v14

    if-gez v10, :cond_5

    move/from16 v19, v4

    move/from16 v16, v9

    move-wide/from16 v14, v23

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const/4 v9, -0x1

    goto :goto_0

    :cond_6
    const-wide v9, 0x7fffffffffffffffL

    cmp-long v4, v14, v9

    if-eqz v4, :cond_8

    if-eqz v16, :cond_8

    const-wide/32 v9, 0xa00000

    add-long/2addr v14, v9

    cmp-long v4, v17, v14

    if-gez v4, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v4, v19

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v4, v20

    :goto_4
    iput v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    const/4 v9, -0x1

    if-ne v4, v9, :cond_9

    return v9

    :cond_9
    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    iget v9, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    aget-object v4, v4, v9

    iget-object v9, v4, Lcom/anythink/expressad/exoplayer/e/a/g$b;->c:Lcom/anythink/expressad/exoplayer/e/m;

    iget v10, v4, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    iget-object v11, v4, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget-object v12, v11, Lcom/anythink/expressad/exoplayer/e/a/m;->c:[J

    aget-wide v13, v12, v10

    iget-object v11, v11, Lcom/anythink/expressad/exoplayer/e/a/m;->d:[I

    aget v11, v11, v10

    sub-long v2, v13, v2

    iget v12, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    int-to-long v5, v12

    add-long/2addr v2, v5

    cmp-long v5, v2, v7

    if-ltz v5, :cond_f

    const-wide/32 v5, 0x40000

    cmp-long v7, v2, v5

    if-ltz v7, :cond_a

    move-object/from16 v1, p2

    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_a
    iget-object v5, v4, Lcom/anythink/expressad/exoplayer/e/a/g$b;->a:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget v5, v5, Lcom/anythink/expressad/exoplayer/e/a/j;->i:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    const-wide/16 v5, 0x8

    add-long/2addr v2, v5

    add-int/lit8 v11, v11, -0x8

    :cond_b
    long-to-int v3, v2

    invoke-interface {v1, v3}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    iget-object v2, v4, Lcom/anythink/expressad/exoplayer/e/a/g$b;->a:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->l:I

    if-eqz v2, :cond_d

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->n:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    const/4 v5, 0x0

    aput-byte v5, v3, v5

    const/4 v6, 0x1

    aput-byte v5, v3, v6

    const/4 v6, 0x2

    aput-byte v5, v3, v6

    rsub-int/lit8 v3, v2, 0x4

    :goto_5
    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    if-ge v5, v11, :cond_e

    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->n:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-interface {v1, v5, v3, v2}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->n:Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->n:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v5

    iput v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->m:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v5, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->m:Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v7, 0x4

    invoke-interface {v9, v5, v7}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    add-int/2addr v5, v7

    iput v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    add-int/2addr v11, v3

    goto :goto_5

    :cond_c
    const/4 v6, 0x0

    invoke-interface {v9, v1, v5, v6}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I

    move-result v5

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    goto :goto_5

    :cond_d
    :goto_6
    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    if-ge v2, v11, :cond_e

    sub-int v2, v11, v2

    const/4 v3, 0x0

    invoke-interface {v9, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I

    move-result v2

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    goto :goto_6

    :cond_e
    move v13, v11

    iget-object v1, v4, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/e/a/m;->f:[J

    aget-wide v5, v2, v10

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/m;->g:[I

    aget v12, v1, v10

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v10, v5

    invoke-interface/range {v9 .. v15}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    iget v1, v4, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v4, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    return v1

    :cond_f
    const/4 v2, 0x1

    move-object/from16 v1, p2

    :goto_7
    iput-wide v13, v1, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    return v2
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->q:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    return-void
.end method

.method private d(J)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    invoke-virtual {v4, p1, p2}, Lcom/anythink/expressad/exoplayer/e/a/m;->a(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v4, p1, p2}, Lcom/anythink/expressad/exoplayer/e/a/m;->b(J)I

    move-result v5

    :cond_0
    iput v5, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/exoplayer/e/f;Lcom/anythink/expressad/exoplayer/e/j;)I
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_0
    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->q:I

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-eqz v3, :cond_1c

    const-wide/32 v10, 0x40000

    const/4 v12, 0x2

    if-eq v3, v8, :cond_13

    if-ne v3, v12, :cond_12

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v14

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    if-ne v3, v6, :cond_a

    const-wide v16, 0x7fffffffffffffffL

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    move-wide/from16 v24, v20

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v13, 0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    :goto_0
    iget-object v12, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    array-length v9, v12

    if-ge v3, v9, :cond_7

    aget-object v9, v12, v3

    iget v12, v9, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget v8, v9, Lcom/anythink/expressad/exoplayer/e/a/m;->b:I

    if-eq v12, v8, :cond_6

    iget-object v8, v9, Lcom/anythink/expressad/exoplayer/e/a/m;->c:[J

    aget-wide v26, v8, v12

    iget-object v8, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->A:[[J

    aget-object v8, v8, v3

    aget-wide v28, v8, v12

    sub-long v26, v26, v14

    cmp-long v8, v26, v4

    if-ltz v8, :cond_2

    cmp-long v8, v26, v10

    if-ltz v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-nez v8, :cond_3

    if-nez v13, :cond_4

    :cond_3
    if-ne v8, v13, :cond_5

    cmp-long v9, v26, v24

    if-gez v9, :cond_5

    :cond_4
    move/from16 v23, v3

    move v13, v8

    move-wide/from16 v24, v26

    move-wide/from16 v20, v28

    :cond_5
    cmp-long v9, v28, v18

    if-gez v9, :cond_6

    move/from16 v22, v3

    move v7, v8

    move-wide/from16 v18, v28

    :cond_6
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    cmp-long v3, v18, v16

    if-eqz v3, :cond_9

    if-eqz v7, :cond_9

    const-wide/32 v7, 0xa00000

    add-long v18, v18, v7

    cmp-long v3, v20, v18

    if-gez v3, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v3, v22

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v3, v23

    :goto_4
    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    if-ne v3, v6, :cond_a

    return v6

    :cond_a
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    iget v7, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    aget-object v3, v3, v7

    iget-object v7, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->c:Lcom/anythink/expressad/exoplayer/e/m;

    iget v8, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    iget-object v9, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget-object v12, v9, Lcom/anythink/expressad/exoplayer/e/a/m;->c:[J

    move-object/from16 v16, v7

    aget-wide v6, v12, v8

    iget-object v9, v9, Lcom/anythink/expressad/exoplayer/e/a/m;->d:[I

    aget v9, v9, v8

    sub-long v14, v6, v14

    iget v12, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    int-to-long v10, v12

    add-long/2addr v14, v10

    cmp-long v10, v14, v4

    if-ltz v10, :cond_11

    const-wide/32 v4, 0x40000

    cmp-long v10, v14, v4

    if-ltz v10, :cond_b

    goto/16 :goto_8

    :cond_b
    iget-object v2, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->a:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->i:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    const-wide/16 v4, 0x8

    add-long/2addr v14, v4

    add-int/lit8 v9, v9, -0x8

    :cond_c
    long-to-int v2, v14

    invoke-interface {v1, v2}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    iget-object v2, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->a:Lcom/anythink/expressad/exoplayer/e/a/j;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/e/a/j;->l:I

    if-eqz v2, :cond_f

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->n:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v5

    const/4 v6, 0x1

    aput-byte v5, v4, v6

    const/4 v6, 0x2

    aput-byte v5, v4, v6

    rsub-int/lit8 v4, v2, 0x4

    :goto_5
    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    if-ge v5, v9, :cond_e

    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    if-nez v5, :cond_d

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->n:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v5, v5, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-interface {v1, v5, v4, v2}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->n:Lcom/anythink/expressad/exoplayer/k/s;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->n:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/k/s;->m()I

    move-result v5

    iput v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->m:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v5, v6}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->m:Lcom/anythink/expressad/exoplayer/k/s;

    move-object/from16 v7, v16

    const/4 v10, 0x4

    invoke-interface {v7, v5, v10}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/k/s;I)V

    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    add-int/2addr v5, v10

    iput v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    add-int/2addr v9, v4

    goto :goto_5

    :cond_d
    move-object/from16 v7, v16

    const/4 v6, 0x0

    invoke-interface {v7, v1, v5, v6}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I

    move-result v5

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    sub-int/2addr v6, v5

    iput v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    goto :goto_5

    :cond_e
    move-object/from16 v7, v16

    goto :goto_7

    :cond_f
    move-object/from16 v7, v16

    :goto_6
    iget v2, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    if-ge v2, v9, :cond_10

    sub-int v2, v9, v2

    const/4 v4, 0x0

    invoke-interface {v7, v1, v2, v4}, Lcom/anythink/expressad/exoplayer/e/m;->a(Lcom/anythink/expressad/exoplayer/e/f;IZ)I

    move-result v2

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    iget v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    sub-int/2addr v4, v2

    iput v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    goto :goto_6

    :cond_10
    :goto_7
    move/from16 v20, v9

    iget-object v1, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    iget-object v2, v1, Lcom/anythink/expressad/exoplayer/e/a/m;->f:[J

    aget-wide v17, v2, v8

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/e/a/m;->g:[I

    aget v19, v1, v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v7

    invoke-interface/range {v16 .. v22}, Lcom/anythink/expressad/exoplayer/e/m;->a(JIIILcom/anythink/expressad/exoplayer/e/m$a;)V

    iget v1, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v3, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    iput v1, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    return v1

    :cond_11
    :goto_8
    const/4 v4, 0x1

    iput-wide v6, v2, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    return v4

    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_13
    iget-wide v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-object v8, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    if-eqz v8, :cond_18

    iget-object v8, v8, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget v9, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    long-to-int v4, v3

    invoke-interface {v1, v8, v9, v4}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->f:I

    if-ne v3, v4, :cond_17

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v3, v7}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v4

    sget v7, Lcom/anythink/expressad/exoplayer/e/a/g;->i:I

    if-ne v4, v7, :cond_14

    :goto_9
    const/4 v3, 0x1

    goto :goto_a

    :cond_14
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/exoplayer/k/s;->d(I)V

    :cond_15
    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/k/s;->a()I

    move-result v4

    if-lez v4, :cond_16

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v4

    sget v7, Lcom/anythink/expressad/exoplayer/e/a/g;->i:I

    if-ne v4, v7, :cond_15

    goto :goto_9

    :cond_16
    const/4 v3, 0x0

    :goto_a
    iput-boolean v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->D:Z

    goto :goto_b

    :cond_17
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    new-instance v4, Lcom/anythink/expressad/exoplayer/e/a/a$b;

    iget v7, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    iget-object v8, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-direct {v4, v7, v8}, Lcom/anythink/expressad/exoplayer/e/a/a$b;-><init>(ILcom/anythink/expressad/exoplayer/k/s;)V

    invoke-virtual {v3, v4}, Lcom/anythink/expressad/exoplayer/e/a/a$a;->a(Lcom/anythink/expressad/exoplayer/e/a/a$b;)V

    goto :goto_b

    :cond_18
    const-wide/32 v7, 0x40000

    cmp-long v9, v3, v7

    if-gez v9, :cond_1a

    long-to-int v4, v3

    invoke-interface {v1, v4}, Lcom/anythink/expressad/exoplayer/e/f;->c(I)V

    :cond_19
    :goto_b
    const/4 v3, 0x0

    goto :goto_c

    :cond_1a
    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v7

    add-long/2addr v7, v3

    iput-wide v7, v2, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    const/4 v3, 0x1

    :goto_c
    invoke-direct {v0, v5, v6}, Lcom/anythink/expressad/exoplayer/e/a/g;->b(J)V

    if-eqz v3, :cond_1b

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->q:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1b

    const/4 v9, 0x1

    goto :goto_d

    :cond_1b
    const/4 v9, 0x0

    :goto_d
    if-eqz v9, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1c
    const/4 v3, 0x1

    iget v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    if-nez v6, :cond_1e

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v6, v6, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    const/4 v8, 0x0

    invoke-interface {v1, v6, v8, v7, v3}, Lcom/anythink/expressad/exoplayer/e/f;->a([BIIZ)Z

    move-result v6

    if-nez v6, :cond_1d

    goto/16 :goto_19

    :cond_1d
    iput v7, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v3, v8}, Lcom/anythink/expressad/exoplayer/k/s;->c(I)V

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/k/s;->h()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/k/s;->i()I

    move-result v3

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    :cond_1e
    iget-wide v8, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    const-wide/16 v10, 0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_1f

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    invoke-interface {v1, v3, v7, v7}, Lcom/anythink/expressad/exoplayer/e/f;->b([BII)V

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    add-int/2addr v3, v7

    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    invoke-virtual {v3}, Lcom/anythink/expressad/exoplayer/k/s;->n()J

    move-result-wide v3

    :goto_e
    iput-wide v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    goto :goto_f

    :cond_1f
    cmp-long v3, v8, v4

    if-nez v3, :cond_21

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->d()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v8, v3, v5

    if-nez v8, :cond_20

    iget-object v8, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_20

    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget-wide v3, v3, Lcom/anythink/expressad/exoplayer/e/a/a$a;->aV:J

    :cond_20
    cmp-long v8, v3, v5

    if-eqz v8, :cond_21

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    goto :goto_e

    :cond_21
    :goto_f
    iget-wide v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v8, v5

    cmp-long v6, v3, v8

    if-ltz v6, :cond_2b

    iget v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->G:I

    if-eq v3, v4, :cond_23

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->I:I

    if-eq v3, v4, :cond_23

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->J:I

    if-eq v3, v4, :cond_23

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->K:I

    if-eq v3, v4, :cond_23

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->L:I

    if-eq v3, v4, :cond_23

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->U:I

    if-ne v3, v4, :cond_22

    goto :goto_10

    :cond_22
    const/4 v4, 0x0

    goto :goto_11

    :cond_23
    :goto_10
    const/4 v4, 0x1

    :goto_11
    if-eqz v4, :cond_25

    invoke-interface/range {p1 .. p1}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    add-long/2addr v3, v5

    iget v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    iget-object v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/anythink/expressad/exoplayer/e/a/a$a;

    iget v7, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->r:I

    invoke-direct {v6, v7, v3, v4}, Lcom/anythink/expressad/exoplayer/e/a/a$a;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    iget v7, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    int-to-long v7, v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_24

    invoke-direct {v0, v3, v4}, Lcom/anythink/expressad/exoplayer/e/a/g;->b(J)V

    goto :goto_12

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/exoplayer/e/a/g;->d()V

    :goto_12
    const/4 v3, 0x1

    goto/16 :goto_18

    :cond_25
    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->W:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->H:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->X:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->Y:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->ar:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->as:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->at:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->V:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->au:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->av:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aw:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->ax:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->ay:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->T:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->f:I

    if-eq v3, v4, :cond_27

    sget v4, Lcom/anythink/expressad/exoplayer/e/a/a;->aF:I

    if-ne v3, v4, :cond_26

    goto :goto_13

    :cond_26
    const/4 v4, 0x0

    goto :goto_14

    :cond_27
    :goto_13
    const/4 v4, 0x1

    :goto_14
    if-eqz v4, :cond_2a

    if-ne v5, v7, :cond_28

    const/4 v4, 0x1

    goto :goto_15

    :cond_28
    const/4 v4, 0x0

    :goto_15
    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-wide v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v8, v3, v5

    if-gtz v8, :cond_29

    const/4 v4, 0x1

    goto :goto_16

    :cond_29
    const/4 v4, 0x0

    :goto_16
    invoke-static {v4}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    new-instance v3, Lcom/anythink/expressad/exoplayer/k/s;

    iget-wide v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->s:J

    long-to-int v5, v4

    invoke-direct {v3, v5}, Lcom/anythink/expressad/exoplayer/k/s;-><init>(I)V

    iput-object v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->o:Lcom/anythink/expressad/exoplayer/k/s;

    iget-object v4, v4, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    iget-object v3, v3, Lcom/anythink/expressad/exoplayer/k/s;->a:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    goto :goto_17

    :cond_2a
    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->u:Lcom/anythink/expressad/exoplayer/k/s;

    :goto_17
    iput v3, v0, Lcom/anythink/expressad/exoplayer/e/a/g;->q:I

    :goto_18
    const/4 v8, 0x1

    :goto_19
    if-nez v8, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_2b
    new-instance v1, Lcom/anythink/expressad/exoplayer/t;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Lcom/anythink/expressad/exoplayer/t;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(J)Lcom/anythink/expressad/exoplayer/e/k$a;
    .locals 12

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    array-length v1, v0

    if-nez v1, :cond_0

    new-instance p1, Lcom/anythink/expressad/exoplayer/e/k$a;

    sget-object p2, Lcom/anythink/expressad/exoplayer/e/l;->a:Lcom/anythink/expressad/exoplayer/e/l;

    invoke-direct {p1, p2}, Lcom/anythink/expressad/exoplayer/e/k$a;-><init>(Lcom/anythink/expressad/exoplayer/e/l;)V

    return-object p1

    :cond_0
    const-wide/16 v1, -0x1

    iget v3, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->B:I

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v4, :cond_3

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    invoke-static {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/e/a/g;->a(Lcom/anythink/expressad/exoplayer/e/a/m;J)I

    move-result v3

    if-ne v3, v4, :cond_1

    new-instance p1, Lcom/anythink/expressad/exoplayer/e/k$a;

    sget-object p2, Lcom/anythink/expressad/exoplayer/e/l;->a:Lcom/anythink/expressad/exoplayer/e/l;

    invoke-direct {p1, p2}, Lcom/anythink/expressad/exoplayer/e/k$a;-><init>(Lcom/anythink/expressad/exoplayer/e/l;)V

    return-object p1

    :cond_1
    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/e/a/m;->f:[J

    aget-wide v8, v7, v3

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/e/a/m;->c:[J

    aget-wide v10, v7, v3

    cmp-long v7, v8, p1

    if-gez v7, :cond_2

    iget v7, v0, Lcom/anythink/expressad/exoplayer/e/a/m;->b:I

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/e/a/m;->b(J)I

    move-result p1

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    iget-object p2, v0, Lcom/anythink/expressad/exoplayer/e/a/m;->f:[J

    aget-wide v1, p2, p1

    iget-object p2, v0, Lcom/anythink/expressad/exoplayer/e/a/m;->c:[J

    aget-wide p1, p2, p1

    goto :goto_0

    :cond_2
    move-wide p1, v1

    move-wide v1, v5

    :goto_0
    move-wide v3, p1

    move-wide p1, v8

    goto :goto_1

    :cond_3
    const-wide v10, 0x7fffffffffffffffL

    move-wide v3, v1

    move-wide v1, v5

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    array-length v8, v7

    if-ge v0, v8, :cond_6

    iget v8, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->B:I

    if-eq v0, v8, :cond_5

    aget-object v7, v7, v0

    iget-object v7, v7, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    invoke-static {v7, p1, p2, v10, v11}, Lcom/anythink/expressad/exoplayer/e/a/g;->a(Lcom/anythink/expressad/exoplayer/e/a/m;JJ)J

    move-result-wide v8

    cmp-long v10, v1, v5

    if-eqz v10, :cond_4

    invoke-static {v7, v1, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/e/a/g;->a(Lcom/anythink/expressad/exoplayer/e/a/m;JJ)J

    move-result-wide v3

    :cond_4
    move-wide v10, v8

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/anythink/expressad/exoplayer/e/l;

    invoke-direct {v0, p1, p2, v10, v11}, Lcom/anythink/expressad/exoplayer/e/l;-><init>(JJ)V

    cmp-long p1, v1, v5

    if-nez p1, :cond_7

    new-instance p1, Lcom/anythink/expressad/exoplayer/e/k$a;

    invoke-direct {p1, v0}, Lcom/anythink/expressad/exoplayer/e/k$a;-><init>(Lcom/anythink/expressad/exoplayer/e/l;)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/anythink/expressad/exoplayer/e/l;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/e/l;-><init>(JJ)V

    new-instance p2, Lcom/anythink/expressad/exoplayer/e/k$a;

    invoke-direct {p2, v0, p1}, Lcom/anythink/expressad/exoplayer/e/k$a;-><init>(Lcom/anythink/expressad/exoplayer/e/l;Lcom/anythink/expressad/exoplayer/e/l;)V

    return-object p2
.end method

.method public final a(JJ)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->t:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->v:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->w:I

    iput v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->x:I

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/e/a/g;->d()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->z:[Lcom/anythink/expressad/exoplayer/e/a/g$b;

    if-eqz p1, :cond_2

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v2, p1, v0

    iget-object v3, v2, Lcom/anythink/expressad/exoplayer/e/a/g$b;->b:Lcom/anythink/expressad/exoplayer/e/a/m;

    invoke-virtual {v3, p3, p4}, Lcom/anythink/expressad/exoplayer/e/a/m;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {v3, p3, p4}, Lcom/anythink/expressad/exoplayer/e/a/m;->b(J)I

    move-result v4

    :cond_1
    iput v4, v2, Lcom/anythink/expressad/exoplayer/e/a/g$b;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/e/g;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->y:Lcom/anythink/expressad/exoplayer/e/g;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/e/f;)Z
    .locals 0

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/e/a/i;->b(Lcom/anythink/expressad/exoplayer/e/f;)Z

    move-result p1

    return p1
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/e/a/g;->C:J

    return-wide v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
