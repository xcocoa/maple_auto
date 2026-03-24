.class public final Lz2/wr;
.super Lz2/xr;
.source ""


# static fields
.field public static final OooO0Oo:I = 0xa


# instance fields
.field private final OooO0O0:I

.field private final OooO0OO:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/xr;-><init>(I)V

    if-ltz p2, :cond_0

    const/16 p1, 0xa

    if-gt p2, p1, :cond_0

    if-ltz p3, :cond_0

    if-gt p3, p1, :cond_0

    iput p2, p0, Lz2/wr;->OooO0O0:I

    iput p3, p0, Lz2/wr;->OooO0OO:I

    return-void

    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/wr;->OooO0O0:I

    return v0
.end method

.method public final OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/wr;->OooO0OO:I

    return v0
.end method

.method public final OooO0Oo()I
    .locals 2

    iget v0, p0, Lz2/wr;->OooO0O0:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lz2/wr;->OooO0OO:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final OooO0o()Z
    .locals 2

    iget v0, p0, Lz2/wr;->OooO0O0:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final OooO0o0()Z
    .locals 2

    iget v0, p0, Lz2/wr;->OooO0O0:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lz2/wr;->OooO0OO:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final OooO0oO()Z
    .locals 2

    iget v0, p0, Lz2/wr;->OooO0OO:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
