.class public final Lz2/bo;
.super Lz2/jn;
.source ""


# instance fields
.field private final OooO:Ljava/lang/String;

.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:Ljava/lang/String;

.field private final OooO0Oo:Ljava/lang/String;

.field private final OooO0o:Ljava/lang/String;

.field private final OooO0o0:Z

.field private final OooO0oO:Ljava/lang/String;

.field private final OooO0oo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lz2/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lz2/bo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lz2/jn;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    iput-object p2, p0, Lz2/bo;->OooO0O0:Ljava/lang/String;

    iput-object p1, p0, Lz2/bo;->OooO0OO:Ljava/lang/String;

    iput-object p3, p0, Lz2/bo;->OooO0Oo:Ljava/lang/String;

    iput-boolean p4, p0, Lz2/bo;->OooO0o0:Z

    iput-object p5, p0, Lz2/bo;->OooO0o:Ljava/lang/String;

    iput-object p6, p0, Lz2/bo;->OooO0oO:Ljava/lang/String;

    iput-object p7, p0, Lz2/bo;->OooO0oo:Ljava/lang/String;

    iput-object p8, p0, Lz2/bo;->OooO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OooO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/bo;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO00o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lz2/bo;->OooO0O0:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/bo;->OooO0OO:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/bo;->OooO0Oo:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v1, p0, Lz2/bo;->OooO0o0:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/bo;->OooO0oo:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/bo;->OooO0oO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/bo;->OooO0o:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/bo;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/bo;->OooO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/bo;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0o()Z
    .locals 1

    iget-boolean v0, p0, Lz2/bo;->OooO0o0:Z

    return v0
.end method
