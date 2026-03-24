.class public Lz2/ec$OooO0O0;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private OooO00o:Ljava/io/File;

.field public final synthetic OooO0O0:Lz2/ec;


# direct methods
.method public constructor <init>(Lz2/ec;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lz2/ec$OooO0O0;->OooO0O0:Lz2/ec;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lz2/ec$OooO0O0;->OooO00o:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public varargs OooO00o([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "elf_data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tessdata"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/j4;->OooO0o(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lz2/ec$OooO0O0;->OooO00o:Ljava/io/File;

    invoke-static {v0, p1}, Lz2/g5;->OooO0OO(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    iget-object v0, p0, Lz2/ec$OooO0O0;->OooO00o:Ljava/io/File;

    invoke-static {v0}, Lz2/j4;->OooO(Ljava/io/File;)Z

    invoke-static {}, Lz2/ec;->OooO00o()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteZipTask doInBackground --> result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/ec$OooO0O0;->OooO0O0:Lz2/ec;

    invoke-static {v0}, Lz2/ec;->OooO0O0(Lz2/ec;)Lz2/ec$OooO0o;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/ec$OooO0O0;->OooO0O0:Lz2/ec;

    invoke-static {p1}, Lz2/ec;->OooO0O0(Lz2/ec;)Lz2/ec$OooO0o;

    move-result-object p1

    invoke-interface {p1}, Lz2/ec$OooO0o;->OooO0OO()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/ec$OooO0O0;->OooO0O0:Lz2/ec;

    invoke-static {p1}, Lz2/ec;->OooO0O0(Lz2/ec;)Lz2/ec$OooO0o;

    move-result-object p1

    const-string v0, "\u4e0b\u8f7d\u8bed\u97f3\u8bc6\u522b\u5e93\u5931\u8d25\uff01"

    invoke-interface {p1, v0}, Lz2/ec$OooO0o;->OooO0O0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lz2/ec$OooO0O0;->OooO00o([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lz2/ec$OooO0O0;->OooO0O0(Ljava/lang/Boolean;)V

    return-void
.end method
