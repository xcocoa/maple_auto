.class public final Lz2/rn;
.super Lz2/jn;
.source ""


# instance fields
.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:Ljava/lang/String;

.field private final OooO0Oo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lz2/jn;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lz2/rn;->OooO0O0:Ljava/lang/String;

    iput-object p2, p0, Lz2/rn;->OooO0OO:Ljava/lang/String;

    iput-object p3, p0, Lz2/rn;->OooO0Oo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OooO00o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lz2/rn;->OooO0O0:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/rn;->OooO0Oo:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/rn;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/rn;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/rn;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method
