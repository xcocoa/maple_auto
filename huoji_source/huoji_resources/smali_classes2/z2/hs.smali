.class public final Lz2/hs;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0o:I = -0x1


# instance fields
.field private final OooO00o:I

.field private final OooO0O0:I

.field private final OooO0OO:I

.field private final OooO0Oo:I

.field private OooO0o0:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/hs;->OooO0o0:I

    iput p1, p0, Lz2/hs;->OooO00o:I

    iput p2, p0, Lz2/hs;->OooO0O0:I

    iput p3, p0, Lz2/hs;->OooO0OO:I

    iput p4, p0, Lz2/hs;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final OooO(I)V
    .locals 0

    iput p1, p0, Lz2/hs;->OooO0o0:I

    return-void
.end method

.method public final OooO00o()I
    .locals 1

    iget v0, p0, Lz2/hs;->OooO0OO:I

    return v0
.end method

.method public final OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/hs;->OooO0O0:I

    return v0
.end method

.method public final OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/hs;->OooO0o0:I

    return v0
.end method

.method public final OooO0Oo()I
    .locals 1

    iget v0, p0, Lz2/hs;->OooO00o:I

    return v0
.end method

.method public final OooO0o()I
    .locals 2

    iget v0, p0, Lz2/hs;->OooO0O0:I

    iget v1, p0, Lz2/hs;->OooO00o:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final OooO0o0()I
    .locals 1

    iget v0, p0, Lz2/hs;->OooO0Oo:I

    return v0
.end method

.method public final OooO0oO()Z
    .locals 1

    iget v0, p0, Lz2/hs;->OooO0o0:I

    invoke-virtual {p0, v0}, Lz2/hs;->OooO0oo(I)Z

    move-result v0

    return v0
.end method

.method public final OooO0oo(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lz2/hs;->OooO0OO:I

    rem-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final OooOO0()V
    .locals 2

    iget v0, p0, Lz2/hs;->OooO0Oo:I

    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lz2/hs;->OooO0OO:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lz2/hs;->OooO0o0:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lz2/hs;->OooO0o0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/hs;->OooO0Oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
