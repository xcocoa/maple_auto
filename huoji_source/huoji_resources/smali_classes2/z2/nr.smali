.class public abstract Lz2/nr;
.super Lz2/qr;
.source ""


# static fields
.field private static final OooO0Oo:I = 0x5

.field private static final OooO0o0:I = 0xf


# direct methods
.method public constructor <init>(Lz2/do;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/qr;-><init>(Lz2/do;)V

    return-void
.end method


# virtual methods
.method public OooO0Oo()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/rr;->OooO0OO()Lz2/do;

    move-result-object v0

    invoke-virtual {v0}, Lz2/do;->OooOOO0()I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lz2/pr;->OooO0o(Ljava/lang/StringBuilder;I)V

    const/16 v1, 0x2d

    const/16 v2, 0xf

    invoke-virtual {p0, v0, v1, v2}, Lz2/qr;->OooOO0(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
