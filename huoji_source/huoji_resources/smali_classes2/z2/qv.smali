.class public final Lz2/qv;
.super Lz2/rv;
.source ""


# instance fields
.field private final OooO0OO:Lz2/rv;


# direct methods
.method public constructor <init>(Lz2/rv;)V
    .locals 2

    invoke-virtual {p1}, Lz2/rv;->OooO0o0()I

    move-result v0

    invoke-virtual {p1}, Lz2/rv;->OooO0O0()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lz2/rv;-><init>(II)V

    iput-object p1, p0, Lz2/qv;->OooO0OO:Lz2/rv;

    return-void
.end method


# virtual methods
.method public OooO()Lz2/rv;
    .locals 2

    new-instance v0, Lz2/qv;

    iget-object v1, p0, Lz2/qv;->OooO0OO:Lz2/rv;

    invoke-virtual {v1}, Lz2/rv;->OooO()Lz2/rv;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/qv;-><init>(Lz2/rv;)V

    return-object v0
.end method

.method public OooO00o(IIII)Lz2/rv;
    .locals 2

    new-instance v0, Lz2/qv;

    iget-object v1, p0, Lz2/qv;->OooO0OO:Lz2/rv;

    invoke-virtual {v1, p1, p2, p3, p4}, Lz2/rv;->OooO00o(IIII)Lz2/rv;

    move-result-object p1

    invoke-direct {v0, p1}, Lz2/qv;-><init>(Lz2/rv;)V

    return-object v0
.end method

.method public OooO0OO()[B
    .locals 5

    iget-object v0, p0, Lz2/qv;->OooO0OO:Lz2/rv;

    invoke-virtual {v0}, Lz2/rv;->OooO0OO()[B

    move-result-object v0

    invoke-virtual {p0}, Lz2/rv;->OooO0o0()I

    move-result v1

    invoke-virtual {p0}, Lz2/rv;->OooO0O0()I

    move-result v2

    mul-int v1, v1, v2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public OooO0Oo(I[B)[B
    .locals 2

    iget-object v0, p0, Lz2/qv;->OooO0OO:Lz2/rv;

    invoke-virtual {v0, p1, p2}, Lz2/rv;->OooO0Oo(I[B)[B

    move-result-object p1

    invoke-virtual {p0}, Lz2/rv;->OooO0o0()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public OooO0o()Lz2/rv;
    .locals 1

    iget-object v0, p0, Lz2/qv;->OooO0OO:Lz2/rv;

    return-object v0
.end method

.method public OooO0oO()Z
    .locals 1

    iget-object v0, p0, Lz2/qv;->OooO0OO:Lz2/rv;

    invoke-virtual {v0}, Lz2/rv;->OooO0oO()Z

    move-result v0

    return v0
.end method

.method public OooO0oo()Z
    .locals 1

    iget-object v0, p0, Lz2/qv;->OooO0OO:Lz2/rv;

    invoke-virtual {v0}, Lz2/rv;->OooO0oo()Z

    move-result v0

    return v0
.end method

.method public OooOO0()Lz2/rv;
    .locals 2

    new-instance v0, Lz2/qv;

    iget-object v1, p0, Lz2/qv;->OooO0OO:Lz2/rv;

    invoke-virtual {v1}, Lz2/rv;->OooOO0()Lz2/rv;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/qv;-><init>(Lz2/rv;)V

    return-object v0
.end method
