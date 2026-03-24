.class public final Lcom/anythink/expressad/exoplayer/e/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/e/k;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J

.field private final f:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/e/a;->b:[I

    iput-object p2, p0, Lcom/anythink/expressad/exoplayer/e/a;->c:[J

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/e/a;->d:[J

    iput-object p4, p0, Lcom/anythink/expressad/exoplayer/e/a;->e:[J

    array-length p1, p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/e/a;->a:I

    if-lez p1, :cond_0

    add-int/lit8 p2, p1, -0x1

    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/anythink/expressad/exoplayer/e/a;->f:J

    return-void

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/e/a;->f:J

    return-void
.end method

.method private b(J)I
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a;->e:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/anythink/expressad/exoplayer/k/af;->a([JJZ)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(J)Lcom/anythink/expressad/exoplayer/e/k$a;
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/e/a;->e:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/anythink/expressad/exoplayer/k/af;->a([JJZ)I

    move-result v0

    new-instance v2, Lcom/anythink/expressad/exoplayer/e/l;

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a;->e:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/e/a;->c:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/anythink/expressad/exoplayer/e/l;-><init>(JJ)V

    iget-wide v3, v2, Lcom/anythink/expressad/exoplayer/e/l;->b:J

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    iget p1, p0, Lcom/anythink/expressad/exoplayer/e/a;->a:I

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/anythink/expressad/exoplayer/e/l;

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/e/a;->e:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/e/a;->c:[J

    aget-wide v0, p2, v0

    invoke-direct {p1, v3, v4, v0, v1}, Lcom/anythink/expressad/exoplayer/e/l;-><init>(JJ)V

    new-instance p2, Lcom/anythink/expressad/exoplayer/e/k$a;

    invoke-direct {p2, v2, p1}, Lcom/anythink/expressad/exoplayer/e/k$a;-><init>(Lcom/anythink/expressad/exoplayer/e/l;Lcom/anythink/expressad/exoplayer/e/l;)V

    return-object p2

    :cond_1
    :goto_0
    new-instance p1, Lcom/anythink/expressad/exoplayer/e/k$a;

    invoke-direct {p1, v2}, Lcom/anythink/expressad/exoplayer/e/k$a;-><init>(Lcom/anythink/expressad/exoplayer/e/l;)V

    return-object p1
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/e/a;->f:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChunkIndex(length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anythink/expressad/exoplayer/e/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a;->c:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a;->e:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationsUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/e/a;->d:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
