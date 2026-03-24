.class public final Lz2/vl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/ul;

.field private OooO0O0:Lz2/eo;


# direct methods
.method public constructor <init>(Lz2/ul;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/vl;->OooO00o:Lz2/ul;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Binarizer must be non-null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final OooO()Lz2/vl;
    .locals 3

    iget-object v0, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v0}, Lz2/ul;->OooO0o0()Lz2/yl;

    move-result-object v0

    invoke-virtual {v0}, Lz2/yl;->OooOO0()Lz2/yl;

    move-result-object v0

    new-instance v1, Lz2/vl;

    iget-object v2, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v2, v0}, Lz2/ul;->OooO00o(Lz2/yl;)Lz2/ul;

    move-result-object v0

    invoke-direct {v1, v0}, Lz2/vl;-><init>(Lz2/ul;)V

    return-object v1
.end method

.method public final OooO00o(IIII)Lz2/vl;
    .locals 1

    iget-object v0, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v0}, Lz2/ul;->OooO0o0()Lz2/yl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lz2/yl;->OooO00o(IIII)Lz2/yl;

    move-result-object p1

    new-instance p2, Lz2/vl;

    iget-object p3, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {p3, p1}, Lz2/ul;->OooO00o(Lz2/yl;)Lz2/ul;

    move-result-object p1

    invoke-direct {p2, p1}, Lz2/vl;-><init>(Lz2/ul;)V

    return-object p2
.end method

.method public final OooO0O0()Lz2/eo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lz2/vl;->OooO0O0:Lz2/eo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v0}, Lz2/ul;->OooO0O0()Lz2/eo;

    move-result-object v0

    iput-object v0, p0, Lz2/vl;->OooO0O0:Lz2/eo;

    :cond_0
    iget-object v0, p0, Lz2/vl;->OooO0O0:Lz2/eo;

    return-object v0
.end method

.method public final OooO0OO(ILz2/do;)Lz2/do;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v0, p1, p2}, Lz2/ul;->OooO0OO(ILz2/do;)Lz2/do;

    move-result-object p1

    return-object p1
.end method

.method public final OooO0Oo()I
    .locals 1

    iget-object v0, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v0}, Lz2/ul;->OooO0Oo()I

    move-result v0

    return v0
.end method

.method public final OooO0o()Z
    .locals 1

    iget-object v0, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v0}, Lz2/ul;->OooO0o0()Lz2/yl;

    move-result-object v0

    invoke-virtual {v0}, Lz2/yl;->OooO0oO()Z

    move-result v0

    return v0
.end method

.method public final OooO0o0()I
    .locals 1

    iget-object v0, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v0}, Lz2/ul;->OooO0o()I

    move-result v0

    return v0
.end method

.method public final OooO0oO()Z
    .locals 1

    iget-object v0, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v0}, Lz2/ul;->OooO0o0()Lz2/yl;

    move-result-object v0

    invoke-virtual {v0}, Lz2/yl;->OooO0oo()Z

    move-result v0

    return v0
.end method

.method public final OooO0oo()Lz2/vl;
    .locals 3

    iget-object v0, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v0}, Lz2/ul;->OooO0o0()Lz2/yl;

    move-result-object v0

    invoke-virtual {v0}, Lz2/yl;->OooO()Lz2/yl;

    move-result-object v0

    new-instance v1, Lz2/vl;

    iget-object v2, p0, Lz2/vl;->OooO00o:Lz2/ul;

    invoke-virtual {v2, v0}, Lz2/ul;->OooO00o(Lz2/yl;)Lz2/ul;

    move-result-object v0

    invoke-direct {v1, v0}, Lz2/vl;-><init>(Lz2/ul;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lz2/vl;->OooO0O0()Lz2/eo;

    move-result-object v0

    invoke-virtual {v0}, Lz2/eo;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method
