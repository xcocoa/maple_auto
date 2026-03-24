.class public final Lcom/anythink/expressad/exoplayer/h/q$b;
.super Lcom/anythink/expressad/exoplayer/h/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Lcom/anythink/expressad/exoplayer/ae;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/ae;I)V
    .locals 2

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/aa$b;

    invoke-direct {v0, p2}, Lcom/anythink/expressad/exoplayer/h/aa$b;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/anythink/expressad/exoplayer/h/a;-><init>(ZLcom/anythink/expressad/exoplayer/h/aa;)V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->b:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->c:I

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->b()I

    move-result p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->d:I

    iput p2, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->e:I

    if-lez v0, :cond_1

    const p1, 0x7fffffff

    div-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "LoopingMediaSource contains too many periods"

    invoke-static {v1, p1}, Lcom/anythink/expressad/exoplayer/k/a;->b(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->c:I

    div-int/2addr p1, v0

    return p1
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->d:I

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->e:I

    mul-int v0, v0, v1

    return v0
.end method

.method public final b(I)I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->d:I

    div-int/2addr p1, v0

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->c:I

    iget v1, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->e:I

    mul-int v0, v0, v1

    return v0
.end method

.method public final c(I)Lcom/anythink/expressad/exoplayer/ae;
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->b:Lcom/anythink/expressad/exoplayer/ae;

    return-object p1
.end method

.method public final d(I)I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->c:I

    mul-int p1, p1, v0

    return p1
.end method

.method public final e(I)I
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/exoplayer/h/q$b;->d:I

    mul-int p1, p1, v0

    return p1
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
