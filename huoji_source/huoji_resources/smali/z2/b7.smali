.class public Lz2/b7;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static OooO0o:Z = false

.field private static final OooO0o0:Ljava/lang/String; = "z2.b7"

.field private static final OooO0oO:Lz2/b7;


# instance fields
.field private OooO00o:Lcom/cyjh/elfin/entity/Script;

.field public OooO0O0:Z

.field public OooO0OO:I

.field public OooO0Oo:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/b7;

    invoke-direct {v0}, Lz2/b7;-><init>()V

    sput-object v0, Lz2/b7;->OooO0oO:Lz2/b7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/b7;->OooO0OO:I

    return-void
.end method

.method public static OooO0Oo()Lz2/b7;
    .locals 1

    sget-object v0, Lz2/b7;->OooO0oO:Lz2/b7;

    return-object v0
.end method


# virtual methods
.method public OooO()V
    .locals 19

    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lz2/g6;->o0Oo0oo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "script.lc"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "script.prop"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "script.atc"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string v9, "script.ui"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    const-string v11, "script.uip"

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string v13, "script.rtd"

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    const-string v15, "script.info"

    invoke-direct {v14, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMQScript --> PATH_APPFILE ="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-static {v0, v3}, Lz2/k4;->OooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {v0, v5}, Lz2/k4;->OooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-static {v0, v7}, Lz2/k4;->OooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v14, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-static {v0, v9}, Lz2/k4;->OooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-static {v0, v11}, Lz2/k4;->OooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-static {v0, v13}, Lz2/k4;->OooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    move-object/from16 v17, v1

    const-string v1, "script.cfg"

    invoke-static {v0, v1}, Lz2/k4;->OooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {v0, v15}, Lz2/k4;->OooO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

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
    move-object/from16 v15, p0

    iput-boolean v0, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-static {v0}, Lz2/c9;->OooO00o(Landroid/content/Context;)I

    move-result v0

    move-object/from16 v18, v1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    iput-boolean v1, v15, Lz2/b7;->OooO0O0:Z

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v15, Lz2/b7;->OooO0O0:Z

    goto :goto_2

    :cond_3
    move-object/from16 v18, v1

    :goto_2
    :try_start_0
    iget-boolean v0, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_3
    invoke-static {v0}, Lz2/z8;->OooO0OO(Ljava/io/InputStream;)Lcom/cyjh/elfin/entity/Script;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_3

    :goto_4
    iput-object v0, v15, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v1, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v2, v17

    :goto_5
    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/entity/Script;->setLcFile(Ljava/io/File;)V

    iget-object v0, v15, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v1, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move-object v4, v3

    :goto_6
    invoke-virtual {v0, v4}, Lcom/cyjh/elfin/entity/Script;->setPropFile(Ljava/io/File;)V

    iget-object v0, v15, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v1, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move-object v6, v14

    :goto_7
    invoke-virtual {v0, v6}, Lcom/cyjh/elfin/entity/Script;->setAtcFile(Ljava/io/File;)V

    iget-object v0, v15, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v1, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    move-object v8, v7

    :goto_8
    invoke-virtual {v0, v8}, Lcom/cyjh/elfin/entity/Script;->setUiFile(Ljava/io/File;)V

    iget-object v0, v15, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v1, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    move-object v10, v9

    :goto_9
    invoke-virtual {v0, v10}, Lcom/cyjh/elfin/entity/Script;->setUipFile(Ljava/io/File;)V

    iget-object v0, v15, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v1, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v1, :cond_a

    goto :goto_a

    :cond_a
    move-object v12, v11

    :goto_a
    invoke-virtual {v0, v12}, Lcom/cyjh/elfin/entity/Script;->setRtdFile(Ljava/io/File;)V

    iget-object v0, v15, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    iget-boolean v1, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v1, :cond_b

    move-object/from16 v14, v16

    goto :goto_b

    :cond_b
    move-object/from16 v14, v18

    :goto_b
    invoke-virtual {v0, v14}, Lcom/cyjh/elfin/entity/Script;->setInfoFile(Ljava/io/File;)V

    iget-object v0, v15, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0, v13}, Lcom/cyjh/elfin/entity/Script;->setCfgFile(Ljava/io/File;)V

    invoke-static {}, Lz2/b5;->OooO0OO()Lz2/b5;

    move-result-object v0

    iget-object v1, v15, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v1}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/b5;->OooO0oO(Ljava/lang/String;)V

    iget-boolean v0, v15, Lz2/b7;->OooO0O0:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v0

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v1

    invoke-virtual {v1}, Lz2/b7;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v2

    invoke-virtual {v2}, Lz2/b7;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object v3

    invoke-virtual {v3}, Lz2/b7;->OooO0o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lz2/i7;->OooOOO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    :cond_0
    return-void
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lz2/j3;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/j3;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz2/j3;->OooO0O0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/EngineParams;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/EngineParams;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->PackageName:Ljava/lang/String;

    invoke-static {}, Lz2/j3;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/j3;->OooO0O0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lz2/j3;->OooO0O0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->BaseURL:Ljava/lang/String;

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->PayAppId:Ljava/lang/String;

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->ScriptType:Z

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v2, 0x7f100219

    invoke-virtual {v0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, v1, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    sget-object v0, Lz2/j3;->OooO0OO:[Ljava/lang/String;

    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->authDesKeys:[Ljava/lang/String;

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/m7;->OooO0Oo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->keys:Ljava/lang/String;

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cyjh/http/bean/request/EngineParams;->id:Ljava/lang/String;

    invoke-static {v1}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 1

    const-string v0, "d6c9aaeed6c9abd9c8cffed0cef3d8cbcccfd0d7c9cfd7fdc9aaccc0d6c9aaeed6c9aad1cecff6d2c0f1abd8d7dffedecfa9dcd2cfaaf6f3d7aac8c8c8cfd0d8cfccccd8cbcec8d2cef1dcdfcbaad0eacfcfeed9c0abdcdfcbaac8e3f9f1feaad1e3a3f3f8a8eee3c9d2d4cccbf7c0aff8dffde8cec2d4eaf8edeaebc9cfd0d2cfccdcd7cca8e2abf9dedcf2fef7c8a9f9a9c0efcdf3eee0c0cdfde2ffced0afd1e0dcc8ccaaf2ebccdfc8d5c3a9fec3f9ddd4f3c9cfa3cafff0fee2f8dff5e3cba9c8d6f9a8dcedd6aaafa9ccc2c0c3d9f1f2aad7f6c8eecff6dbaad7f0c3e3c8f0cbe2c0f0d0d3cccccfafccf7e2d9d7dcd0f0d7f7e2d8c0abc8abcff7fef5f9ddcce2c9aafea8ffccdccad7abd0edfbcffec2c3a8fef5d7c2cce8f9f1feccc8dcd3afc8f0cfd1d4cdeeaef8aadcf6d5cdf1e8cff7fec0c8f6ccddf8f0f2a9c9cfc8d8cfcfdcd9d9f3aaeed6c9aaeec8cfafdfd3dcd8cccbf1e2d0cbe3d8d6c8ccf1eed6c9aaeed6cbf5a7"

    return-object v0
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 1

    const-string v0, "d6c9aaeed6c9abd9c8cffed0cef3d8c9cfaadffdcfdcd0d0ccf1dccfc8c9d8d6c8ccf1eed6c9aaeed6cbead4c9cff6deccabdcd0cbf1dcd8c9aad0f4cfcfd4edcbcfdccec8cdf5aec0cde2f0cdf6dcaefef0f1edf8cfabcff9dcf6c0f8f1afabcccffef2cfccfec8fea9f6cbf8cff5edccf7feddc0cdeeeafec2fec2d5d2d4e9d9f0d8acfea8eda8f8dfafddc8cdeed1cccedfe0feddafefced2d0f5c9dfd4ecd4f7fee2cce0f2d6cea8c8e2fbc2f2d3cdddc3e8c3a8c8f6cdc2d0d9fbf1dce3c8cdf9e2ceddeec3cff6f6ccfef6f6f5fff7a3d7d6a8cfd1cdcdeac8d5cdedafd4dccfaffedefef0f8dec0f0fbaacfe3cca8eaebd4f6f1e2cdf1d4edcfdceafbcee3eedfd4f0c8a9fbccdcf3cfc2d0eccdccdcefc8c2d0efc0e0dbe3d4c2d0e0cfd2d4ebfeaaf6dfcbccdcd8cbfdead8f8f0fdaaffddd4ead1a9c3aad4ccd4d9c0dcf2ded4dfe2ddf9cff6aed5ced0e8cdf4f9e2c3a9d7edcbf4d4cafbddaee8c9ced8f2fbdef2effed9eeafffc2f6dcfbccdce0fbaaabeefbf0f2aecfcffed0cbf4feecd9f6eadff9abdce8d4ccf1edcbabccd0f8cceaf3d7cff2f6c9dceaddccf1f2d6f9dceaecd7d2f6d5d5cdd4dcd4a9feeaccccd0decfc2f2e0d1a9dcf2f8aad4f1c8f7cbe0d7dfc8dfc9c2fdaefbddfde0d1a8f2aafff0cbd1f9cfafacc3e0cbabcdf7c8a8c8a9dcccc0cedfaac3e0f2a8cfaacce0c8d2f6c8ccf0f6dccff1c0f5fbf7aee3d7cfd4ccfea8d4c2cbc2c8ecc9d2f2d8fbaaccd8d7dceaf3cfa9ead7cddcccd2ccaaafebccf7c0d3fffdeacecdf4dccef8ced0d9cca9f6d8fff6c8e8c8a9f2dcfbcecccad1aaf2f7cbcdf6d1d6abead3fbc2c0c8c8ddd0c0c0f6eaf1ccdfdccfd1aac3abcccfabd1d5dfccc9c8f7a3dfcea9d8effbd2feaad4f7eaaad7cddcedd9f4f2f1c8cedcccfeaaead9cbcfaaabf9abd4d2c9f1a3c9c9dff5ecc9f0feecc0cfc0cccedffdeccdc2d4c8f8c2fed8c3a9fda9fedffec0cfccd4d6cfabdcc0cbaac0cefbc9eed4c9f0fee2d4f6eaf3c3f0fef5fbf1a2d1ffccc3aac0f1ede3cce3eedfcecddcdcd4d2d8c8fed2d4f7c3cff6abf9cdd4aed7d2cfa9c0cec0ddcccfd4c8c8cddcccf8cdfeaffbcfafa8fbaaafaecccdfecac9cfe2c3f9c2c0f7cbf7f2d4ffddf2cbc3ccf2f6d4edeac3fbcffda8d5dcdfedd7e0feabfbc2f6c8cccdabdfd6a9f2abc8f7a3ead1a8dce3fff0f9e3d7ccc8f1cba8c8f3c0ddaaaec9a9c8aacdc2cbe8fff1d0e8cecceaf5fbf7dfafffcedbedcbabdcdfc9f1afdfc9e0cfe0d9f0c0d9c9cffeebfbabf9a8cfc2c0d8cef1cbe8f8c2c8c2c8ddfedcffcedfaec8f6f2c2f9f7c0acd4e3eefbc8dde2d7f9dcc0f2fef1ccdff9f4c0eecff3a3cfc0f7afa9d4cfd4f5ffcdf2d9d7dceaf0f8cde2edc0aaf5d1cecda2a8fbcefeabfbaac8d6cfabc0a9cfaad4e8cbabdcd8ccd9e9e0cff1cce0c9c2dccdf9dfccabd4e0f2edfeccf2d4cea9c8e3f9cffea8ccf6dceffbcda3abc0abd8f5fbcdf2f0fef4d0c9d7abfee3c0f1ccfbf8fdeaf0f9f1f2cbfbdfc0d3d7cddcdef9f7d0d1d7abcce9fedfeecbf9ded0f6cfdcf2dfd7ddccd6cef0ccaaf8a8ccccfbf6c0afcfdedba3d9f3aaeed6c9aaeec8cfafdfd3dcd0cecbc9d8cbcff1f6cdcbccc8dcd3dfeedccdc9aaeed6c9aaeed9fda7a7"

    return-object v0
.end method

.method public OooO0oO()Lcom/cyjh/elfin/entity/Script;
    .locals 1

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    return-object v0
.end method

.method public OooO0oo()V
    .locals 0

    return-void
.end method

.method public OooOO0()V
    .locals 12

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_0

    invoke-static {}, Lz2/i7;->OooO()Lz2/i7;

    move-result-object v1

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getLcFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getAtcFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getCfgFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-wide v6, p0, Lz2/b7;->OooO0Oo:J

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/m7;->OooO0o()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lz2/m7;->OooO0o0()Lz2/m7;

    move-result-object v0

    invoke-virtual {v0}, Lz2/m7;->OooO0oO()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v10, 0x7f10020f

    invoke-virtual {v0, v10}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    const v11, 0x7f100219

    invoke-virtual {v0, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lz2/i7;->Oooo000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "script info not exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public OooOO0O()Z
    .locals 1

    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lz2/b7;->OooO00o:Lcom/cyjh/elfin/entity/Script;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/Script;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOO0o()Z
    .locals 2

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-boolean v1, p0, Lz2/b7;->OooO0O0:Z

    invoke-static {v0, v1}, Lz2/c9;->OooO(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public OooOOO()V
    .locals 0

    invoke-virtual {p0}, Lz2/b7;->OooO()V

    return-void
.end method

.method public OooOOO0(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENGIN_MQRUNNER_TOKENKEY: setTokenKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-wide p1, p0, Lz2/b7;->OooO0Oo:J

    return-void
.end method
