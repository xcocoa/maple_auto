.class public Lz2/fc0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:Z

.field private OooO0Oo:Z

.field private OooO0o0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/fc0;->OooO0OO:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/fc0;->OooO0Oo:Z

    const-string v0, ""

    iput-object v0, p0, Lz2/fc0;->OooO0o0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz2/fc0;->OooO0O0:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lz2/fc0;->OooO0o0:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public OooO00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/fc0;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/fc0;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/fc0;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0Oo()Z
    .locals 2

    iget-object v0, p0, Lz2/fc0;->OooO00o:Ljava/lang/String;

    const-string v1, "_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/fc0;->OooO00o:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public OooO0o()Z
    .locals 1

    iget-boolean v0, p0, Lz2/fc0;->OooO0Oo:Z

    return v0
.end method

.method public OooO0o0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/fc0;->OooO0OO:Z

    return v0
.end method

.method public OooO0oO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/fc0;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/fc0;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public OooOO0(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/fc0;->OooO0OO:Z

    return-void
.end method

.method public OooOO0O(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/fc0;->OooO0Oo:Z

    return-void
.end method
