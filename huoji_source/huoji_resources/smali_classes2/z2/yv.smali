.class public Lz2/yv;
.super Lz2/zv;
.source ""


# instance fields
.field private OooO0O0:I


# direct methods
.method public constructor <init>(Lz2/gw;I)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/zv;-><init>(Lz2/gw;)V

    if-ltz p2, :cond_0

    iput p2, p0, Lz2/yv;->OooO0O0:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Repetition count must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public OooO00o()I
    .locals 2

    invoke-super {p0}, Lz2/zv;->OooO00o()I

    move-result v0

    iget v1, p0, Lz2/yv;->OooO0O0:I

    mul-int v0, v0, v1

    return v0
.end method

.method public OooO0O0(Lz2/kw;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lz2/yv;->OooO0O0:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lz2/kw;->OooOOO()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-super {p0, p1}, Lz2/zv;->OooO0O0(Lz2/kw;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lz2/zv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(repeated)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
