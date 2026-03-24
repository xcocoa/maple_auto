.class public Lz2/ca$OooO0OO;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/ca;


# direct methods
.method private constructor <init>(Lz2/ca;)V
    .locals 0

    iput-object p1, p0, Lz2/ca$OooO0OO;->OooO00o:Lz2/ca;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/ca;Lz2/ca$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/ca$OooO0OO;-><init>(Lz2/ca;)V

    return-void
.end method


# virtual methods
.method public varargs OooO00o([Ljava/lang/String;)Ljava/lang/Void;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lz2/ca$OooO0OO;->OooO00o:Lz2/ca;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lz2/ca;->OooO0oO(Lz2/ca;Z)Z

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lz2/ce;->OooO0oo()Lz2/ce;

    move-result-object v1

    iget-object p1, p0, Lz2/ca$OooO0OO;->OooO00o:Lz2/ca;

    invoke-static {p1}, Lz2/ca;->OooOOO0(Lz2/ca;)Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    move-result-object p1

    iget-object v2, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->UpdateUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lz2/ca$OooO0OO;->OooO00o:Lz2/ca;

    invoke-static {p1}, Lz2/ca;->OooOOO0(Lz2/ca;)Lcom/cyjh/http/bean/response/VersionUpdateInfo;

    move-result-object p1

    iget v5, p1, Lcom/cyjh/http/bean/response/VersionUpdateInfo;->PackageSize:I

    iget-object p1, p0, Lz2/ca$OooO0OO;->OooO00o:Lz2/ca;

    iget-object v6, p1, Lz2/ca;->o0OOO0o:Lz2/ce$OooO0OO;

    invoke-virtual/range {v1 .. v6}, Lz2/ce;->OooO0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILz2/ce$OooO0OO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/ca$OooO0OO;->OooO00o([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
