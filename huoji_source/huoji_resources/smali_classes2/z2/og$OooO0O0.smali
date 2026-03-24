.class public final Lz2/og$OooO0O0;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/og;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lz2/pg;",
        "Ljava/lang/Void;",
        "Lz2/pg;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/og;


# direct methods
.method private constructor <init>(Lz2/og;)V
    .locals 0

    iput-object p1, p0, Lz2/og$OooO0O0;->OooO00o:Lz2/og;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/og;B)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/og$OooO0O0;-><init>(Lz2/og;)V

    return-void
.end method

.method private static varargs OooO00o([Lz2/pg;)Lz2/pg;
    .locals 11

    const/4 v0, 0x0

    aget-object p0, p0, v0

    :try_start_0
    invoke-static {}, Lz2/ag;->OooO0o0()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "script"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2, v3, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v2, v3, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lz2/pg;->OooO00o()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lz2/pg;->OooOo00()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lz2/pg;->OooO0Oo()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/io/File;

    aput-object v1, v7, v0

    aput-object v4, v7, v3

    const/4 v1, 0x2

    aput-object v5, v7, v1

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lz2/pg;->OooO00o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lz2/pg;->OooOo00()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lz2/pg;->OooO0Oo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/io/File;

    aput-object v4, v2, v0

    aput-object v5, v2, v3

    aput-object v8, v2, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_2

    aget-object v9, v7, v1

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    aget-object v9, v7, v1

    aget-object v10, v2, v1

    invoke-static {v9, v10}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    aget-object v9, v2, v1

    invoke-virtual {v9, v3, v0}, Ljava/io/File;->setReadable(ZZ)Z

    goto :goto_2

    :cond_1
    aget-object v9, v7, v1

    aput-object v9, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lz2/pg;->OooOoo0()Lz2/pg;

    move-result-object p0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/pg;->OooOo0O(Ljava/lang/String;)Lz2/tg;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/tg;->OooOo(Ljava/lang/String;)Lz2/tg;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lz2/tg;->OooOOOo(Ljava/lang/String;)Lz2/tg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private OooO0O0(Lz2/pg;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/og$OooO0O0;->OooO00o:Lz2/og;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lz2/pg;->OooOOOO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    iget-object v0, p0, Lz2/og$OooO0O0;->OooO00o:Lz2/og;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lz2/pg;->OooOOOO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lz2/pg;

    invoke-static {p1}, Lz2/og$OooO0O0;->OooO00o([Lz2/pg;)Lz2/pg;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lz2/pg;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/og$OooO0O0;->OooO00o:Lz2/og;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lz2/pg;->OooOOOO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    iget-object v0, p0, Lz2/og$OooO0O0;->OooO00o:Lz2/og;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lz2/pg;->OooOOOO(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/og;->OooOO0o(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)V

    :cond_0
    return-void
.end method
