.class public Lcom/cyjh/mq/service/IpcService;
.super Landroid/app/Service;
.source ""


# static fields
.field private static final OooooOO:Ljava/lang/String; = "mqm_engine"

.field private static final OooooOo:Ljava/lang/String; = "ipc_server_port"

.field private static final Oooooo:Ljava/lang/String; = "/system/bin/app_process64"

.field private static final Oooooo0:Ljava/lang/String; = "/system/bin/app_process32"

.field private static final OoooooO:Ljava/lang/String; = "elfinject"

.field private static final Ooooooo:Ljava/lang/String; = "model"

.field private static final o00O0O:Ljava/lang/String; = "mycache"

.field private static final o00Oo0:Ljava/lang/String; = "dalvik-cache"

.field private static final o0OoOo0:Ljava/lang/String; = "code_cache"

.field private static final ooOO:Ljava/lang/String; = "secondary-dexes"


# instance fields
.field private OoooOoO:Ljava/lang/String;

.field private OoooOoo:I

.field private Ooooo00:Ljava/lang/String;

.field private Ooooo0o:Ljava/lang/String;

.field private OooooO0:Lz2/eg;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    iput-object v0, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo0o:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO(Lcom/cyjh/mq/service/IpcService;)V
    .locals 11

    const-string v0, "DaemonClient.zip"

    const-string v1, "model"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Service;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v5, :cond_2

    aget-object v8, v4, v6

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v8, v10}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v9, v7, v2}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/cyjh/mq/service/IpcService;)Lz2/eg;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mq/service/IpcService;->OooooO0:Lz2/eg;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lcom/cyjh/mq/service/IpcService;Lz2/eg;)Lz2/eg;
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mq/service/IpcService;->OooooO0:Lz2/eg;

    return-object p1
.end method

.method private OooO0OO()V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lz2/o00O0O00;->OooO0Oo:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mq/service/IpcService;->OooOOO()I

    move-result v2

    iput v2, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoo:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mLocalServerAddr:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mPort:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoo:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DaemonClient.zip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "lib"

    const-string v7, "libmqm.so"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sput-object v7, Lz2/o00O0O00;->OooO0O0:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    const-string v8, "/system/bin/app_process32"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, "app_process"

    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    const-string v10, "/system/bin/app_process64"

    if-lt v7, v9, :cond_1

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v8, v10

    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v10, "mycache"

    const-string v11, "dalvik-cache"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v7, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v7, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v7, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "export CLASSPATH="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x9

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v8, v13, v4

    aput-object v1, v13, v3

    const/4 v14, 0x2

    const-string v15, "com.cyjh.mobileanjian.ipc.ClientService"

    aput-object v15, v13, v14

    iget-object v14, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    const/16 v16, 0x3

    aput-object v14, v13, v16

    const/4 v14, 0x4

    aput-object v5, v13, v14

    iget v14, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoo:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x5

    aput-object v14, v13, v17

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x6

    aput-object v14, v13, v18

    const/4 v14, 0x7

    aput-object v6, v13, v14

    const/16 v19, 0x8

    aput-object v2, v13, v19

    const-string v14, "exec %s %s %s %s %s %s %s %s %s&\n"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isOppoR9S()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v8, v10, v4

    aput-object v1, v10, v3

    const/4 v1, 0x2

    aput-object v15, v10, v1

    iget-object v1, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    aput-object v1, v10, v16

    const/4 v1, 0x4

    aput-object v5, v10, v1

    iget v1, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v17

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v18

    const/4 v1, 0x7

    aput-object v6, v10, v1

    aput-object v2, v10, v19

    const-string v1, "exec %s -Xnodex2oat %s %s %s %s %s %s %s &\n"

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "export ANDROID_DATA="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\necho Okay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->Ooooo0o:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO0Oo(Lcom/cyjh/mq/service/IpcService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0o(Lcom/cyjh/mq/service/IpcService;)I
    .locals 0

    iget p0, p0, Lcom/cyjh/mq/service/IpcService;->OoooOoo:I

    return p0
.end method

.method private OooO0o0()V
    .locals 11

    const-string v0, "DaemonClient.zip"

    const-string v1, "model"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Service;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v5, :cond_2

    aget-object v8, v4, v6

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v8, v10}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v9, v7, v2}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v2}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private OooO0oO()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "elfinject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lz2/vf;->OooO0o0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_x86:I

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyRawFile(Landroid/content/Context;ILjava/lang/String;)Z

    return-void

    :cond_0
    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_arm:I

    goto :goto_0
.end method

.method private OooO0oo()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo0o:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "execute command mRootScriptContent: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    const-string v5, "start_eventsrvR"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lz2/ag;->OooO0o()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Service;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo0o:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private OooOO0()V
    .locals 2

    new-instance v0, Lcom/cyjh/mq/service/IpcService$OooO00o;

    const-string v1, "ipcserver_thread"

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/service/IpcService$OooO00o;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public static synthetic OooOO0O(Lcom/cyjh/mq/service/IpcService;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "elfinject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lz2/vf;->OooO0o0(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_x86:I

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->copyRawFile(Landroid/content/Context;ILjava/lang/String;)Z

    return-void

    :cond_0
    sget v1, Lcom/cyjh/mqsdk/R$raw;->elfinject_arm:I

    goto :goto_0
.end method

.method private OooOO0o()V
    .locals 2

    new-instance v0, Lcom/cyjh/mq/service/IpcService$OooO0O0;

    const-string v1, "startRootRequest"

    invoke-direct {v0, p0, v1}, Lcom/cyjh/mq/service/IpcService$OooO0O0;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static OooOOO()I
    .locals 3

    const/16 v0, 0x2efe

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, v0}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_2
    return v0
.end method

.method public static synthetic OooOOO0(Lcom/cyjh/mq/service/IpcService;)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "start_eventsrv"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo0o:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "execute command mRootScriptContent: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    const-string v5, "start_eventsrvR"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lz2/ag;->OooO0o()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Service;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cyjh/mq/service/IpcService;->Ooooo0o:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunner;->getInstance()Lcom/cyjh/mq/sdk/MqRunner;

    move-result-object p1

    invoke-virtual {p1}, Lz2/og;->notifyRotationStatus()V

    invoke-static {}, Lcom/cyjh/mq/sdk/MqRunnerLite;->getInstance()Lcom/cyjh/mq/sdk/MqRunnerLite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mq/sdk/MqRunnerLite;->notifyRotationStatus()V

    invoke-static {}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->getInstance()Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->updateScreenSize()V

    return-void
.end method

.method public onCreate()V
    .locals 20

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/mobileanjian/ipc/rpc/AndroidHelper;->init(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cyjh/event/Injector;->init(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lz2/o00O0O00;->OooO0Oo:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mq/service/IpcService;->OooOOO()I

    move-result v2

    iput v2, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoo:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mLocalServerAddr:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mPort:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoo:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DaemonClient.zip"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v6, "lib"

    const-string v7, "libmqm.so"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    sput-object v7, Lz2/o00O0O00;->OooO0O0:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    const-string v8, "/system/bin/app_process32"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, "app_process"

    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    const-string v10, "/system/bin/app_process64"

    if-lt v7, v9, :cond_1

    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v8, v10

    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v10, "mycache"

    const-string v11, "dalvik-cache"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/cyjh/mobileanjian/ipc/utils/FileUtils;->makeAbsolutePath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v7, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v7, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v7, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "export CLASSPATH="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x9

    new-array v13, v12, [Ljava/lang/Object;

    aput-object v8, v13, v4

    aput-object v1, v13, v3

    const/4 v14, 0x2

    const-string v15, "com.cyjh.mobileanjian.ipc.ClientService"

    aput-object v15, v13, v14

    iget-object v14, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    const/16 v16, 0x3

    aput-object v14, v13, v16

    const/4 v14, 0x4

    aput-object v5, v13, v14

    iget v14, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoo:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x5

    aput-object v14, v13, v17

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x6

    aput-object v14, v13, v18

    const/4 v14, 0x7

    aput-object v6, v13, v14

    const/16 v19, 0x8

    aput-object v2, v13, v19

    const-string v14, "exec %s %s %s %s %s %s %s %s %s&\n"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/utils/RomUtils;->isOppoR9S()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v8, v10, v4

    aput-object v1, v10, v3

    const/4 v1, 0x2

    aput-object v15, v10, v1

    iget-object v1, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoO:Ljava/lang/String;

    aput-object v1, v10, v16

    const/4 v1, 0x4

    aput-object v5, v10, v1

    iget v1, v0, Lcom/cyjh/mq/service/IpcService;->OoooOoo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v10, v17

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v18

    const/4 v1, 0x7

    aput-object v6, v10, v1

    aput-object v2, v10, v19

    const-string v1, "exec %s -Xnodex2oat %s %s %s %s %s %s %s &\n"

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "export ANDROID_DATA="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/cyjh/mq/service/IpcService;->Ooooo00:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\necho Okay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/mq/service/IpcService;->Ooooo0o:Ljava/lang/String;

    new-instance v1, Lcom/cyjh/mq/service/IpcService$OooO00o;

    const-string v2, "ipcserver_thread"

    invoke-direct {v1, v0, v2}, Lcom/cyjh/mq/service/IpcService$OooO00o;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/cyjh/mq/service/IpcService$OooO0O0;

    const-string v2, "startRootRequest"

    invoke-direct {v1, v0, v2}, Lcom/cyjh/mq/service/IpcService$OooO0O0;-><init>(Lcom/cyjh/mq/service/IpcService;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "VERSION"

    const-string v2, "build info: build on 2026-03-03 10:15:14"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/cyjh/mq/service/IpcService;->OooooO0:Lz2/eg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/eg;->onAppQuit()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lz2/je;->OooO00o()Lz2/je;

    move-result-object v0

    iget-boolean v1, v0, Lz2/je;->OooO0OO:Z

    if-eqz v1, :cond_2

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lz2/je;->OooO0oo(Ljava/lang/String;)Z

    iget-object v1, v0, Lz2/je;->OooO0O0:Lz2/je$OooO0OO;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lz2/je;->OooO0O0:Lz2/je$OooO0OO;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :try_start_0
    iget-object v0, v0, Lz2/je;->OooO0Oo:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lz2/je;->OooO0oo:Lz2/je;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
