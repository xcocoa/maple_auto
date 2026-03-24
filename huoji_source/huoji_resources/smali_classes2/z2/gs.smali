.class public final Lz2/gs;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO:I

.field private final OooO00o:Lz2/eo;

.field private final OooO0O0:Lz2/fm;

.field private final OooO0OO:Lz2/fm;

.field private final OooO0Oo:Lz2/fm;

.field private final OooO0o:I

.field private final OooO0o0:Lz2/fm;

.field private final OooO0oO:I

.field private final OooO0oo:I


# direct methods
.method public constructor <init>(Lz2/eo;Lz2/fm;Lz2/fm;Lz2/fm;Lz2/fm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    new-instance p2, Lz2/fm;

    invoke-virtual {p4}, Lz2/fm;->OooO0Oo()F

    move-result p3

    const/4 v0, 0x0

    invoke-direct {p2, v0, p3}, Lz2/fm;-><init>(FF)V

    new-instance p3, Lz2/fm;

    invoke-virtual {p5}, Lz2/fm;->OooO0Oo()F

    move-result v1

    invoke-direct {p3, v0, v1}, Lz2/fm;-><init>(FF)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    new-instance p4, Lz2/fm;

    invoke-virtual {p1}, Lz2/eo;->OooOOO0()I

    move-result p5

    sub-int/2addr p5, v1

    int-to-float p5, p5

    invoke-virtual {p2}, Lz2/fm;->OooO0Oo()F

    move-result v0

    invoke-direct {p4, p5, v0}, Lz2/fm;-><init>(FF)V

    new-instance p5, Lz2/fm;

    invoke-virtual {p1}, Lz2/eo;->OooOOO0()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p3}, Lz2/fm;->OooO0Oo()F

    move-result v1

    invoke-direct {p5, v0, v1}, Lz2/fm;-><init>(FF)V

    :cond_7
    :goto_3
    iput-object p1, p0, Lz2/gs;->OooO00o:Lz2/eo;

    iput-object p2, p0, Lz2/gs;->OooO0O0:Lz2/fm;

    iput-object p3, p0, Lz2/gs;->OooO0OO:Lz2/fm;

    iput-object p4, p0, Lz2/gs;->OooO0Oo:Lz2/fm;

    iput-object p5, p0, Lz2/gs;->OooO0o0:Lz2/fm;

    invoke-virtual {p2}, Lz2/fm;->OooO0OO()F

    move-result p1

    invoke-virtual {p3}, Lz2/fm;->OooO0OO()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lz2/gs;->OooO0o:I

    invoke-virtual {p4}, Lz2/fm;->OooO0OO()F

    move-result p1

    invoke-virtual {p5}, Lz2/fm;->OooO0OO()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lz2/gs;->OooO0oO:I

    invoke-virtual {p2}, Lz2/fm;->OooO0Oo()F

    move-result p1

    invoke-virtual {p4}, Lz2/fm;->OooO0Oo()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lz2/gs;->OooO0oo:I

    invoke-virtual {p3}, Lz2/fm;->OooO0Oo()F

    move-result p1

    invoke-virtual {p5}, Lz2/fm;->OooO0Oo()F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lz2/gs;->OooO:I

    return-void
.end method

.method public constructor <init>(Lz2/gs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lz2/gs;->OooO00o:Lz2/eo;

    iput-object v0, p0, Lz2/gs;->OooO00o:Lz2/eo;

    invoke-virtual {p1}, Lz2/gs;->OooO0oo()Lz2/fm;

    move-result-object v0

    iput-object v0, p0, Lz2/gs;->OooO0O0:Lz2/fm;

    invoke-virtual {p1}, Lz2/gs;->OooO0O0()Lz2/fm;

    move-result-object v0

    iput-object v0, p0, Lz2/gs;->OooO0OO:Lz2/fm;

    invoke-virtual {p1}, Lz2/gs;->OooO()Lz2/fm;

    move-result-object v0

    iput-object v0, p0, Lz2/gs;->OooO0Oo:Lz2/fm;

    invoke-virtual {p1}, Lz2/gs;->OooO0OO()Lz2/fm;

    move-result-object v0

    iput-object v0, p0, Lz2/gs;->OooO0o0:Lz2/fm;

    invoke-virtual {p1}, Lz2/gs;->OooO0o()I

    move-result v0

    iput v0, p0, Lz2/gs;->OooO0o:I

    invoke-virtual {p1}, Lz2/gs;->OooO0Oo()I

    move-result v0

    iput v0, p0, Lz2/gs;->OooO0oO:I

    invoke-virtual {p1}, Lz2/gs;->OooO0oO()I

    move-result v0

    iput v0, p0, Lz2/gs;->OooO0oo:I

    invoke-virtual {p1}, Lz2/gs;->OooO0o0()I

    move-result p1

    iput p1, p0, Lz2/gs;->OooO:I

    return-void
.end method

.method public static OooOO0(Lz2/gs;Lz2/gs;)Lz2/gs;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v6, Lz2/gs;

    iget-object v1, p0, Lz2/gs;->OooO00o:Lz2/eo;

    iget-object v2, p0, Lz2/gs;->OooO0O0:Lz2/fm;

    iget-object v3, p0, Lz2/gs;->OooO0OO:Lz2/fm;

    iget-object v4, p1, Lz2/gs;->OooO0Oo:Lz2/fm;

    iget-object v5, p1, Lz2/gs;->OooO0o0:Lz2/fm;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lz2/gs;-><init>(Lz2/eo;Lz2/fm;Lz2/fm;Lz2/fm;Lz2/fm;)V

    return-object v6
.end method


# virtual methods
.method public final OooO()Lz2/fm;
    .locals 1

    iget-object v0, p0, Lz2/gs;->OooO0Oo:Lz2/fm;

    return-object v0
.end method

.method public final OooO00o(IIZ)Lz2/gs;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lz2/gs;->OooO0O0:Lz2/fm;

    iget-object v1, p0, Lz2/gs;->OooO0OO:Lz2/fm;

    iget-object v2, p0, Lz2/gs;->OooO0Oo:Lz2/fm;

    iget-object v3, p0, Lz2/gs;->OooO0o0:Lz2/fm;

    if-lez p1, :cond_3

    if-eqz p3, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {v4}, Lz2/fm;->OooO0Oo()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, p1

    if-gez v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    new-instance p1, Lz2/fm;

    invoke-virtual {v4}, Lz2/fm;->OooO0OO()F

    move-result v4

    int-to-float v5, v5

    invoke-direct {p1, v4, v5}, Lz2/fm;-><init>(FF)V

    if-eqz p3, :cond_2

    move-object v8, p1

    goto :goto_1

    :cond_2
    move-object v10, p1

    move-object v8, v0

    goto :goto_2

    :cond_3
    move-object v8, v0

    :goto_1
    move-object v10, v2

    :goto_2
    if-lez p2, :cond_7

    if-eqz p3, :cond_4

    iget-object p1, p0, Lz2/gs;->OooO0OO:Lz2/fm;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lz2/gs;->OooO0o0:Lz2/fm;

    :goto_3
    invoke-virtual {p1}, Lz2/fm;->OooO0Oo()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lz2/gs;->OooO00o:Lz2/eo;

    invoke-virtual {p2}, Lz2/eo;->OooO0oo()I

    move-result p2

    if-lt v0, p2, :cond_5

    iget-object p2, p0, Lz2/gs;->OooO00o:Lz2/eo;

    invoke-virtual {p2}, Lz2/eo;->OooO0oo()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    :cond_5
    new-instance p2, Lz2/fm;

    invoke-virtual {p1}, Lz2/fm;->OooO0OO()F

    move-result p1

    int-to-float v0, v0

    invoke-direct {p2, p1, v0}, Lz2/fm;-><init>(FF)V

    if-eqz p3, :cond_6

    move-object v9, p2

    goto :goto_4

    :cond_6
    move-object v11, p2

    move-object v9, v1

    goto :goto_5

    :cond_7
    move-object v9, v1

    :goto_4
    move-object v11, v3

    :goto_5
    new-instance p1, Lz2/gs;

    iget-object v7, p0, Lz2/gs;->OooO00o:Lz2/eo;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lz2/gs;-><init>(Lz2/eo;Lz2/fm;Lz2/fm;Lz2/fm;Lz2/fm;)V

    return-object p1
.end method

.method public final OooO0O0()Lz2/fm;
    .locals 1

    iget-object v0, p0, Lz2/gs;->OooO0OO:Lz2/fm;

    return-object v0
.end method

.method public final OooO0OO()Lz2/fm;
    .locals 1

    iget-object v0, p0, Lz2/gs;->OooO0o0:Lz2/fm;

    return-object v0
.end method

.method public final OooO0Oo()I
    .locals 1

    iget v0, p0, Lz2/gs;->OooO0oO:I

    return v0
.end method

.method public final OooO0o()I
    .locals 1

    iget v0, p0, Lz2/gs;->OooO0o:I

    return v0
.end method

.method public final OooO0o0()I
    .locals 1

    iget v0, p0, Lz2/gs;->OooO:I

    return v0
.end method

.method public final OooO0oO()I
    .locals 1

    iget v0, p0, Lz2/gs;->OooO0oo:I

    return v0
.end method

.method public final OooO0oo()Lz2/fm;
    .locals 1

    iget-object v0, p0, Lz2/gs;->OooO0O0:Lz2/fm;

    return-object v0
.end method
