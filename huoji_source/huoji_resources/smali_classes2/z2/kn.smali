.class public final Lz2/kn;
.super Lz2/jn;
.source ""


# instance fields
.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lz2/kn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lz2/jn;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lz2/kn;->OooO0O0:Ljava/lang/String;

    iput-object p2, p0, Lz2/kn;->OooO0OO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OooO00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/kn;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/kn;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/kn;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method
