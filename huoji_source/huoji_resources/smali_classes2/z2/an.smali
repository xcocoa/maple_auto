.class public final Lz2/an;
.super Lz2/jn;
.source ""


# instance fields
.field private final OooO0O0:[Ljava/lang/String;

.field private final OooO0OO:[Ljava/lang/String;

.field private final OooO0Oo:[Ljava/lang/String;

.field private final OooO0o:Ljava/lang/String;

.field private final OooO0o0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lz2/an;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lz2/jn;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p1, p0, Lz2/an;->OooO0O0:[Ljava/lang/String;

    iput-object p2, p0, Lz2/an;->OooO0OO:[Ljava/lang/String;

    iput-object p3, p0, Lz2/an;->OooO0Oo:[Ljava/lang/String;

    iput-object p4, p0, Lz2/an;->OooO0o0:Ljava/lang/String;

    iput-object p5, p0, Lz2/an;->OooO0o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OooO()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mailto:"

    return-object v0
.end method

.method public final OooO00o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lz2/an;->OooO0O0:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/an;->OooO0OO:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/an;->OooO0Oo:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/an;->OooO0o0:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/an;->OooO0o:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/an;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0o0()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/an;->OooO0Oo:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oO()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/an;->OooO0OO:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oo()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lz2/an;->OooO0O0:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final OooOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/an;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0O()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/an;->OooO0O0:[Ljava/lang/String;

    return-object v0
.end method
