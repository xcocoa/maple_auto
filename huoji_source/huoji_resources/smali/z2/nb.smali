.class public Lz2/nb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:Ljava/lang/String;

.field private OooO0Oo:I

.field private OooO0o0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/nb;->OooO0OO:Ljava/lang/String;

    return-void
.end method

.method public OooO00o()I
    .locals 1

    iget v0, p0, Lz2/nb;->OooO0Oo:I

    return v0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/nb;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/nb;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/nb;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o(I)V
    .locals 0

    iput p1, p0, Lz2/nb;->OooO0Oo:I

    return-void
.end method

.method public OooO0o0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/nb;->OooO0o0:Z

    return v0
.end method

.method public OooO0oO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/nb;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lz2/nb;->OooO00o:Ljava/lang/String;

    iget-object v0, p0, Lz2/nb;->OooO0O0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/nb;->OooO0O0:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public OooOO0(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/nb;->OooO0o0:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderBean{dirPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/nb;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", dirName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/nb;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", firstImgPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/nb;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", dirCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/nb;->OooO0Oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lz2/nb;->OooO0o0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
