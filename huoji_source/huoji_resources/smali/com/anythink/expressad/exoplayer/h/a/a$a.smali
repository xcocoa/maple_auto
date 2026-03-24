.class public final Lcom/anythink/expressad/exoplayer/h/a/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Landroid/net/Uri;

.field public final c:[I

.field public final d:[J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [Landroid/net/Uri;

    new-array v0, v0, [J

    const/4 v3, -0x1

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/anythink/expressad/exoplayer/h/a/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-void
.end method

.method private constructor <init>(I[I[Landroid/net/Uri;[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->c:[I

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->b:[Landroid/net/Uri;

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->d:[J

    return-void
.end method

.method private static a([II)[I
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method private static a([JI)[J
    .locals 3
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object p0
.end method

.method private c()I
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->c:[I

    array-length v2, v1

    if-ge p1, v2, :cond_0

    aget v2, v1, p1

    if-eqz v2, :cond_0

    aget v1, v1, p1

    if-eq v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final a(II)Lcom/anythink/expressad/exoplayer/h/a/a$a;
    .locals 5
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->c:[I

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a([II)[I

    move-result-object v0

    aget v3, v0, p2

    if-eqz v3, :cond_2

    aget v3, v0, p2

    if-eq v3, v2, :cond_2

    aget v3, v0, p2

    if-ne v3, p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->d:[J

    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_4

    goto :goto_2

    :cond_4
    array-length v2, v0

    invoke-static {v1, v2}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a([JI)[J

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->b:[Landroid/net/Uri;

    array-length v3, v2

    array-length v4, v0

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    array-length v3, v0

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    :goto_3
    aput p1, v0, p2

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/a/a$a;

    iget p2, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/anythink/expressad/exoplayer/h/a/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object p1
.end method

.method public final a(Landroid/net/Uri;I)Lcom/anythink/expressad/exoplayer/h/a/a$a;
    .locals 5
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->c:[I

    add-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a([II)[I

    move-result-object v0

    aget v3, v0, p2

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->d:[J

    array-length v3, v1

    array-length v4, v0

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    array-length v3, v0

    invoke-static {v1, v3}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a([JI)[J

    move-result-object v1

    :goto_2
    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->b:[Landroid/net/Uri;

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/Uri;

    aput-object p1, v3, p2

    aput v2, v0, p2

    new-instance p1, Lcom/anythink/expressad/exoplayer/h/a/a$a;

    iget p2, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    invoke-direct {p1, p2, v0, v3, v1}, Lcom/anythink/expressad/exoplayer/h/a/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object p1
.end method

.method public final a([J)Lcom/anythink/expressad/exoplayer/h/a/a$a;
    .locals 4
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    array-length v0, p1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->b:[Landroid/net/Uri;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    array-length v0, p1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->b:[Landroid/net/Uri;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    array-length v0, v1

    invoke-static {p1, v0}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a([JI)[J

    move-result-object p1

    :cond_2
    new-instance v0, Lcom/anythink/expressad/exoplayer/h/a/a$a;

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->c:[I

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->b:[Landroid/net/Uri;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/anythink/expressad/exoplayer/h/a/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v0
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a(I)I

    move-result v0

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcom/anythink/expressad/exoplayer/h/a/a$a;
    .locals 5
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/a/a$a;

    new-array v2, v1, [I

    new-array v3, v1, [Landroid/net/Uri;

    new-array v4, v1, [J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/exoplayer/h/a/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->c:[I

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget v3, v0, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    aget v3, v0, v1

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x2

    aput v3, v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/anythink/expressad/exoplayer/h/a/a$a;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->b:[Landroid/net/Uri;

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->d:[J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/anythink/expressad/exoplayer/h/a/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v1
.end method

.method public final b(I)Lcom/anythink/expressad/exoplayer/h/a/a$a;
    .locals 4
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->c:[I

    array-length v0, v0

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/k/a;->a(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->c:[I

    invoke-static {v0, p1}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a([II)[I

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->d:[J

    invoke-static {v1, p1}, Lcom/anythink/expressad/exoplayer/h/a/a$a;->a([JI)[J

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/a/a$a;->b:[Landroid/net/Uri;

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    new-instance v3, Lcom/anythink/expressad/exoplayer/h/a/a$a;

    invoke-direct {v3, p1, v0, v2, v1}, Lcom/anythink/expressad/exoplayer/h/a/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-object v3
.end method
