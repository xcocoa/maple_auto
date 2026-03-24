.class public final Lz2/zn;
.super Lz2/jn;
.source ""


# instance fields
.field private final OooO:C

.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:Ljava/lang/String;

.field private final OooO0Oo:Ljava/lang/String;

.field private final OooO0o:Ljava/lang/String;

.field private final OooO0o0:Ljava/lang/String;

.field private final OooO0oO:Ljava/lang/String;

.field private final OooO0oo:I

.field private final OooOO0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->VIN:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lz2/jn;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lz2/zn;->OooO0O0:Ljava/lang/String;

    iput-object p2, p0, Lz2/zn;->OooO0OO:Ljava/lang/String;

    iput-object p3, p0, Lz2/zn;->OooO0Oo:Ljava/lang/String;

    iput-object p4, p0, Lz2/zn;->OooO0o0:Ljava/lang/String;

    iput-object p5, p0, Lz2/zn;->OooO0o:Ljava/lang/String;

    iput-object p6, p0, Lz2/zn;->OooO0oO:Ljava/lang/String;

    iput p7, p0, Lz2/zn;->OooO0oo:I

    iput-char p8, p0, Lz2/zn;->OooO:C

    iput-object p9, p0, Lz2/zn;->OooOO0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OooO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zn;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO00o()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lz2/zn;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/zn;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/zn;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lz2/zn;->OooO0o:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget v3, p0, Lz2/zn;->OooO0oo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v3, p0, Lz2/zn;->OooO:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/zn;->OooOO0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0o()I
    .locals 1

    iget v0, p0, Lz2/zn;->OooO0oo:I

    return v0
.end method

.method public final OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zn;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oO()C
    .locals 1

    iget-char v0, p0, Lz2/zn;->OooO:C

    return v0
.end method

.method public final OooO0oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zn;->OooOO0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zn;->OooO0oO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zn;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zn;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zn;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method
