.class public final Lcom/anythink/expressad/exoplayer/i/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:[Lcom/anythink/expressad/exoplayer/aa;

.field public final c:Lcom/anythink/expressad/exoplayer/i/g;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/anythink/expressad/exoplayer/aa;[Lcom/anythink/expressad/exoplayer/i/f;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    new-instance v0, Lcom/anythink/expressad/exoplayer/i/g;

    invoke-direct {v0, p2}, Lcom/anythink/expressad/exoplayer/i/g;-><init>([Lcom/anythink/expressad/exoplayer/i/f;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    iput-object p3, p0, Lcom/anythink/expressad/exoplayer/i/i;->d:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lcom/anythink/expressad/exoplayer/i/i;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/i/i;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    iget v1, v1, Lcom/anythink/expressad/exoplayer/i/g;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/i/g;->a:I

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    iget v2, v2, Lcom/anythink/expressad/exoplayer/i/g;->a:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/anythink/expressad/exoplayer/i/i;->a(Lcom/anythink/expressad/exoplayer/i/i;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/i/i;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/anythink/expressad/exoplayer/i/i;->b:[Lcom/anythink/expressad/exoplayer/aa;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {v1, p2}, Lcom/anythink/expressad/exoplayer/i/g;->a(I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object v1

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/i/i;->c:Lcom/anythink/expressad/exoplayer/i/g;

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/exoplayer/i/g;->a(I)Lcom/anythink/expressad/exoplayer/i/f;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
