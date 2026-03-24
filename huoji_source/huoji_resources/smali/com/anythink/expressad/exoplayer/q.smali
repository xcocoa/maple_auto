.class public final Lcom/anythink/expressad/exoplayer/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final l:Ljava/lang/String; = "MediaPeriodHolder"


# instance fields
.field public final a:Lcom/anythink/expressad/exoplayer/h/r;

.field public final b:Ljava/lang/Object;

.field public final c:[Lcom/anythink/expressad/exoplayer/h/y;

.field public final d:[Z

.field public e:J

.field public f:Z

.field public g:Z

.field public h:Lcom/anythink/expressad/exoplayer/r;

.field public i:Lcom/anythink/expressad/exoplayer/q;

.field public j:Lcom/anythink/expressad/exoplayer/h/af;

.field public k:Lcom/anythink/expressad/exoplayer/i/i;

.field private final m:[Lcom/anythink/expressad/exoplayer/z;

.field private final n:Lcom/anythink/expressad/exoplayer/i/h;

.field private final o:Lcom/anythink/expressad/exoplayer/h/s;

.field private p:Lcom/anythink/expressad/exoplayer/i/i;


# direct methods
.method public constructor <init>([Lcom/anythink/expressad/exoplayer/z;JLcom/anythink/expressad/exoplayer/i/h;Lcom/anythink/expressad/exoplayer/j/b;Lcom/anythink/expressad/exoplayer/h/s;Ljava/lang/Object;Lcom/anythink/expressad/exoplayer/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/q;->m:[Lcom/anythink/expressad/exoplayer/z;

    iget-wide v0, p8, Lcom/anythink/expressad/exoplayer/r;->b:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/q;->e:J

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/q;->n:Lcom/anythink/expressad/exoplayer/i/h;

    iput-object p6, p0, Lcom/anythink/expressad/exoplayer/q;->o:Lcom/anythink/expressad/exoplayer/h/s;

    invoke-static {p7}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/q;->b:Ljava/lang/Object;

    iput-object p8, p0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    array-length p2, p1

    new-array p2, p2, [Lcom/anythink/expressad/exoplayer/h/y;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/q;->d:[Z

    iget-object p1, p8, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-interface {p6, p1, p5}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/s$a;Lcom/anythink/expressad/exoplayer/j/b;)Lcom/anythink/expressad/exoplayer/h/r;

    move-result-object p3

    iget-wide p7, p8, Lcom/anythink/expressad/exoplayer/r;->c:J

    const-wide/high16 p1, -0x8000000000000000L

    cmp-long p4, p7, p1

    if-eqz p4, :cond_0

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/d;

    const/4 p4, 0x1

    const-wide/16 p5, 0x0

    move-object p2, p1

    invoke-direct/range {p2 .. p8}, Lcom/anythink/expressad/exoplayer/h/d;-><init>(Lcom/anythink/expressad/exoplayer/h/r;ZJJ)V

    move-object p3, p1

    :cond_0
    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/i/i;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->p:Lcom/anythink/expressad/exoplayer/i/i;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/q;->c(Lcom/anythink/expressad/exoplayer/i/i;)V

    :cond_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/q;->p:Lcom/anythink/expressad/exoplayer/i/i;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/anythink/expressad/exoplayer/q;->b(Lcom/anythink/expressad/exoplayer/i/i;)V

    :cond_1
    return-void
.end method

.method private a([Lcom/anythink/expressad/exoplayer/h/y;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/q;->m:[Lcom/anythink/expressad/exoplayer/z;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/z;->a()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(F)V
    .locals 14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->b()Lcom/anythink/expressad/exoplayer/h/af;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->j:Lcom/anythink/expressad/exoplayer/h/af;

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/exoplayer/q;->a(F)Z

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/r;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/anythink/expressad/exoplayer/q;->b(J)J

    move-result-wide v4

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/q;->e:J

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v2, p1, Lcom/anythink/expressad/exoplayer/r;->b:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/q;->e:J

    new-instance v0, Lcom/anythink/expressad/exoplayer/r;

    iget-object v3, p1, Lcom/anythink/expressad/exoplayer/r;->a:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget-wide v6, p1, Lcom/anythink/expressad/exoplayer/r;->c:J

    iget-wide v8, p1, Lcom/anythink/expressad/exoplayer/r;->d:J

    iget-wide v10, p1, Lcom/anythink/expressad/exoplayer/r;->e:J

    iget-boolean v12, p1, Lcom/anythink/expressad/exoplayer/r;->f:Z

    iget-boolean v13, p1, Lcom/anythink/expressad/exoplayer/r;->g:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/anythink/expressad/exoplayer/r;-><init>(Lcom/anythink/expressad/exoplayer/h/s$a;JJJJZZ)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    return-void
.end method

.method private static b(Lcom/anythink/expressad/exoplayer/i/i;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/i;->a:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/exoplayer/i/g;->a(I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/i/f;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b([Lcom/anythink/expressad/exoplayer/h/y;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/q;->m:[Lcom/anythink/expressad/exoplayer/z;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/anythink/expressad/exoplayer/z;->a()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/m;

    invoke-direct {v1}, Lcom/anythink/expressad/exoplayer/h/m;-><init>()V

    aput-object v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(J)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/q;->e:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method private static c(Lcom/anythink/expressad/exoplayer/i/i;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/anythink/expressad/exoplayer/i/i;->a:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {v1, v0}, Lcom/anythink/expressad/exoplayer/i/g;->a(I)Lcom/anythink/expressad/exoplayer/i/f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/q;->e:J

    return-wide v0
.end method

.method private d(J)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private e()J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/r;->e:J

    return-wide v0
.end method

.method private e(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    iget-wide v1, p0, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/r;->a_(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(JZ[Z)J
    .locals 13

    move-object v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget v4, v3, Lcom/anythink/expressad/exoplayer/i/i;->a:I

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Lcom/anythink/expressad/exoplayer/q;->d:[Z

    if-nez p3, :cond_0

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/q;->p:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {v3, v6, v2}, Lcom/anythink/expressad/exoplayer/i/i;->a(Lcom/anythink/expressad/exoplayer/i/i;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    aput-boolean v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    invoke-direct {p0, v2}, Lcom/anythink/expressad/exoplayer/q;->a([Lcom/anythink/expressad/exoplayer/h/y;)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-direct {p0, v2}, Lcom/anythink/expressad/exoplayer/q;->a(Lcom/anythink/expressad/exoplayer/i/i;)V

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v2, v2, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/i/g;->a()[Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v7

    iget-object v8, v0, Lcom/anythink/expressad/exoplayer/q;->d:[Z

    iget-object v9, v0, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    move-object/from16 v10, p4

    move-wide v11, p1

    invoke-interface/range {v6 .. v12}, Lcom/anythink/expressad/exoplayer/h/r;->a([Lcom/anythink/expressad/exoplayer/i/f;[Z[Lcom/anythink/expressad/exoplayer/h/y;[ZJ)J

    move-result-wide v3

    iget-object v6, v0, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    invoke-direct {p0, v6}, Lcom/anythink/expressad/exoplayer/q;->b([Lcom/anythink/expressad/exoplayer/h/y;)V

    iput-boolean v1, v0, Lcom/anythink/expressad/exoplayer/q;->g:Z

    const/4 v6, 0x0

    :goto_2
    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/q;->c:[Lcom/anythink/expressad/exoplayer/h/y;

    array-length v8, v7

    if-ge v6, v8, :cond_5

    aget-object v7, v7, v6

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {v7, v6}, Lcom/anythink/expressad/exoplayer/i/i;->a(I)Z

    move-result v7

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    iget-object v7, v0, Lcom/anythink/expressad/exoplayer/q;->m:[Lcom/anythink/expressad/exoplayer/z;

    aget-object v7, v7, v6

    invoke-interface {v7}, Lcom/anythink/expressad/exoplayer/z;->a()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    iput-boolean v5, v0, Lcom/anythink/expressad/exoplayer/q;->g:Z

    goto :goto_4

    :cond_2
    invoke-virtual {v2, v6}, Lcom/anythink/expressad/exoplayer/i/g;->a(I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/k/a;->b(Z)V

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    return-wide v3
.end method

.method public final a(Z)J
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/r;->b:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v0, p1, Lcom/anythink/expressad/exoplayer/r;->e:J

    :cond_1
    return-wide v0
.end method

.method public final a(J)V
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/q;->e:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/h/r;->c(J)Z

    return-void
.end method

.method public final a()Z
    .locals 5

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/q;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->d()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->n:Lcom/anythink/expressad/exoplayer/i/h;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/q;->m:[Lcom/anythink/expressad/exoplayer/z;

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/q;->j:Lcom/anythink/expressad/exoplayer/h/af;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/exoplayer/i/h;->a([Lcom/anythink/expressad/exoplayer/z;Lcom/anythink/expressad/exoplayer/h/af;)Lcom/anythink/expressad/exoplayer/i/i;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/q;->p:Lcom/anythink/expressad/exoplayer/i/i;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/exoplayer/i/i;->a(Lcom/anythink/expressad/exoplayer/i/i;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->k:Lcom/anythink/expressad/exoplayer/i/i;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/i/g;->a()[Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lcom/anythink/expressad/exoplayer/i/f;->a(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b()J
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/q;->f:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0}, Lcom/anythink/expressad/exoplayer/h/r;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->m:[Lcom/anythink/expressad/exoplayer/z;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/anythink/expressad/exoplayer/q;->a(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final c()V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/q;->a(Lcom/anythink/expressad/exoplayer/i/i;)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->h:Lcom/anythink/expressad/exoplayer/r;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/r;->c:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->o:Lcom/anythink/expressad/exoplayer/h/s;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    check-cast v1, Lcom/anythink/expressad/exoplayer/h/d;

    iget-object v1, v1, Lcom/anythink/expressad/exoplayer/h/d;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/q;->o:Lcom/anythink/expressad/exoplayer/h/s;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/q;->a:Lcom/anythink/expressad/exoplayer/h/r;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/exoplayer/h/s;->a(Lcom/anythink/expressad/exoplayer/h/r;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
