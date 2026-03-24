.class public final Lz2/jp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO:I

.field private final OooO00o:Ljava/lang/String;

.field private OooO0O0:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field private OooO0OO:Lz2/wl;

.field private OooO0Oo:Lz2/wl;

.field public OooO0o:I

.field private final OooO0o0:Ljava/lang/StringBuilder;

.field private OooO0oO:I

.field private OooO0oo:Lz2/mp;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/jp;->OooO00o:Ljava/lang/String;

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iput-object v0, p0, Lz2/jp;->OooO0O0:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lz2/jp;->OooO0o0:Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    iput p1, p0, Lz2/jp;->OooO0oO:I

    return-void
.end method

.method private OooO()I
    .locals 2

    iget-object v0, p0, Lz2/jp;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lz2/jp;->OooO:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final OooO00o()I
    .locals 1

    iget-object v0, p0, Lz2/jp;->OooO0o0:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public final OooO0O0()Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lz2/jp;->OooO0o0:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final OooO0OO()C
    .locals 2

    iget-object v0, p0, Lz2/jp;->OooO00o:Ljava/lang/String;

    iget v1, p0, Lz2/jp;->OooO0o:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final OooO0Oo()C
    .locals 2

    iget-object v0, p0, Lz2/jp;->OooO00o:Ljava/lang/String;

    iget v1, p0, Lz2/jp;->OooO0o:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final OooO0o()I
    .locals 1

    iget v0, p0, Lz2/jp;->OooO0oO:I

    return v0
.end method

.method public final OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/jp;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oO()I
    .locals 2

    invoke-direct {p0}, Lz2/jp;->OooO()I

    move-result v0

    iget v1, p0, Lz2/jp;->OooO0o:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final OooO0oo()Lz2/mp;
    .locals 1

    iget-object v0, p0, Lz2/jp;->OooO0oo:Lz2/mp;

    return-object v0
.end method

.method public final OooOO0()Z
    .locals 2

    iget v0, p0, Lz2/jp;->OooO0o:I

    invoke-direct {p0}, Lz2/jp;->OooO()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final OooOO0O()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lz2/jp;->OooO0oO:I

    return-void
.end method

.method public final OooOO0o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/jp;->OooO0oo:Lz2/mp;

    return-void
.end method

.method public final OooOOO(I)V
    .locals 0

    iput p1, p0, Lz2/jp;->OooO:I

    return-void
.end method

.method public final OooOOO0(Lz2/wl;Lz2/wl;)V
    .locals 0

    iput-object p1, p0, Lz2/jp;->OooO0OO:Lz2/wl;

    iput-object p2, p0, Lz2/jp;->OooO0Oo:Lz2/wl;

    return-void
.end method

.method public final OooOOOO(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V
    .locals 0

    iput-object p1, p0, Lz2/jp;->OooO0O0:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-void
.end method

.method public final OooOOOo(I)V
    .locals 0

    iput p1, p0, Lz2/jp;->OooO0oO:I

    return-void
.end method

.method public final OooOOo(I)V
    .locals 4

    iget-object v0, p0, Lz2/jp;->OooO0oo:Lz2/mp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/mp;->OooO0O0()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lz2/jp;->OooO0O0:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iget-object v1, p0, Lz2/jp;->OooO0OO:Lz2/wl;

    iget-object v2, p0, Lz2/jp;->OooO0Oo:Lz2/wl;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lz2/mp;->OooOOOO(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lz2/wl;Lz2/wl;Z)Lz2/mp;

    move-result-object p1

    iput-object p1, p0, Lz2/jp;->OooO0oo:Lz2/mp;

    :cond_1
    return-void
.end method

.method public final OooOOo0()V
    .locals 1

    invoke-virtual {p0}, Lz2/jp;->OooO00o()I

    move-result v0

    invoke-virtual {p0, v0}, Lz2/jp;->OooOOo(I)V

    return-void
.end method

.method public final OooOOoo(C)V
    .locals 1

    iget-object v0, p0, Lz2/jp;->OooO0o0:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final OooOo00(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/jp;->OooO0o0:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
