.class public final Lz2/sr;
.super Lz2/rr;
.source ""


# static fields
.field private static final OooO0OO:I = 0x5


# direct methods
.method public constructor <init>(Lz2/do;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/rr;-><init>(Lz2/do;)V

    return-void
.end method


# virtual methods
.method public final OooO0Oo()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lz2/rr;->OooO0O0()Lz2/zr;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lz2/zr;->OooO00o(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
