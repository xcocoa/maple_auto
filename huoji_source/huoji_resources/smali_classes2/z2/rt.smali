.class public final Lz2/rt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO0o:I = 0x8


# instance fields
.field private OooO00o:Lcom/google/zxing/qrcode/decoder/Mode;

.field private OooO0O0:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private OooO0OO:Lz2/gt;

.field private OooO0Oo:I

.field private OooO0o0:Lz2/nt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lz2/rt;->OooO0Oo:I

    return-void
.end method

.method public static OooO0o(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final OooO(Lz2/nt;)V
    .locals 0

    iput-object p1, p0, Lz2/rt;->OooO0o0:Lz2/nt;

    return-void
.end method

.method public final OooO00o()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    iget-object v0, p0, Lz2/rt;->OooO0O0:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public final OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/rt;->OooO0Oo:I

    return v0
.end method

.method public final OooO0OO()Lz2/nt;
    .locals 1

    iget-object v0, p0, Lz2/rt;->OooO0o0:Lz2/nt;

    return-object v0
.end method

.method public final OooO0Oo()Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    iget-object v0, p0, Lz2/rt;->OooO00o:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method

.method public final OooO0o0()Lz2/gt;
    .locals 1

    iget-object v0, p0, Lz2/rt;->OooO0OO:Lz2/gt;

    return-object v0
.end method

.method public final OooO0oO(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 0

    iput-object p1, p0, Lz2/rt;->OooO0O0:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method public final OooO0oo(I)V
    .locals 0

    iput p1, p0, Lz2/rt;->OooO0Oo:I

    return-void
.end method

.method public final OooOO0(Lcom/google/zxing/qrcode/decoder/Mode;)V
    .locals 0

    iput-object p1, p0, Lz2/rt;->OooO00o:Lcom/google/zxing/qrcode/decoder/Mode;

    return-void
.end method

.method public final OooOO0O(Lz2/gt;)V
    .locals 0

    iput-object p1, p0, Lz2/rt;->OooO0OO:Lz2/gt;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/rt;->OooO00o:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/rt;->OooO0O0:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/rt;->OooO0OO:Lz2/gt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/rt;->OooO0Oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/rt;->OooO0o0:Lz2/nt;

    if-nez v1, :cond_0

    const-string v1, "\n matrix: null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n matrix:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/rt;->OooO0o0:Lz2/nt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ">>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
