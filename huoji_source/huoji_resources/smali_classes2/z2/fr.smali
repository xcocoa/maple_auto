.class public final Lz2/fr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Z

.field private final OooO0O0:Lz2/zq;

.field private final OooO0OO:Lz2/zq;

.field private final OooO0Oo:Lz2/ar;


# direct methods
.method public constructor <init>(Lz2/zq;Lz2/zq;Lz2/ar;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/fr;->OooO0O0:Lz2/zq;

    iput-object p2, p0, Lz2/fr;->OooO0OO:Lz2/zq;

    iput-object p3, p0, Lz2/fr;->OooO0Oo:Lz2/ar;

    iput-boolean p4, p0, Lz2/fr;->OooO00o:Z

    return-void
.end method

.method private static OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static OooO0o0(Ljava/lang/Object;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final OooO0O0()Lz2/ar;
    .locals 1

    iget-object v0, p0, Lz2/fr;->OooO0Oo:Lz2/ar;

    return-object v0
.end method

.method public final OooO0OO()Lz2/zq;
    .locals 1

    iget-object v0, p0, Lz2/fr;->OooO0O0:Lz2/zq;

    return-object v0
.end method

.method public final OooO0Oo()Lz2/zq;
    .locals 1

    iget-object v0, p0, Lz2/fr;->OooO0OO:Lz2/zq;

    return-object v0
.end method

.method public final OooO0o()Z
    .locals 1

    iget-boolean v0, p0, Lz2/fr;->OooO00o:Z

    return v0
.end method

.method public final OooO0oO()Z
    .locals 1

    iget-object v0, p0, Lz2/fr;->OooO0OO:Lz2/zq;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lz2/fr;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lz2/fr;

    iget-object v0, p0, Lz2/fr;->OooO0O0:Lz2/zq;

    iget-object v2, p1, Lz2/fr;->OooO0O0:Lz2/zq;

    invoke-static {v0, v2}, Lz2/fr;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/fr;->OooO0OO:Lz2/zq;

    iget-object v2, p1, Lz2/fr;->OooO0OO:Lz2/zq;

    invoke-static {v0, v2}, Lz2/fr;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/fr;->OooO0Oo:Lz2/ar;

    iget-object p1, p1, Lz2/fr;->OooO0Oo:Lz2/ar;

    invoke-static {v0, p1}, Lz2/fr;->OooO00o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lz2/fr;->OooO0O0:Lz2/zq;

    invoke-static {v0}, Lz2/fr;->OooO0o0(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lz2/fr;->OooO0OO:Lz2/zq;

    invoke-static {v1}, Lz2/fr;->OooO0o0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lz2/fr;->OooO0Oo:Lz2/ar;

    invoke-static {v1}, Lz2/fr;->OooO0o0(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz2/fr;->OooO0O0:Lz2/zq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/fr;->OooO0OO:Lz2/zq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/fr;->OooO0Oo:Lz2/ar;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lz2/ar;->OooO0OO()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
