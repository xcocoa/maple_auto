.class public Lz2/aj$OooO0OO;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Lz2/aj$OooO0o;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/aj;


# direct methods
.method private constructor <init>(Lz2/aj;)V
    .locals 0

    iput-object p1, p0, Lz2/aj$OooO0OO;->OooO00o:Lz2/aj;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/aj;Lz2/aj$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/aj$OooO0OO;-><init>(Lz2/aj;)V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/aj$OooO0OO;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs OooO0O0([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance p1, Lz2/dj;

    iget-object v0, p0, Lz2/aj$OooO0OO;->OooO00o:Lz2/aj;

    invoke-static {v0}, Lz2/aj;->OooO00o(Lz2/aj;)Ljava/security/KeyPair;

    move-result-object v0

    invoke-direct {p1, v0}, Lz2/dj;-><init>(Ljava/security/KeyPair;)V

    iget-object v0, p0, Lz2/aj$OooO0OO;->OooO00o:Lz2/aj;

    invoke-static {v0}, Lz2/aj;->OooO0O0(Lz2/aj;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lz2/aj$OooO0OO$OooO00o;

    invoke-direct {v1, p0}, Lz2/aj$OooO0OO$OooO00o;-><init>(Lz2/aj$OooO0OO;)V

    invoke-interface {p1, v0, v1}, Lz2/cj;->OooO00o(Ljava/lang/String;Lz2/cj$OooO00o;)V

    const-string p1, ""

    return-object p1
.end method

.method public varargs OooO0OO([Lz2/aj$OooO0o;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, v2, Lz2/aj$OooO0o;->OooO0O0:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lz2/aj$OooO0OO;->OooO00o:Lz2/aj;

    invoke-static {v3}, Lz2/aj;->OooO0Oo(Lz2/aj;)Lz2/aj$OooO0O0;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lz2/aj$OooO0OO;->OooO00o:Lz2/aj;

    invoke-static {v3}, Lz2/aj;->OooO0Oo(Lz2/aj;)Lz2/aj$OooO0O0;

    move-result-object v3

    iget-object v2, v2, Lz2/aj$OooO0o;->OooO0O0:Ljava/util/List;

    invoke-interface {v3, v2}, Lz2/aj$OooO0O0;->OooO00o(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/Logcat/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lz2/aj$OooO0OO;->OooO00o:Lz2/aj;

    invoke-static {v4}, Lz2/aj;->OooO0o0(Lz2/aj;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lz2/aj$OooO0o;->OooO0O0:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lz2/bj;->OooOO0(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/aj$OooO0OO;->OooO0O0([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lz2/aj$OooO0o;

    invoke-virtual {p0, p1}, Lz2/aj$OooO0OO;->OooO0OO([Lz2/aj$OooO0o;)V

    return-void
.end method
