.class public final Lcom/anythink/expressad/exoplayer/ae$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field private e:J

.field private f:Lcom/anythink/expressad/exoplayer/h/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private f()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    return-wide v0
.end method


# virtual methods
.method public final a(II)I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->i:[Lcom/anythink/expressad/exoplayer/h/a/a$a;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a(I)I

    move-result p1

    return p1
.end method

.method public final a(J)I
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-object v1, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->h:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->h:[J

    aget-wide v3, v2, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-lez v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->i:[Lcom/anythink/expressad/exoplayer/h/a/a$a;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->e:J

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/b;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)J
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->h:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/anythink/expressad/exoplayer/h/a/a;)Lcom/anythink/expressad/exoplayer/ae$a;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/ae$a;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    iput p3, p0, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    iput-wide p4, p0, Lcom/anythink/expressad/exoplayer/ae$a;->d:J

    iput-wide p6, p0, Lcom/anythink/expressad/exoplayer/ae$a;->e:J

    iput-object p8, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;JJ)Lcom/anythink/expressad/exoplayer/ae$a;
    .locals 9

    sget-object v8, Lcom/anythink/expressad/exoplayer/h/a/a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/anythink/expressad/exoplayer/ae$a;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/anythink/expressad/exoplayer/h/a/a;)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->i:[Lcom/anythink/expressad/exoplayer/h/a/a$a;

    aget-object p1, v0, p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a(I)I

    move-result p1

    return p1
.end method

.method public final b(J)I
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->h:[J

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-wide v3, v2, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    aget-wide v3, v2, v1

    cmp-long v2, p1, v3

    if-gez v2, :cond_0

    iget-object v2, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->i:[Lcom/anythink/expressad/exoplayer/h/a/a$a;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->h:[J

    array-length p1, p1

    if-ge v1, p1, :cond_2

    return v1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->e:J

    return-wide v0
.end method

.method public final b(II)Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->i:[Lcom/anythink/expressad/exoplayer/h/a/a$a;

    aget-object p1, v0, p1

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/h/a/a$a;->c:[I

    aget p1, p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->g:I

    return v0
.end method

.method public final c(II)J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->i:[Lcom/anythink/expressad/exoplayer/h/a/a$a;

    aget-object p1, v0, p1

    iget v0, p1, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/h/a/a$a;->d:[J

    aget-wide v0, p1, p2

    return-wide v0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->i:[Lcom/anythink/expressad/exoplayer/h/a/a$a;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(I)I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->i:[Lcom/anythink/expressad/exoplayer/h/a/a$a;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    return p1
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/ae$a;->f:Lcom/anythink/expressad/exoplayer/h/a/a;

    iget-wide v0, v0, Lcom/anythink/expressad/exoplayer/h/a/a;->j:J

    return-wide v0
.end method
