.class public final Lcom/anythink/expressad/exoplayer/k/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:I = 0x20


# instance fields
.field private b:I

.field private c:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/k/m;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x20

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/k/m;->c:[J

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/m;->b:I

    return v0
.end method

.method private a(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/m;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/m;->c:[J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/anythink/expressad/exoplayer/k/m;->b:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(J)V
    .locals 3

    iget v0, p0, Lcom/anythink/expressad/exoplayer/k/m;->b:I

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/k/m;->c:[J

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/k/m;->c:[J

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/m;->c:[J

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/m;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/anythink/expressad/exoplayer/k/m;->b:I

    aput-wide p1, v0, v1

    return-void
.end method

.method private b()[J
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/k/m;->c:[J

    iget v1, p0, Lcom/anythink/expressad/exoplayer/k/m;->b:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method
