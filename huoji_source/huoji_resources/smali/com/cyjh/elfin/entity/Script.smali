.class public Lcom/cyjh/elfin/entity/Script;
.super Ljava/lang/Object;


# static fields
.field public static final SCRIPT_STATE_FREE:I = 0x0

.field public static final SCRIPT_STATE_LOAD:I = 0x1

.field public static final SCRIPT_STATE_PAUSE:I = 0x3

.field public static final SCRIPT_STATE_PAUSE_BY_HEART_BEAT_VERIFI_ERR:I = 0x4

.field public static final SCRIPT_STATE_RUNING:I = 0x2


# instance fields
.field private appId:Ljava/lang/String;

.field private atcFile:Ljava/io/File;

.field private bestResolution:Lcom/cyjh/elfin/entity/BestResolution;

.field private cfgFile:Ljava/io/File;

.field private changeFileList:I

.field private description:Ljava/lang/String;

.field private fileVersion:Lcom/cyjh/elfin/entity/FileVersion;

.field private id:Ljava/lang/String;

.field private infoFile:Ljava/io/File;

.field private lcFile:Ljava/io/File;

.field private name:Ljava/lang/String;

.field private propFile:Ljava/io/File;

.field private rtdFile:Ljava/io/File;

.field private selId:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private uiFile:Ljava/io/File;

.field private uipFile:Ljava/io/File;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06db\u06e0\u06e2\u06e4\u06e0\u06e1\u06d7\u06e6\u06e6\u06e8\u06e1\u06e7\u06d8\u06df\u06e8\u06e1\u06e7\u06e8\u06e5\u06d8\u06d9\u06da\u06e4\u06da\u06e4\u06e4\u06e7\u06e2\u06eb\u06e5\u06e5\u06d9\u06e1\u06d8\u06e7\u06d6\u06db\u06eb\u06ec\u06dc\u06e8\u06e5\u06e0\u06da\u06eb\u06e5\u06d8\u06e1\u06ec\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x35d

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x31

    const/16 v2, 0x2fc

    const v3, -0x2cec420f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e8\u06d7\u06e1\u06e8\u06e8\u06d8\u06da\u06ec\u06e4\u06d6\u06d6\u06e4\u06ec\u06e4\u06e5\u06dc\u06e0\u06e6\u06d7\u06d7\u06da\u06e7\u06d9\u06e8\u06d8\u06e6\u06e2\u06eb\u06d9\u06e0\u06d9\u06e7\u06d6\u06eb\u06e2\u06e5\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->appId:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x530d0879 -> :sswitch_0
        0xe26efe8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAtcFile()Ljava/io/File;
    .locals 4

    const-string v0, "\u06d9\u06da\u06e8\u06d8\u06e0\u06e8\u06d8\u06d8\u06dc\u06da\u06e1\u06e2\u06d6\u06eb\u06e5\u06d6\u06e4\u06e6\u06e0\u06e8\u06e2\u06d7\u06d8\u06e0\u06e2\u06d8\u06d8\u06dc\u06e1\u06e0\u06e4\u06ec\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x14d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x9c

    const/16 v2, 0x27c

    const v3, 0x3e2d6163

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06df\u06ec\u06e5\u06d6\u06e5\u06d8\u06ec\u06db\u06ec\u06e2\u06e1\u06df\u06e5\u06d7\u06d9\u06e5\u06e4\u06ec\u06df\u06d8\u06e2\u06e7\u06dc\u06eb\u06dc\u06d9\u06d9\u06e2\u06ec\u06e7\u06e1\u06e0\u06db\u06ec\u06eb\u06e1\u06d9\u06e7\u06e0\u06df\u06e5\u06e4\u06eb\u06d7\u06da\u06d7"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->atcFile:Ljava/io/File;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x47d3f5e9 -> :sswitch_0
        0x62559741 -> :sswitch_1
    .end sparse-switch
.end method

.method public getBestResolution()Lcom/cyjh/elfin/entity/BestResolution;
    .locals 4

    const-string v0, "\u06e6\u06e7\u06d6\u06e7\u06ec\u06d6\u06d9\u06eb\u06da\u06db\u06e5\u06e1\u06d8\u06ec\u06d6\u06e1\u06d8\u06d8\u06da\u06d7\u06dc\u06e7\u06dc\u06d6\u06e1\u06eb\u06e2\u06db\u06e6\u06ec\u06e1\u06d8\u06e4\u06db\u06eb\u06e2\u06e6\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3bc

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d5

    const/16 v2, 0x2b0

    const v3, -0x257d0253

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e6\u06e5\u06e4\u06e8\u06e7\u06da\u06dc\u06d8\u06eb\u06dc\u06d7\u06da\u06eb\u06dc\u06e2\u06e5\u06e6\u06d9\u06db\u06db\u06ec\u06e5\u06e8\u06dc\u06ec\u06e4\u06e4\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->bestResolution:Lcom/cyjh/elfin/entity/BestResolution;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x131e3ef4 -> :sswitch_0
        0x54d95b4a -> :sswitch_1
    .end sparse-switch
.end method

.method public getCfgFile()Ljava/io/File;
    .locals 4

    const-string v0, "\u06da\u06e0\u06e6\u06df\u06df\u06e6\u06d8\u06dc\u06e7\u06eb\u06e4\u06eb\u06d6\u06df\u06ec\u06e1\u06e2\u06e5\u06d8\u06db\u06e6\u06e6\u06d8\u06d7\u06da\u06d8\u06e8\u06da\u06dc\u06d8\u06e0\u06e6\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x303

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x370

    const/16 v2, 0x1bf

    const v3, -0x64433f8e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06db\u06e6\u06d6\u06d8\u06e7\u06d7\u06e6\u06e1\u06e8\u06e6\u06d8\u06d9\u06e2\u06e6\u06eb\u06e7\u06d9\u06e7\u06db\u06d9\u06d6\u06e4\u06e7\u06e8\u06e5\u06db\u06d9\u06e4\u06e1\u06d8\u06e2\u06d6\u06e7\u06d6\u06d8\u06df\u06eb\u06d7\u06e1\u06db\u06da\u06e1\u06df\u06e1\u06d6\u06d8\u06eb\u06ec\u06dc\u06d8\u06e4\u06d8\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->cfgFile:Ljava/io/File;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x65dcde8e -> :sswitch_0
        -0x3d10dd4f -> :sswitch_1
    .end sparse-switch
.end method

.method public getChangeFileList()I
    .locals 4

    const-string v0, "\u06e0\u06d6\u06e8\u06e6\u06e7\u06e7\u06d8\u06e8\u06d8\u06ec\u06e1\u06d8\u06d7\u06d7\u06db\u06d6\u06e7\u06e6\u06e5\u06e2\u06da\u06ec\u06d9\u06d7\u06eb\u06da\u06eb\u06da\u06dc\u06e4\u06db\u06ec\u06e1\u06e0\u06d8\u06e5\u06d8\u06e0\u06e7\u06e7\u06e1\u06e1\u06e5\u06d8\u06db\u06df\u06e4\u06e2\u06d7\u06e7\u06d9\u06d7\u06e6\u06d8\u06db\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1e1

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x13e

    const/16 v2, 0x1ec

    const v3, 0x215bf73e

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e5\u06e8\u06d8\u06da\u06e2\u06da\u06da\u06d6\u06d9\u06da\u06da\u06d6\u06e1\u06d9\u06e8\u06d8\u06d8\u06ec\u06e8\u06d8\u06db\u06d6\u06e7\u06d8\u06e5\u06db\u06e7\u06e7\u06d8\u06d8\u06eb\u06db\u06e1\u06df\u06d7\u06e4\u06dc\u06e1\u06e5\u06d7\u06db\u06e4\u06dc\u06e1\u06d8"

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/cyjh/elfin/entity/Script;->changeFileList:I

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x49443c00 -> :sswitch_1
        0x4833cec -> :sswitch_0
    .end sparse-switch
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06d9\u06eb\u06e4\u06df\u06e6\u06d8\u06d8\u06d8\u06d8\u06da\u06db\u06d6\u06d6\u06d8\u06ec\u06da\u06e4\u06dc\u06e7\u06e1\u06e2\u06e5\u06e8\u06d8\u06d6\u06ec\u06df\u06d8\u06da\u06d6\u06e7\u06d7\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2e3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3d5

    const/16 v2, 0x30f

    const v3, -0x766c7dd6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06d6\u06d7\u06d7\u06ec\u06ec\u06e1\u06da\u06e1\u06d8\u06e7\u06dc\u06eb\u06e4\u06e2\u06df\u06d8\u06da\u06d7\u06ec\u06db\u06dc\u06e4\u06ec\u06e5\u06e6\u06e4\u06e1\u06e8\u06eb\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->description:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x183dc8d7 -> :sswitch_1
        -0xa079214 -> :sswitch_0
    .end sparse-switch
.end method

.method public getFileVersion()Lcom/cyjh/elfin/entity/FileVersion;
    .locals 4

    const-string v0, "\u06d7\u06e6\u06d6\u06ec\u06e5\u06db\u06ec\u06db\u06e5\u06e2\u06da\u06e7\u06e6\u06dc\u06e1\u06d8\u06df\u06e4\u06e6\u06d8\u06db\u06e1\u06e1\u06df\u06dc\u06e6\u06d8\u06dc\u06e5\u06da\u06e5\u06e8\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x183

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x10e

    const/16 v2, 0x16d

    const v3, -0x79c4f3c5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06eb\u06e8\u06d8\u06d7\u06e5\u06e5\u06d7\u06d6\u06dc\u06e6\u06eb\u06e6\u06e0\u06d8\u06eb\u06da\u06dc\u06df\u06e4\u06d9\u06e4\u06eb\u06db\u06e8\u06d8\u06d6\u06d6\u06e1\u06dc\u06d8\u06d6\u06e1\u06d7\u06da\u06da\u06e5"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->fileVersion:Lcom/cyjh/elfin/entity/FileVersion;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x393890d2 -> :sswitch_0
        0x7b14fbc2 -> :sswitch_1
    .end sparse-switch
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06eb\u06e0\u06e0\u06dc\u06e0\u06e6\u06e6\u06d8\u06e8\u06d8\u06eb\u06ec\u06e1\u06d7\u06e1\u06dc\u06db\u06e8\u06d8\u06e1\u06da\u06e5\u06d8\u06db\u06db\u06e8\u06d8\u06e6\u06e5\u06da\u06d8\u06d9\u06db\u06e5\u06df\u06e5\u06d8\u06eb\u06e1\u06d6\u06d8\u06d8\u06e7\u06e5\u06d8\u06e4\u06e7\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x350

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x239

    const/16 v2, 0x3a

    const v3, -0x80c8546

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e0\u06e8\u06d8\u06e6\u06d7\u06d8\u06d8\u06dc\u06e2\u06e2\u06e6\u06dc\u06d8\u06d9\u06e8\u06e4\u06e4\u06e2\u06e1\u06d8\u06d9\u06d8\u06dc\u06db\u06e6\u06e0\u06e8\u06e5\u06d8\u06d8\u06e6\u06e1\u06df\u06e6\u06e0\u06d7\u06d9\u06eb\u06e8\u06d8\u06d9\u06db\u06e4\u06eb\u06d8\u06e7\u06d8\u06df\u06e8\u06e8\u06d8\u06e1\u06d7"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->id:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x209a2aca -> :sswitch_0
        0x359f26ad -> :sswitch_1
    .end sparse-switch
.end method

.method public getInfoFile()Ljava/io/File;
    .locals 4

    const-string v0, "\u06e0\u06e6\u06e7\u06d8\u06e5\u06d9\u06e6\u06d8\u06e4\u06e8\u06e0\u06e6\u06dc\u06d8\u06e6\u06ec\u06dc\u06d8\u06d7\u06da\u06db\u06eb\u06e2\u06dc\u06d6\u06ec\u06d6\u06d8\u06e8\u06e7\u06e1\u06d8\u06d9\u06e8\u06d9\u06d7\u06df\u06e7\u06e0\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x113

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1dd

    const/16 v2, 0x19a

    const v3, 0x21151c2f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06d7\u06dc\u06da\u06da\u06db\u06d9\u06dc\u06d8\u06dc\u06dc\u06dc\u06d8\u06d9\u06e6\u06d7\u06dc\u06d7\u06e0\u06e4\u06e0\u06db\u06d9\u06e6\u06e0\u06df\u06df\u06d7\u06e6\u06dc\u06ec\u06e0\u06e6\u06d8\u06eb\u06d6\u06d9\u06eb\u06df\u06dc\u06d8\u06e2\u06e1\u06e8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->infoFile:Ljava/io/File;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6efc1579 -> :sswitch_1
        -0x54bd645e -> :sswitch_0
    .end sparse-switch
.end method

.method public getLcFile()Ljava/io/File;
    .locals 4

    const-string v0, "\u06e5\u06df\u06d6\u06d6\u06d6\u06e5\u06d8\u06d9\u06d6\u06e2\u06d6\u06e5\u06e8\u06d7\u06eb\u06e6\u06d6\u06e1\u06e7\u06e7\u06e5\u06d8\u06dc\u06e7\u06ec\u06d8\u06df\u06e2\u06e7\u06e4\u06d8\u06d8\u06da\u06d9\u06d6\u06e4\u06d7\u06d8\u06d8\u06db\u06e0\u06eb\u06d8\u06e6\u06d7\u06df\u06d9\u06ec\u06e7\u06d6\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x160

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x30f

    const/16 v2, 0x15d

    const v3, 0x186a9c6f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06e8\u06e5\u06d8\u06db\u06dc\u06d8\u06db\u06e6\u06e5\u06d8\u06e4\u06da\u06e8\u06d8\u06e2\u06e0\u06db\u06d9\u06e8\u06e1\u06db\u06e8\u06d7\u06d7\u06d6\u06d8\u06d8\u06e0\u06d6\u06d6\u06d8\u06d6\u06eb\u06e5\u06d8\u06e5\u06e8\u06d8\u06e6\u06d8\u06e1\u06d8\u06db\u06e2\u06e4\u06e7\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->lcFile:Ljava/io/File;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x19af0291 -> :sswitch_1
        0x18619377 -> :sswitch_0
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06eb\u06eb\u06d8\u06d6\u06e7\u06ec\u06e0\u06d8\u06d9\u06df\u06df\u06e6\u06d8\u06dc\u06dc\u06e5\u06d8\u06d9\u06da\u06e1\u06e7\u06e5\u06d8\u06d8\u06eb\u06e4\u06e8\u06d8\u06df\u06da\u06d6\u06e1\u06d8\u06dc\u06d7\u06da\u06e6\u06e0\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x25e

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x46

    const/16 v2, 0x41

    const v3, 0x46416750

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e2\u06d6\u06e7\u06e2\u06ec\u06ec\u06e5\u06ec\u06e7\u06df\u06eb\u06d9\u06d7\u06e1\u06d6\u06d8\u06d7\u06e5\u06e1\u06d7\u06eb\u06eb\u06e6\u06e0\u06e7\u06e4\u06d8\u06e2\u06e4\u06e2\u06db\u06df\u06e5\u06ec\u06eb\u06e0\u06e8\u06df\u06d6\u06d8\u06d8\u06e5\u06dc\u06d8\u06eb\u06dc\u06d7\u06d7\u06e0\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->name:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x23706288 -> :sswitch_0
        0x2e668077 -> :sswitch_1
    .end sparse-switch
.end method

.method public getPropFile()Ljava/io/File;
    .locals 4

    const-string v0, "\u06e0\u06df\u06e7\u06eb\u06e2\u06eb\u06ec\u06dc\u06d8\u06eb\u06e7\u06ec\u06e7\u06df\u06e5\u06db\u06e2\u06ec\u06df\u06db\u06d9\u06d6\u06d9\u06e4\u06d6\u06df\u06dc\u06da\u06e0\u06e0\u06e8\u06dc\u06d8\u06e6\u06d8\u06e6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2c8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x142

    const/16 v2, 0x20b

    const v3, 0x295bd487

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06df\u06d8\u06d8\u06e0\u06ec\u06e5\u06df\u06da\u06dc\u06d8\u06d9\u06d7\u06dc\u06d8\u06e1\u06e1\u06da\u06e4\u06eb\u06e0\u06e4\u06dc\u06da\u06da\u06e0\u06e7\u06d6\u06e6\u06dc\u06d8\u06d8\u06da\u06dc\u06d8\u06d9\u06df\u06da\u06d6\u06e7\u06df\u06eb\u06d7\u06d8\u06e4\u06d7"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->propFile:Ljava/io/File;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1c7697ff -> :sswitch_1
        0x7e0d2b7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getRtdFile()Ljava/io/File;
    .locals 4

    const-string v0, "\u06e8\u06df\u06e6\u06d8\u06e2\u06ec\u06e7\u06e1\u06e1\u06e2\u06e2\u06d6\u06e5\u06e2\u06eb\u06e2\u06df\u06e4\u06e6\u06df\u06d6\u06d8\u06d7\u06e2\u06e4\u06e5\u06df\u06e7\u06d9\u06e8\u06d9"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x121

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x20

    const/16 v2, 0x278

    const v3, -0x134c33ea

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e4\u06e4\u06e8\u06da\u06e6\u06d8\u06e8\u06da\u06e6\u06ec\u06e4\u06e2\u06e8\u06e0\u06da\u06e1\u06dc\u06e2\u06d8\u06d6\u06d8\u06e2\u06e1\u06e8\u06d8\u06df\u06e2\u06db\u06d9\u06d7\u06dc"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->rtdFile:Ljava/io/File;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x8668168 -> :sswitch_1
        0x5ce827af -> :sswitch_0
    .end sparse-switch
.end method

.method public getSelId()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e7\u06e7\u06e6\u06d8\u06db\u06d7\u06d6\u06e8\u06e6\u06dc\u06d8\u06d8\u06db\u06d8\u06d8\u06db\u06e4\u06e1\u06e4\u06e7\u06e1\u06d8\u06e5\u06d9\u06e5\u06e8\u06ec\u06d9\u06d9\u06ec\u06e2\u06df\u06da\u06e6\u06d7\u06dc\u06d8\u06e1\u06d6\u06e5\u06e7\u06e5\u06da\u06e6\u06d7\u06df\u06e8\u06e5\u06e2\u06ec"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x27b

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3e9

    const/16 v2, 0x81

    const v3, -0x5c3dd615

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d8\u06e5\u06e1\u06e5\u06d7\u06e2\u06db\u06e4\u06eb\u06d6\u06d6\u06e8\u06d8\u06e2\u06dc\u06d8\u06d8\u06dc\u06df\u06e5\u06d8\u06e1\u06d7\u06e4\u06e7\u06d6\u06eb\u06db\u06eb\u06e6\u06e5\u06d7\u06e5\u06d8\u06db\u06e4\u06e4\u06e8\u06dc\u06dc\u06d8\u06e0\u06e4\u06db\u06e5\u06d8\u06d8\u06df\u06df\u06d9\u06e6\u06d8\u06e7\u06d8"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->selId:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5f1ee9a5 -> :sswitch_0
        -0x5a6169ce -> :sswitch_1
    .end sparse-switch
.end method

.method public getSize()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e5\u06ec\u06e8\u06d8\u06e2\u06e2\u06d8\u06da\u06e0\u06e1\u06d8\u06d9\u06e6\u06e1\u06d8\u06db\u06e4\u06e1\u06d8\u06eb\u06da\u06e8\u06d8\u06e1\u06d6\u06e8\u06d8\u06e7\u06df\u06e6\u06d8\u06e7\u06e2\u06e6\u06e4\u06df\u06d6\u06df\u06da\u06e6\u06d9\u06e8\u06d8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32b

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x1d

    const/16 v2, 0x3b9

    const v3, 0x206bcb67

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e4\u06dc\u06d7\u06e5\u06df\u06dc\u06df\u06e4\u06e6\u06e5\u06dc\u06d9\u06e8\u06e6\u06da\u06db\u06dc\u06e0\u06d8\u06e4\u06e5\u06d9\u06e5\u06d8\u06d9\u06d8\u06df\u06da\u06d9\u06d7\u06d6\u06d8\u06e8\u06e0\u06d6\u06da\u06e2\u06eb\u06dc\u06e6"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->size:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x52a90b8e -> :sswitch_0
        0x4d29342 -> :sswitch_1
    .end sparse-switch
.end method

.method public getUiFile()Ljava/io/File;
    .locals 4

    const-string v0, "\u06d7\u06d7\u06e8\u06d8\u06e0\u06e7\u06eb\u06e6\u06ec\u06e5\u06e8\u06e0\u06e6\u06d7\u06d7\u06dc\u06db\u06e2\u06e1\u06e5\u06ec\u06e7\u06e4\u06e4\u06dc\u06da\u06ec\u06e1\u06d8\u06e6\u06e4\u06e8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x386

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x24c

    const/16 v2, 0x2d4

    const v3, -0x20493041

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e0\u06e5\u06d8\u06d8\u06e6\u06e1\u06db\u06e5\u06d7\u06e7\u06e8\u06d7\u06da\u06d7\u06d9\u06e5\u06d8\u06e2\u06e4\u06da\u06dc\u06e5\u06e6\u06d7\u06e2\u06df\u06e2\u06d9\u06e5\u06e5\u06eb\u06da"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->uiFile:Ljava/io/File;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x74385b12 -> :sswitch_1
        0x38dfaca5 -> :sswitch_0
    .end sparse-switch
.end method

.method public getUipFile()Ljava/io/File;
    .locals 4

    const-string v0, "\u06eb\u06d7\u06e5\u06e8\u06df\u06e8\u06d8\u06df\u06dc\u06e7\u06d9\u06e6\u06dc\u06d8\u06d7\u06e6\u06e5\u06d8\u06d6\u06d8\u06e6\u06d8\u06ec\u06e5\u06dc\u06d8\u06d7\u06df\u06d8\u06d8\u06e2\u06d7\u06e2\u06d6\u06e2\u06db\u06e1\u06da\u06d6\u06d8\u06e8\u06e7\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x176

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x274

    const/16 v2, 0x31d

    const v3, 0x3df24f47

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06eb\u06e7\u06d6\u06e1\u06db\u06e8\u06eb\u06d8\u06d8\u06e6\u06d7\u06d8\u06db\u06e6\u06d8\u06d7\u06e2\u06e4\u06dc\u06e5\u06da\u06e1\u06db\u06da\u06e6\u06d7\u06e5\u06d8\u06db\u06e5\u06da"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->uipFile:Ljava/io/File;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0xdce253e -> :sswitch_1
        0x4614ba2c -> :sswitch_0
    .end sparse-switch
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    const-string v0, "\u06e8\u06d7\u06ec\u06e1\u06d9\u06da\u06e6\u06df\u06e8\u06d8\u06e7\u06e5\u06e1\u06df\u06e1\u06d7\u06e0\u06d6\u06df\u06e4\u06e1\u06d8\u06e2\u06eb\u06dc\u06d8\u06ec\u06df\u06d8\u06e6\u06ec\u06e5\u06e4\u06d8\u06e1\u06d8\u06d8\u06e6\u06dc\u06d7\u06e6\u06e7\u06e5\u06eb\u06d8\u06e5\u06e2\u06db\u06ec\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xda

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xc6

    const/16 v2, 0x28a

    const v3, 0x2e1947d8

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06dc\u06e7\u06e7\u06e5\u06e4\u06d7\u06d7\u06e8\u06e8\u06d8\u06e5\u06e2\u06e6\u06d8\u06d8\u06e4\u06e7\u06e4\u06e8\u06df\u06e6\u06e1\u06e8\u06d8\u06e0\u06e7\u06e2\u06e0\u06da\u06dc\u06d8\u06e1\u06e8\u06db\u06e0\u06da\u06e8\u06d8\u06d9\u06dc\u06d8\u06d8\u06df\u06db\u06eb\u06da\u06e2\u06e0\u06d8\u06df\u06e8\u06d7\u06e4\u06e2"

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->version:Ljava/lang/String;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x44e471b6 -> :sswitch_1
        0x398bb2f8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06d8\u06eb\u06e2\u06db\u06d7\u06d9\u06da\u06d8\u06d8\u06d8\u06e0\u06d9\u06ec\u06eb\u06db\u06dc\u06d7\u06d8\u06e7\u06d8\u06dc\u06dc\u06d6\u06eb\u06dc\u06dc\u06d8\u06df\u06d6\u06ec\u06d9\u06d7\u06e8\u06d8\u06e5\u06e0\u06d9\u06d9\u06d6\u06d8\u06d6\u06e8\u06e5\u06d6\u06d8\u06dc\u06e1\u06dc\u06e1\u06d8\u06e0\u06e8\u06d6\u06e8\u06d7\u06da\u06dc\u06da\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x22

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x239

    const/16 v2, 0xe3

    const v3, 0x33bf7fa6

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06d7\u06d8\u06e5\u06d6\u06d8\u06d8\u06e5\u06d7\u06df\u06e2\u06d7\u06d8\u06d8\u06e8\u06e7\u06e2\u06e5\u06e4\u06e5\u06ec\u06ec\u06e2\u06e6\u06e0\u06da\u06e0\u06e5\u06d8\u06d7\u06df\u06ec\u06db\u06e4\u06d8\u06d8\u06dc\u06d7\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e1\u06da\u06e6\u06e7\u06d7\u06e6\u06d9\u06dc\u06df\u06dc\u06d8\u06d6\u06e4\u06db\u06e1\u06d6\u06e5\u06d8\u06dc\u06e1\u06e8\u06d8\u06e8\u06eb\u06e2\u06e6\u06e6\u06d6\u06d7\u06db\u06e5\u06d9\u06e7\u06e5\u06df\u06da\u06ec\u06da\u06e6\u06ec\u06e0\u06ec\u06e8\u06d8\u06e1\u06dc\u06da\u06db\u06e7\u06e0"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->appId:Ljava/lang/String;

    const-string v0, "\u06e5\u06dc\u06e1\u06e0\u06da\u06e1\u06df\u06d8\u06e7\u06e5\u06e7\u06d6\u06d8\u06d7\u06e6\u06db\u06dc\u06da\u06d8\u06d8\u06e4\u06e2\u06d8\u06e2\u06db\u06eb\u06e7\u06dc\u06e5\u06e7\u06db\u06ec\u06d9\u06d8\u06d6\u06d8\u06df\u06e2\u06e4\u06e7\u06e6\u06dc\u06d8\u06eb\u06dc\u06e6\u06d8\u06df\u06e7\u06e8\u06e1\u06ec\u06d7\u06e5\u06e2\u06e4\u06da\u06ec\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6cd1ffed -> :sswitch_2
        -0x182879ec -> :sswitch_0
        0x3628905 -> :sswitch_1
        0x281dcc09 -> :sswitch_3
    .end sparse-switch
.end method

.method public setAtcFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u06e1\u06e5\u06e8\u06ec\u06ec\u06e8\u06d8\u06d9\u06e1\u06e6\u06d8\u06e8\u06ec\u06e0\u06eb\u06db\u06e7\u06e4\u06d9\u06d8\u06df\u06df\u06da\u06eb\u06d6\u06da\u06e5\u06d9\u06d6\u06e5\u06e6\u06e8\u06d8\u06e8\u06d7\u06e7\u06e0\u06ec\u06df\u06e0\u06ec\u06dc\u06e7\u06d7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3cf

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x238

    const/16 v2, 0x102

    const v3, -0x36186c02

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e0\u06db\u06db\u06ec\u06e8\u06d8\u06d6\u06e8\u06e5\u06e4\u06e5\u06db\u06d8\u06eb\u06d8\u06d8\u06df\u06d6\u06e5\u06e1\u06e6\u06e1\u06d8\u06d6\u06d9\u06db\u06d6\u06db\u06e4\u06e1\u06e4\u06dc\u06d8\u06e7\u06e1\u06e5\u06d9\u06e0\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06eb\u06eb\u06e2\u06eb\u06da\u06ec\u06ec\u06db\u06e4\u06d6\u06e7\u06d8\u06eb\u06e4\u06e4\u06d7\u06ec\u06e5\u06d8\u06eb\u06d8\u06e1\u06d8\u06d7\u06e7\u06e6\u06e0\u06d7\u06d8\u06e0\u06e7\u06e4\u06eb\u06d9\u06db\u06d6\u06d6\u06e6\u06df\u06e7\u06e5\u06e7\u06ec\u06d8\u06d8\u06d8\u06d7\u06dc\u06d8\u06e4\u06d9\u06e5\u06d8\u06db\u06d8\u06e4\u06ec\u06e0\u06e8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->atcFile:Ljava/io/File;

    const-string v0, "\u06e6\u06d8\u06d9\u06da\u06d6\u06d8\u06d8\u06e8\u06e8\u06e8\u06d8\u06da\u06e2\u06d8\u06d8\u06d9\u06da\u06e4\u06d6\u06e4\u06e6\u06d8\u06e0\u06d8\u06e5\u06d8\u06eb\u06e0\u06da\u06e5\u06e6\u06ec\u06d6\u06e5\u06d8\u06da\u06e5\u06d9\u06e5\u06dc\u06d8\u06ec\u06dc\u06e8\u06d8\u06df\u06e7\u06db\u06d7\u06ec\u06e8\u06d8\u06d7\u06e7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x773ac5da -> :sswitch_1
        -0x66759f99 -> :sswitch_2
        0x2596ae5c -> :sswitch_0
        0x2e7485ee -> :sswitch_3
    .end sparse-switch
.end method

.method public setBestResolution(Lcom/cyjh/elfin/entity/BestResolution;)V
    .locals 4

    const-string v0, "\u06d8\u06e2\u06e8\u06d8\u06e2\u06ec\u06da\u06d6\u06df\u06dc\u06d8\u06d7\u06e8\u06e4\u06eb\u06e4\u06e7\u06e6\u06e8\u06e1\u06e2\u06db\u06d6\u06d8\u06d9\u06dc\u06dc\u06d8\u06ec\u06d7\u06eb\u06e6\u06d9\u06e0\u06e7\u06db\u06ec\u06e2\u06d7\u06e2\u06d6\u06d8\u06e2\u06eb\u06e8\u06d8\u06eb\u06da\u06db\u06db\u06dc\u06e7\u06d8\u06db\u06db\u06e2\u06e5\u06ec\u06e2"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x45

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x134

    const/16 v2, 0x33b

    const v3, 0x26d625f9

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d8\u06d6\u06e5\u06da\u06e8\u06e2\u06df\u06dc\u06e8\u06ec\u06e8\u06d8\u06e2\u06e1\u06e5\u06d8\u06e8\u06d9\u06e5\u06d8\u06db\u06da\u06d8\u06df\u06e7\u06d6\u06d8\u06e7\u06e6\u06ec\u06df\u06ec\u06d8\u06d7\u06e8\u06e0\u06d9\u06e7\u06e5\u06d7\u06d6\u06da\u06dc\u06e4\u06e6\u06e0\u06eb\u06e1\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06e2\u06e6\u06d7\u06d9\u06e6\u06da\u06e0\u06e4\u06ec\u06e7\u06da\u06ec\u06df\u06db\u06e1\u06d9\u06e8\u06eb\u06e5\u06e8\u06d7\u06e1\u06d8\u06d6\u06e1\u06e0\u06dc\u06e7"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->bestResolution:Lcom/cyjh/elfin/entity/BestResolution;

    const-string v0, "\u06d6\u06dc\u06d6\u06d8\u06eb\u06db\u06e0\u06e0\u06db\u06e5\u06d9\u06e4\u06e5\u06d8\u06da\u06da\u06eb\u06d6\u06e4\u06d8\u06d8\u06e7\u06d8\u06e7\u06d8\u06eb\u06e0\u06e6\u06da\u06e2\u06e5\u06df\u06e5\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e2710bc -> :sswitch_0
        -0x27acb70f -> :sswitch_1
        -0xa22573b -> :sswitch_2
        0x7d951313 -> :sswitch_3
    .end sparse-switch
.end method

.method public setCfgFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u06dc\u06d6\u06e8\u06d8\u06e4\u06e2\u06d7\u06d8\u06d7\u06e6\u06d8\u06df\u06e6\u06db\u06e6\u06e5\u06dc\u06d7\u06df\u06ec\u06e5\u06ec\u06e7\u06df\u06e2\u06dc\u06e4\u06e8\u06db\u06ec\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x332

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x352

    const/16 v2, 0x12b

    const v3, 0x4648fd63

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e7\u06e2\u06db\u06d6\u06e5\u06eb\u06d7\u06e6\u06d8\u06dc\u06e1\u06e5\u06d9\u06df\u06dc\u06e1\u06e0\u06e0\u06dc\u06db\u06e4\u06dc\u06e4\u06ec\u06d7\u06e7\u06d6\u06df\u06d6\u06e1\u06e6\u06df\u06d6\u06d7\u06d6\u06ec\u06e7\u06e8\u06e6\u06e7\u06d6\u06d8\u06d6\u06e0\u06e1\u06d8\u06dc\u06d7\u06eb\u06e0\u06e1\u06e5\u06d7\u06eb\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06df\u06dc\u06d7\u06d8\u06d6\u06d7\u06e5\u06d8\u06d6\u06d8\u06da\u06da\u06d7\u06e8\u06d6\u06e7\u06e7\u06e1\u06d6\u06e8\u06e0\u06da\u06dc\u06ec\u06e6\u06d8\u06db\u06da\u06e1\u06d8\u06ec\u06e8\u06d9\u06e2\u06d8\u06df\u06dc\u06df\u06e6\u06e5\u06d8\u06e1\u06d8\u06eb\u06db\u06e6\u06e4\u06d6\u06d8\u06dc\u06e8\u06d7"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->cfgFile:Ljava/io/File;

    const-string v0, "\u06d8\u06d6\u06e7\u06e0\u06d9\u06d8\u06d8\u06e4\u06e1\u06e8\u06d8\u06e6\u06e6\u06e0\u06ec\u06e4\u06e8\u06d8\u06e8\u06d8\u06e6\u06e5\u06dc\u06d6\u06d7\u06d7\u06da\u06d7\u06d8\u06d8\u06d6\u06d8\u06d8\u06d9\u06e7\u06e8\u06d8\u06df\u06da\u06d8\u06e0\u06e1\u06d8\u06e4\u06e4\u06d6\u06e4\u06e1\u06e7\u06e4\u06df\u06d6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6a42f346 -> :sswitch_1
        -0x225ef95a -> :sswitch_2
        0x5f406d0 -> :sswitch_3
        0x1ec9009e -> :sswitch_0
    .end sparse-switch
.end method

.method public setChangeFileList(I)V
    .locals 4

    const-string v0, "\u06d7\u06e7\u06d6\u06d8\u06eb\u06e7\u06e1\u06d6\u06df\u06db\u06ec\u06e0\u06d6\u06d8\u06eb\u06e8\u06dc\u06d9\u06d9\u06d8\u06d8\u06e5\u06d6\u06d6\u06e7\u06e4\u06e1\u06dc\u06e8\u06e5\u06d8\u06e2\u06db\u06e4"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xae

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1ef

    const/16 v2, 0x128

    const v3, -0xfd1aadb

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e8\u06e4\u06d9\u06ec\u06db\u06e4\u06ec\u06e2\u06dc\u06e6\u06e1\u06e8\u06d6\u06e5\u06d7\u06e7\u06e0\u06df\u06e6\u06e0\u06d9\u06eb\u06d6\u06d8\u06e0\u06e1\u06e0\u06d6\u06df\u06e5\u06d8\u06e5\u06d7\u06e2\u06eb\u06db\u06ec\u06e2\u06df\u06dc\u06d8\u06d6\u06ec\u06e1\u06d6\u06dc\u06e1\u06e5\u06dc\u06dc\u06ec\u06eb\u06e0\u06e6\u06e5\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06d6\u06d6\u06d8\u06d9\u06e0\u06eb\u06e6\u06e7\u06eb\u06e1\u06df\u06e1\u06d8\u06e7\u06eb\u06dc\u06d8\u06e8\u06e1\u06db\u06ec\u06e2\u06db\u06eb\u06e1\u06e5\u06e0\u06e7\u06e1\u06e5\u06d9\u06df\u06ec\u06e7\u06d6\u06dc\u06eb\u06d8\u06d9\u06db\u06da\u06e6\u06ec\u06e8\u06d8"

    goto :goto_0

    :sswitch_2
    iput p1, p0, Lcom/cyjh/elfin/entity/Script;->changeFileList:I

    const-string v0, "\u06df\u06e2\u06df\u06e4\u06d7\u06d8\u06e5\u06e8\u06da\u06db\u06e2\u06eb\u06d7\u06d7\u06e1\u06d7\u06e5\u06ec\u06e8\u06df\u06db\u06e6\u06e8\u06e6\u06d8\u06da\u06e6\u06df\u06e8\u06e0\u06d6\u06d8\u06d7\u06e6\u06e1\u06dc\u06d7\u06eb\u06d8\u06d9\u06e7\u06e0\u06e5\u06e7\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7adc6326 -> :sswitch_3
        -0x575a7c02 -> :sswitch_1
        -0x34d6f6d1 -> :sswitch_0
        0x353bd07d -> :sswitch_2
    .end sparse-switch
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06dc\u06e6\u06d8\u06e6\u06da\u06e8\u06d8\u06da\u06e0\u06e5\u06d9\u06e5\u06e5\u06df\u06e1\u06e6\u06d8\u06d9\u06e2\u06e6\u06d8\u06da\u06eb\u06da\u06e0\u06e5\u06da\u06d8\u06e0\u06dc\u06d8\u06e5\u06e0\u06e5\u06d8\u06d6\u06df\u06e2\u06e5\u06df\u06e1\u06d8\u06db\u06e4\u06e6\u06d6\u06ec\u06e2\u06e7\u06ec\u06dc\u06d8\u06da\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x125

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0xde

    const/16 v2, 0x2ae

    const v3, -0x367b3b46

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e1\u06d9\u06e6\u06e8\u06d8\u06d9\u06d6\u06db\u06dc\u06d8\u06da\u06e2\u06da\u06e0\u06d8\u06e6\u06d8\u06ec\u06d8\u06e2\u06df\u06e6\u06e5\u06d7\u06da\u06dc\u06ec\u06dc\u06e8\u06e5\u06d9\u06e1\u06d8\u06d8\u06e4\u06e1\u06d6\u06d8\u06d6\u06e7\u06e0\u06e7\u06d6\u06e6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d6\u06e5\u06d8\u06e1\u06db\u06d6\u06e7\u06e5\u06d7\u06e1\u06e6\u06d9\u06e7\u06df\u06e7\u06e4\u06ec\u06d8\u06d8\u06d7\u06e8\u06dc\u06e2\u06e7\u06e4\u06ec\u06e8\u06d6\u06d9\u06e7\u06e1\u06d8\u06d7\u06e1\u06e6\u06d6\u06d7\u06eb\u06d7\u06e0\u06e8\u06d8\u06d9\u06eb\u06d9\u06e6\u06e8\u06e5\u06df\u06dc\u06dc"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->description:Ljava/lang/String;

    const-string v0, "\u06e7\u06d8\u06e7\u06d8\u06db\u06e7\u06d6\u06db\u06d9\u06da\u06d7\u06e6\u06e6\u06da\u06e5\u06db\u06db\u06dc\u06e1\u06d8\u06dc\u06e6\u06d8\u06d8\u06e4\u06df\u06d6\u06d8\u06eb\u06d7\u06eb\u06e8\u06d6\u06dc\u06d8\u06e8\u06e4\u06e8\u06d8\u06e1\u06e2\u06e7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3c18921e -> :sswitch_1
        -0x330cacae -> :sswitch_3
        0x1db7cec6 -> :sswitch_0
        0x54f0d8d5 -> :sswitch_2
    .end sparse-switch
.end method

.method public setFileVersion(Lcom/cyjh/elfin/entity/FileVersion;)V
    .locals 4

    const-string v0, "\u06da\u06e7\u06e6\u06d7\u06df\u06e6\u06d8\u06e6\u06d6\u06e2\u06e1\u06e8\u06e7\u06d8\u06e1\u06d7\u06eb\u06da\u06e2\u06e1\u06d6\u06eb\u06dc\u06e1\u06db\u06e8\u06ec\u06da\u06e6\u06e4\u06da\u06ec\u06df\u06d8\u06e6\u06d7\u06eb"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x34c

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1f3

    const/16 v2, 0x339

    const v3, 0x11d2763f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d9\u06e1\u06db\u06d6\u06e8\u06d6\u06d7\u06d6\u06d6\u06e7\u06e4\u06e7\u06e5\u06d7\u06e6\u06d8\u06e1\u06d6\u06e5\u06d9\u06da\u06e7\u06e0\u06d6\u06e0\u06ec\u06e2\u06e1\u06d8\u06db\u06e1\u06e8\u06d8\u06e0\u06e8\u06d6\u06d8\u06e8\u06ec\u06e4\u06dc\u06e5\u06e7\u06d7\u06df\u06db\u06d6\u06d8\u06e5\u06dc\u06da\u06d6\u06dc\u06e5\u06dc\u06d8\u06dc\u06db\u06e0"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e4\u06e6\u06df\u06db\u06e8\u06e4\u06dc\u06e5\u06e8\u06d8\u06d8\u06dc\u06d8\u06d8\u06e7\u06e0\u06d9\u06e8\u06d9\u06e8\u06d8\u06d6\u06d8\u06db\u06d8\u06e0\u06e8\u06d8\u06eb\u06e8\u06dc\u06d8\u06e1\u06eb\u06e8\u06d8\u06e8\u06eb\u06e1\u06e5\u06df\u06d6\u06d8\u06e8\u06d6\u06d6\u06d8\u06e7\u06e7\u06e8\u06d7\u06d6\u06e5\u06e4\u06e5\u06e6\u06eb\u06e2\u06e5\u06e6\u06e2\u06e5"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->fileVersion:Lcom/cyjh/elfin/entity/FileVersion;

    const-string v0, "\u06e6\u06e8\u06da\u06e7\u06e0\u06e5\u06e2\u06e4\u06e0\u06e1\u06d8\u06e8\u06d9\u06d7\u06ec\u06d6\u06d8\u06e7\u06d8\u06d6\u06d6\u06d8\u06ec\u06e6\u06e1\u06d9\u06df\u06d9\u06dc\u06d6\u06e5\u06d8\u06e0\u06eb\u06e0\u06e4\u06ec\u06e7\u06e1\u06e7\u06e8\u06e7\u06e6\u06d8\u06e1\u06e0\u06d9\u06e5\u06d9\u06d6\u06d8\u06eb\u06dc\u06dc\u06d8\u06e4\u06da\u06dc"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x426dcfd5 -> :sswitch_2
        -0x2bde6d6e -> :sswitch_1
        -0x212e9008 -> :sswitch_0
        0x25d61298 -> :sswitch_3
    .end sparse-switch
.end method

.method public setId(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e1\u06eb\u06e6\u06d8\u06ec\u06d7\u06e8\u06d8\u06e6\u06eb\u06e6\u06e0\u06d7\u06df\u06e4\u06d8\u06e7\u06db\u06e0\u06e0\u06d7\u06e4\u06dc\u06d8\u06eb\u06db\u06ec\u06e5\u06dc\u06db\u06e7\u06e7\u06df"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x37d

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x35c

    const/16 v2, 0xcd

    const v3, -0x624f9f9

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d7\u06d9\u06e8\u06e4\u06e0\u06d8\u06d8\u06d8\u06e0\u06e1\u06e1\u06d8\u06e7\u06d8\u06e7\u06d6\u06d6\u06e2\u06e5\u06db\u06e0\u06d7\u06d8\u06e1\u06eb\u06d8\u06d6\u06d8\u06da\u06e0\u06d8\u06e2\u06e5\u06d8\u06e0\u06e2\u06e1\u06d8\u06d7\u06ec\u06e8\u06d8\u06e6\u06d6\u06db"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e7\u06e2\u06eb\u06e5\u06e6\u06e7\u06d9\u06e0\u06d6\u06d8\u06e8\u06e7\u06db\u06d8\u06e6\u06e8\u06d9\u06e2\u06e7\u06d6\u06e5\u06df\u06e8\u06d8\u06e4\u06d6\u06d7\u06da\u06d8\u06e1\u06df\u06da\u06dc\u06d8\u06e2\u06e5\u06dc\u06e8\u06dc\u06e1\u06d8\u06db\u06ec\u06e6"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->id:Ljava/lang/String;

    const-string v0, "\u06ec\u06d6\u06e6\u06d8\u06d8\u06e0\u06e6\u06db\u06e8\u06eb\u06df\u06e4\u06da\u06e5\u06e6\u06ec\u06ec\u06e1\u06df\u06dc\u06df\u06e5\u06e7\u06da\u06e2\u06dc\u06dc\u06d8\u06e2\u06e5\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x27caa87e -> :sswitch_3
        0x144524ee -> :sswitch_2
        0x2e9b1923 -> :sswitch_0
        0x3e014f27 -> :sswitch_1
    .end sparse-switch
.end method

.method public setInfoFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u06df\u06eb\u06e1\u06e7\u06d7\u06e5\u06e4\u06eb\u06e2\u06da\u06e6\u06e0\u06e1\u06e5\u06d8\u06d7\u06e7\u06da\u06e5\u06e5\u06e7\u06ec\u06e8\u06e5\u06d8\u06db\u06e7\u06e0\u06d8\u06e7\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2d3

    const/16 v2, 0x381

    const v3, 0x134de8a4

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06d6\u06d7\u06dc\u06e8\u06e4\u06d8\u06e8\u06e5\u06e7\u06d9\u06e4\u06d8\u06d8\u06dc\u06da\u06d8\u06d8\u06d6\u06da\u06e2\u06e1\u06e1\u06e4\u06d7\u06e6\u06d9\u06da\u06da\u06d7\u06eb\u06db\u06e4\u06e4\u06e2\u06e8\u06d6\u06e8\u06eb\u06ec\u06e5\u06d8\u06e2\u06e6\u06db\u06e6\u06ec\u06e6\u06d8\u06e6\u06e7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e2\u06da\u06e4\u06d6\u06e4\u06d6\u06e1\u06d6\u06ec\u06e1\u06e1\u06d8\u06e1\u06d9\u06e2\u06d9\u06da\u06eb\u06e2\u06d6\u06e5\u06d8\u06e2\u06e2\u06e5\u06e5\u06da\u06da\u06e1\u06d7\u06eb\u06df\u06d6\u06e0\u06e7\u06d7\u06e0\u06ec\u06e7\u06da\u06df"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->infoFile:Ljava/io/File;

    const-string v0, "\u06e5\u06df\u06d9\u06da\u06d8\u06dc\u06d8\u06e5\u06e6\u06e5\u06e2\u06e0\u06ec\u06db\u06ec\u06d6\u06eb\u06e0\u06e8\u06d8\u06e5\u06eb\u06e6\u06d8\u06d6\u06df\u06d9\u06e1\u06dc\u06dc\u06d8\u06e1\u06d8\u06e6\u06e6\u06e4\u06da\u06e6\u06e6\u06eb\u06df\u06d9\u06d6\u06db\u06db\u06da"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x65c0cd0e -> :sswitch_0
        -0x6766ca6 -> :sswitch_3
        0x23d9a01 -> :sswitch_1
        0x6e6995d6 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLcFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u06e6\u06df\u06ec\u06e8\u06d9\u06e1\u06e1\u06dc\u06ec\u06e4\u06d8\u06e7\u06d8\u06e7\u06da\u06e1\u06d8\u06d9\u06d9\u06dc\u06d8\u06dc\u06e8\u06dc\u06d8\u06e1\u06d8\u06db\u06e8\u06e2\u06e8\u06d8\u06d9\u06e0\u06e5\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xbd

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x3e9

    const/16 v2, 0x24d

    const v3, 0x196a143b

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06dc\u06e1\u06d8\u06df\u06ec\u06da\u06e7\u06e0\u06e6\u06d8\u06d6\u06da\u06e0\u06e1\u06e8\u06e8\u06d8\u06e5\u06d8\u06e0\u06e5\u06d9\u06e5\u06d8\u06ec\u06e0\u06d6\u06e0\u06d9\u06e1\u06d8\u06db\u06d8\u06dc\u06eb\u06d6\u06dc\u06df\u06df\u06e2\u06e6\u06e1\u06ec\u06e6\u06e4\u06dc\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06d7\u06e7\u06e6\u06d8\u06d6\u06e6\u06e1\u06ec\u06dc\u06e5\u06d8\u06eb\u06d9\u06d6\u06ec\u06e1\u06db\u06df\u06e1\u06dc\u06d8\u06e1\u06ec\u06d8\u06e7\u06e1\u06d8\u06d8\u06da\u06e1\u06e0\u06d9\u06db\u06dc\u06d8\u06e5\u06eb\u06e5\u06d8\u06e4\u06ec\u06e5\u06d8\u06e7\u06d8\u06e7\u06d8\u06e4\u06d6\u06e6\u06e4\u06e6\u06d8\u06d8\u06da\u06dc\u06e7\u06d8\u06eb\u06da\u06ec"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->lcFile:Ljava/io/File;

    const-string v0, "\u06e0\u06e8\u06d6\u06e5\u06df\u06df\u06e4\u06e7\u06e6\u06d8\u06e6\u06e1\u06d7\u06e7\u06e5\u06e5\u06e8\u06dc\u06d7\u06e4\u06e8\u06e1\u06ec\u06d9\u06e0\u06d7\u06e7\u06d8\u06d8\u06e6\u06d9\u06e1\u06d8\u06e2\u06e7\u06d8\u06d8\u06e2\u06d8\u06e7\u06d8\u06e1\u06e5\u06e0\u06dc\u06e6"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11cdd9c3 -> :sswitch_0
        0x3f4924ca -> :sswitch_2
        0x5791517c -> :sswitch_3
        0x7b290e2f -> :sswitch_1
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e4\u06e4\u06dc\u06d8\u06db\u06e1\u06e4\u06e1\u06e4\u06d9\u06e8\u06e7\u06e6\u06d8\u06e2\u06ec\u06e0\u06e6\u06eb\u06dc\u06d8\u06d8\u06ec\u06e1\u06e4\u06df\u06e7\u06db\u06d6\u06e6\u06d8\u06d9\u06e8\u06d8\u06ec\u06e0\u06d8\u06e7\u06d9\u06e8\u06e5\u06e0\u06d6\u06d8\u06e4\u06e4\u06da\u06e1\u06df\u06e4\u06ec\u06d8\u06d8\u06db\u06e4\u06e0\u06e6\u06e0"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x32e

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x159

    const/16 v2, 0x44

    const v3, 0x2549817f

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06df\u06dc\u06e8\u06e1\u06d6\u06d8\u06e7\u06e8\u06d7\u06d6\u06e8\u06e4\u06df\u06db\u06d6\u06d8\u06ec\u06e7\u06e6\u06d8\u06ec\u06e7\u06e5\u06e4\u06e5\u06e8\u06eb\u06e1\u06e4\u06d8\u06e7\u06d8\u06d8\u06d9\u06db\u06e5\u06d8\u06dc\u06d9\u06e5"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06d6\u06e6\u06e6\u06db\u06df\u06e0\u06dc\u06eb\u06d6\u06d8\u06d7\u06e2\u06e7\u06e6\u06ec\u06dc\u06d8\u06e4\u06da\u06d7\u06da\u06e1\u06d7\u06e0\u06df\u06dc\u06d8\u06d9\u06e5\u06e5\u06d8\u06e8\u06e1\u06da\u06e1\u06dc\u06dc\u06e4\u06e5\u06dc\u06eb\u06e6\u06e4\u06dc\u06d6\u06e8\u06d8\u06e0\u06e5\u06d7"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->name:Ljava/lang/String;

    const-string v0, "\u06e5\u06e7\u06dc\u06ec\u06e2\u06df\u06e2\u06e2\u06e6\u06db\u06eb\u06e6\u06e8\u06e6\u06df\u06e6\u06d9\u06d7\u06d9\u06d6\u06d8\u06d7\u06e0\u06e5\u06e7\u06dc\u06df\u06d8\u06d6\u06e1\u06d8\u06df\u06e4\u06e6\u06d8\u06df\u06da\u06e5\u06ec\u06e7\u06eb\u06e8\u06db\u06e5\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x758a6ef9 -> :sswitch_0
        -0x10fcc1c6 -> :sswitch_2
        0x4db568f3 -> :sswitch_3
        0x754bfcb5 -> :sswitch_1
    .end sparse-switch
.end method

.method public setPropFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u06d6\u06d8\u06e1\u06da\u06e8\u06e5\u06e0\u06d6\u06d8\u06ec\u06ec\u06d7\u06db\u06e7\u06dc\u06d8\u06e0\u06d8\u06e5\u06d8\u06dc\u06e6\u06eb\u06e8\u06ec\u06d6\u06e8\u06df\u06e8\u06d8\u06d9\u06db\u06e5\u06e1\u06e8\u06dc\u06d8\u06e4\u06e2\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x3a4

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x20e

    const/16 v2, 0x7d

    const v3, 0x36252503

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e7\u06e2\u06e6\u06d8\u06e7\u06d9\u06d7\u06e8\u06db\u06e5\u06e5\u06e6\u06d8\u06e7\u06e7\u06e6\u06d8\u06d7\u06ec\u06dc\u06d8\u06e5\u06d9\u06df\u06d7\u06e4\u06dc\u06d6\u06e8\u06e4\u06e2\u06eb\u06d6\u06da\u06e7\u06e8\u06d6\u06e8\u06d8\u06e6\u06df\u06eb\u06d7\u06d6\u06d8\u06d8\u06d6\u06e0\u06d8\u06d8\u06ec\u06e6\u06da\u06df\u06e1\u06e1\u06d8\u06eb\u06df\u06ec"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06eb\u06e2\u06df\u06eb\u06d8\u06d8\u06dc\u06df\u06df\u06da\u06d6\u06d8\u06e6\u06e4\u06e7\u06e8\u06df\u06e6\u06e4\u06ec\u06d8\u06e6\u06e5\u06d6\u06d8\u06e1\u06e6\u06d6\u06d8\u06ec\u06dc\u06d7\u06e4\u06e6\u06d8\u06d8\u06e7\u06dc\u06e6"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->propFile:Ljava/io/File;

    const-string v0, "\u06e2\u06e0\u06d8\u06eb\u06e4\u06dc\u06ec\u06e6\u06e8\u06d8\u06d7\u06e2\u06e8\u06e0\u06d8\u06eb\u06e4\u06d7\u06ec\u06df\u06d7\u06eb\u06e0\u06e5\u06d8\u06db\u06e8\u06e0\u06df\u06ec\u06da\u06e4\u06eb\u06e1\u06d8\u06d9\u06e6\u06e4\u06e8\u06e7\u06e6\u06e8\u06da\u06d7\u06d6\u06e4\u06e6\u06d9"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x10ac007c -> :sswitch_1
        0x23555fda -> :sswitch_3
        0x2c2e54f8 -> :sswitch_0
        0x49c317c6 -> :sswitch_2
    .end sparse-switch
.end method

.method public setRtdFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u06e5\u06e4\u06ec\u06e8\u06e1\u06d8\u06d9\u06e7\u06d8\u06d8\u06eb\u06eb\u06da\u06ec\u06d8\u06e1\u06ec\u06e0\u06e8\u06ec\u06e6\u06e6\u06d8\u06e5\u06d9\u06e8\u06d8\u06ec\u06e6\u06e6\u06d8\u06da\u06e0\u06e4\u06dc\u06e5\u06d8\u06d7\u06e6\u06e0\u06e0\u06e5\u06e6\u06d8\u06e8\u06d9\u06ec\u06d7\u06d8\u06db\u06dc\u06d6\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x366

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x14b

    const/16 v2, 0x131

    const v3, 0x603c10c5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e6\u06e0\u06e5\u06d8\u06e5\u06df\u06e1\u06e1\u06d8\u06d7\u06e2\u06e8\u06d8\u06e5\u06e4\u06e8\u06ec\u06e5\u06e2\u06d6\u06e0\u06e1\u06d8\u06ec\u06d8\u06dc\u06d8\u06ec\u06df\u06db\u06e6\u06d6\u06eb\u06ec\u06e2\u06d6\u06db\u06e7\u06db\u06d9\u06e2\u06df\u06db\u06d7\u06d8\u06d8\u06ec\u06eb\u06e8\u06d8\u06d7\u06d7\u06ec\u06e8\u06eb\u06e8\u06d8\u06e0\u06d9\u06e6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e0\u06e2\u06e8\u06d8\u06e0\u06d9\u06d8\u06dc\u06d9\u06e8\u06d6\u06ec\u06ec\u06e0\u06ec\u06da\u06ec\u06e2\u06da\u06e7\u06e1\u06e6\u06e1\u06e1\u06e8\u06e1\u06e8\u06e2\u06e1\u06e4"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->rtdFile:Ljava/io/File;

    const-string v0, "\u06e6\u06d9\u06e6\u06df\u06da\u06e5\u06d8\u06e6\u06e2\u06d8\u06d8\u06ec\u06df\u06e4\u06d7\u06e0\u06e1\u06e2\u06d6\u06e4\u06e1\u06db\u06d8\u06ec\u06e6\u06dc\u06d8\u06e6\u06e4\u06e8\u06d8\u06d9\u06d8\u06d7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3fa2de13 -> :sswitch_2
        -0x173bed9c -> :sswitch_0
        -0x3e5d067 -> :sswitch_1
        0x3877be5b -> :sswitch_3
    .end sparse-switch
.end method

.method public setSelId(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e0\u06e4\u06e8\u06e6\u06e4\u06e6\u06da\u06e5\u06db\u06df\u06e2\u06dc\u06d8\u06e5\u06e6\u06e1\u06da\u06ec\u06e5\u06d8\u06d6\u06e2\u06dc\u06da\u06dc\u06e4\u06e0\u06db\u06d8\u06d8\u06eb\u06e2\u06d8\u06e8\u06e1\u06d8\u06d8\u06e6\u06e5\u06d6"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x35

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x1fd

    const/16 v2, 0x101

    const v3, 0x8cc4e72

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06df\u06e2\u06e4\u06d6\u06dc\u06d8\u06e7\u06e7\u06d8\u06ec\u06d6\u06d6\u06d8\u06d7\u06e6\u06d9\u06d6\u06e0\u06ec\u06d6\u06d8\u06e6\u06e6\u06d6\u06d8\u06e7\u06d6\u06e8\u06d8\u06e6\u06dc\u06d6\u06e8\u06e4\u06e6\u06d7\u06dc\u06d9\u06df\u06eb\u06e1\u06d8\u06e0\u06e2\u06e5\u06d8\u06d9\u06db\u06da\u06e4\u06d8\u06d8\u06d8\u06d8\u06e7\u06e8\u06e1\u06db\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06ec\u06dc\u06e5\u06d8\u06e1\u06e0\u06eb\u06eb\u06db\u06e6\u06e2\u06e8\u06e7\u06dc\u06d8\u06e5\u06d8\u06d6\u06e8\u06e7\u06d9\u06e2\u06e1\u06d8\u06df\u06db\u06dc\u06d9\u06db\u06e0\u06db\u06d8\u06d8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->selId:Ljava/lang/String;

    const-string v0, "\u06dc\u06e7\u06dc\u06e5\u06dc\u06e5\u06eb\u06e2\u06e4\u06ec\u06eb\u06df\u06dc\u06df\u06dc\u06d8\u06d8\u06df\u06d9\u06e7\u06e2\u06df\u06e7\u06dc\u06e7\u06d8\u06d6\u06ec\u06e2\u06dc\u06eb\u06e1"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x60247f8a -> :sswitch_3
        -0x32708a90 -> :sswitch_2
        0xd2dba7f -> :sswitch_0
        0x71b7641e -> :sswitch_1
    .end sparse-switch
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e2\u06df\u06dc\u06d8\u06df\u06e4\u06e5\u06d8\u06d8\u06e4\u06e6\u06db\u06da\u06e1\u06d8\u06e1\u06e7\u06e8\u06e1\u06e5\u06eb\u06e2\u06e6\u06e5\u06d8\u06d9\u06e7\u06eb\u06d6\u06ec\u06e7\u06e6\u06db\u06d8\u06db\u06e5\u06db\u06e8\u06df\u06da\u06e8\u06eb\u06e4\u06e5\u06e1\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb3

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x2c0

    const/16 v2, 0x14a

    const v3, 0x44bad853

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06eb\u06e7\u06e5\u06d9\u06e4\u06dc\u06d8\u06e1\u06da\u06e8\u06d8\u06e8\u06e4\u06d6\u06e8\u06ec\u06d9\u06d6\u06dc\u06d8\u06d9\u06eb\u06e6\u06d6\u06d6\u06eb\u06d8\u06d8\u06d9\u06dc\u06d8\u06d8\u06db\u06e5\u06db\u06da\u06e6\u06e5\u06d8\u06da\u06e8\u06d9\u06ec\u06d9\u06d8\u06d8\u06d8\u06d6\u06e8\u06d9\u06d9\u06e0\u06e5\u06e1\u06da\u06ec\u06d9\u06d6"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e5\u06e1\u06e0\u06dc\u06d6\u06e8\u06d8\u06e0\u06d8\u06e7\u06d8\u06d9\u06da\u06e1\u06d6\u06eb\u06e6\u06d8\u06dc\u06e6\u06dc\u06da\u06e4\u06e8\u06d8\u06e1\u06e6\u06da\u06e5\u06e6\u06eb\u06d9\u06e0\u06d7\u06da\u06d7\u06e7\u06ec\u06e2\u06da\u06e1\u06ec\u06e6\u06d8\u06e4\u06d6\u06dc\u06e6\u06d8\u06e6\u06d8\u06e7\u06d8\u06df"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->size:Ljava/lang/String;

    const-string v0, "\u06df\u06e4\u06d6\u06d8\u06dc\u06e7\u06dc\u06e8\u06da\u06e5\u06dc\u06da\u06e2\u06d8\u06e7\u06d6\u06d8\u06ec\u06e4\u06e6\u06d8\u06d9\u06e7\u06e5\u06d8\u06df\u06dc\u06d8\u06e8\u06d6\u06d8\u06e1\u06dc\u06dc\u06ec\u06da\u06e2\u06e7\u06dc\u06e7"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d69862d -> :sswitch_3
        -0x3634f455 -> :sswitch_1
        -0x19e5a644 -> :sswitch_2
        -0x154a16f5 -> :sswitch_0
    .end sparse-switch
.end method

.method public setUiFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u06dc\u06e8\u06dc\u06eb\u06ec\u06e5\u06e6\u06ec\u06dc\u06d6\u06d6\u06d8\u06d9\u06da\u06e7\u06df\u06eb\u06e6\u06d8\u06e2\u06e6\u06e8\u06d8\u06e2\u06e5\u06e6\u06e0\u06dc\u06da\u06e6\u06d8\u06dc\u06df\u06e6\u06d8\u06df\u06e8\u06e6\u06d8\u06ec\u06da\u06e7\u06d8\u06e1\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x1f8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x36f

    const/16 v2, 0x124

    const v3, -0x731a9a69

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06df\u06d9\u06eb\u06db\u06e4\u06e0\u06db\u06e6\u06dc\u06e7\u06e5\u06eb\u06d7\u06dc\u06da\u06e7\u06eb\u06eb\u06e7\u06e7\u06e8\u06d8\u06e2\u06e6\u06db\u06e8\u06e1\u06e1\u06e5\u06d8\u06e1\u06e6\u06e6\u06e6\u06d8\u06d6\u06e5\u06dc\u06d7\u06e1\u06d9\u06e2\u06d7\u06d6\u06d8"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06eb\u06d9\u06eb\u06e4\u06e6\u06e6\u06e7\u06e4\u06e0\u06ec\u06df\u06da\u06e6\u06d6\u06db\u06df\u06dc\u06db\u06d8\u06e5\u06dc\u06d7\u06db\u06d9\u06dc\u06db\u06dc\u06dc\u06dc\u06da\u06d8\u06e8\u06d8\u06d8\u06db\u06e0\u06e6\u06e0\u06d8\u06d7\u06e5\u06ec\u06dc\u06e5\u06e1\u06d8\u06e5\u06d6\u06df\u06d9\u06e2\u06d8\u06eb\u06ec\u06dc"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->uiFile:Ljava/io/File;

    const-string v0, "\u06d8\u06d7\u06d9\u06e7\u06e5\u06e1\u06e4\u06d6\u06d9\u06e1\u06d6\u06e2\u06e6\u06dc\u06df\u06d8\u06e4\u06d6\u06d8\u06df\u06e8\u06da\u06e0\u06e8\u06e5\u06e8\u06db\u06d7\u06ec\u06d6\u06e8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x67d573a0 -> :sswitch_2
        -0x4a8660d6 -> :sswitch_3
        -0x10eaece9 -> :sswitch_0
        0x48929b40 -> :sswitch_1
    .end sparse-switch
.end method

.method public setUipFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "\u06d6\u06d7\u06ec\u06d7\u06e5\u06d8\u06e1\u06d9\u06d9\u06dc\u06da\u06e5\u06d8\u06e6\u06d9\u06e8\u06d8\u06db\u06e7\u06e6\u06d8\u06e6\u06db\u06e0\u06d6\u06ec\u06eb\u06eb\u06e8\u06d8\u06d7\u06e0\u06e8\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf8

    xor-int/2addr v1, v2

    xor-int/lit16 v1, v1, 0x32d

    const/16 v2, 0x150

    const v3, 0x17ce7eb2

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06e4\u06ec\u06d6\u06d8\u06da\u06df\u06d8\u06d8\u06e7\u06d9\u06db\u06d7\u06eb\u06d7\u06da\u06e5\u06e2\u06e5\u06e6\u06e6\u06d8\u06e8\u06d9\u06d6\u06d8\u06e8\u06dc\u06d8\u06e0\u06d9\u06db\u06e4\u06d6\u06d7\u06eb\u06da\u06d8\u06d8\u06da\u06d7"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06da\u06df\u06dc\u06d9\u06e1\u06e1\u06d8\u06df\u06e2\u06da\u06ec\u06e7\u06e8\u06d8\u06e5\u06db\u06e8\u06df\u06d8\u06e5\u06e8\u06e1\u06dc\u06d8\u06ec\u06e4\u06d7\u06eb\u06e7\u06d9\u06dc\u06e7\u06e4\u06e8\u06e6\u06e1\u06d8\u06e8\u06d9\u06e7\u06ec\u06d8\u06d8\u06ec\u06da\u06e6\u06e2\u06e1\u06e1\u06e4\u06d8\u06e4"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->uipFile:Ljava/io/File;

    const-string v0, "\u06db\u06d6\u06e6\u06ec\u06d8\u06e8\u06e6\u06da\u06dc\u06da\u06da\u06dc\u06d8\u06df\u06e8\u06e1\u06d8\u06d7\u06df\u06d8\u06d8\u06df\u06d9\u06e5\u06d8\u06e4\u06e0\u06e0\u06dc\u06e5\u06e5\u06d8\u06d7\u06da\u06d8\u06e0\u06db\u06e5\u06e5\u06e5\u06dc\u06e8\u06e4\u06d8\u06e0\u06d6\u06d9\u06d7\u06e0\u06ec\u06df\u06db\u06e8\u06d8\u06df\u06d9"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x193d49f -> :sswitch_0
        0x373ba324 -> :sswitch_3
        0x64d40708 -> :sswitch_1
        0x6c875cac -> :sswitch_2
    .end sparse-switch
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u06e0\u06e8\u06dc\u06d8\u06d8\u06e6\u06df\u06da\u06e2\u06d8\u06d7\u06ec\u06e2\u06df\u06e5\u06db\u06ec\u06dc\u06e0\u06d8\u06d9\u06e4\u06e2\u06d8\u06d8\u06d9\u06e0\u06d6\u06d8\u06e8\u06db\u06d9\u06e8\u06e6\u06d8\u06da\u06d6\u06d6\u06e4\u06d7\u06d8\u06d8\u06df\u06e7\u06e5"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x18d

    xor-int/2addr v1, v2

    xor-int/lit8 v1, v1, 0x73

    const/16 v2, 0x31e

    const v3, -0x5736813d

    xor-int/2addr v1, v2

    xor-int/2addr v1, v3

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06da\u06db\u06e7\u06d7\u06d9\u06e5\u06d8\u06e8\u06e7\u06e8\u06d8\u06dc\u06e6\u06e1\u06d8\u06e8\u06d8\u06e7\u06e2\u06e7\u06e5\u06d8\u06eb\u06eb\u06e6\u06e0\u06ec\u06e5\u06d9\u06da\u06da\u06d6\u06db\u06e0\u06d7\u06e1\u06dc\u06e2\u06ec\u06da"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u06e1\u06d6\u06eb\u06e5\u06df\u06d7\u06db\u06e1\u06e6\u06e8\u06e4\u06d9\u06e2\u06d8\u06d8\u06ec\u06ec\u06e8\u06d8\u06d6\u06ec\u06e6\u06e6\u06db\u06d7\u06e7\u06d8\u06e0\u06e8\u06e6\u06d8"

    goto :goto_0

    :sswitch_2
    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->version:Ljava/lang/String;

    const-string v0, "\u06e4\u06dc\u06d9\u06df\u06e2\u06e6\u06e1\u06dc\u06d6\u06d8\u06eb\u06d9\u06ec\u06e8\u06eb\u06e6\u06d8\u06e1\u06e6\u06d8\u06e5\u06e6\u06e0\u06db\u06e0\u06e6\u06d8\u06e7\u06df\u06e5\u06d8\u06d9\u06e8\u06e1\u06d8\u06ec\u06e1\u06dc\u06d8\u06db\u06e6\u06e7\u06e7\u06e4\u06da\u06d7\u06da\u06e1\u06e8\u06da\u06e0\u06d8\u06e2\u06e8\u06d8"

    goto :goto_0

    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x70e886ae -> :sswitch_0
        -0xa866578 -> :sswitch_2
        0x138edf87 -> :sswitch_3
        0x72eab2f4 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x27

    const/4 v1, 0x0

    const-string v0, "\u06ec\u06e7\u06da\u06e1\u06e2\u06e8\u06d6\u06da\u06d6\u06da\u06ec\u06ec\u06df\u06d9\u06d8\u06dc\u06d7\u06e0\u06da\u06e1\u06d9\u06d7\u06e1\u06eb\u06da\u06df\u06d6\u06d8\u06e8\u06d7\u06e5\u06dc\u06dc\u06e7\u06d8\u06e2\u06df\u06dc\u06d8\u06ec\u06e7\u06e8\u06e6\u06dc\u06eb\u06e7\u06e7\u06e4\u06d8\u06d9\u06dc\u06d8"

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xed

    xor-int/2addr v2, v3

    xor-int/lit16 v2, v2, 0x134

    const/16 v3, 0x313

    const v4, -0x237e4405

    xor-int/2addr v2, v3

    xor-int/2addr v2, v4

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u06ec\u06d8\u06d8\u06d8\u06e2\u06db\u06e0\u06e1\u06e0\u06d7\u06dc\u06e2\u06d9\u06db\u06ec\u06e7\u06e8\u06e7\u06e6\u06e2\u06e8\u06e0\u06e7\u06d9\u06eb\u06e6\u06d7\u06e2\u06dc\u06e2\u06e7\u06e5\u06e4\u06e6\u06d9\u06df\u06eb\u06e1\u06e7\u06e5\u06e0\u06d9\u06e2\u06d7\u06e2\u06e5\u06d6\u06e7\u06e5\u06eb\u06da\u06eb\u06e6\u06e7"

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u06db\u06df\u06e8\u06d8\u06eb\u06d8\u06e5\u06eb\u06e8\u06e8\u06d8\u06e6\u06eb\u06e0\u06d7\u06d9\u06e5\u06d8\u06d7\u06e4\u06eb\u06e5\u06e0\u06e8\u06d8\u06e5\u06df\u06d6\u06e2\u06df\u06e0\u06e4\u06e1"

    goto :goto_0

    :sswitch_2
    const-string v0, "Script{changeFileList="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06e8\u06e8\u06d8\u06df\u06e2\u06e7\u06e0\u06e5\u06db\u06eb\u06d6\u06d9\u06d6\u06e4\u06eb\u06d6\u06e1\u06d8\u06e6\u06e4\u06d7\u06da\u06dc\u06dc\u06eb\u06e4\u06e1\u06db\u06e6\u06d8\u06ec\u06e4\u06da\u06e2\u06db\u06d8\u06e8\u06ec\u06db\u06e4\u06e1\u06e2\u06d9\u06ec\u06e6\u06d8\u06e7\u06d6\u06d8\u06d8\u06e8\u06e2\u06ec\u06eb\u06df\u06e4"

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/cyjh/elfin/entity/Script;->changeFileList:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\u06eb\u06e8\u06df\u06e7\u06e0\u06d8\u06dc\u06eb\u06dc\u06d8\u06e4\u06e6\u06e6\u06d8\u06e4\u06d6\u06df\u06da\u06e6\u06dc\u06d8\u06e0\u06dc\u06e6\u06e7\u06d7\u06e5\u06d8\u06e0\u06e8\u06db\u06d7\u06d7\u06e8\u06d8\u06d8\u06df\u06d7\u06e1\u06e1\u06d8"

    goto :goto_0

    :sswitch_4
    const-string v0, ", name=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06eb\u06da\u06e1\u06d8\u06eb\u06ec\u06e8\u06d8\u06e1\u06d6\u06dc\u06e2\u06dc\u06e0\u06df\u06df\u06e1\u06e6\u06d8\u06da\u06e5\u06d8\u06e7\u06e7\u06e5\u06e5\u06e1\u06d8\u06d8\u06d9\u06d9\u06d6"

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06d8\u06e7\u06d8\u06dc\u06da\u06d6\u06d8\u06eb\u06d6\u06d8\u06e6\u06d9\u06e0\u06e8\u06d8\u06e6\u06eb\u06d8\u06ec\u06e4\u06e2\u06ec\u06dc\u06d6\u06d6\u06d8\u06eb\u06da\u06e5\u06d7\u06e2\u06e7\u06d6\u06db\u06e5\u06d8\u06eb\u06e8\u06e5\u06d8"

    goto :goto_0

    :sswitch_6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06d6\u06e1\u06e7\u06d8\u06db\u06da\u06dc\u06e5\u06e1\u06dc\u06eb\u06d9\u06e8\u06da\u06ec\u06ec\u06e7\u06e5\u06e4\u06da\u06db\u06e8\u06dc\u06e5\u06e2\u06ec\u06e6\u06ec\u06dc\u06d9\u06e7\u06d7\u06d8\u06d8\u06e1\u06df\u06e8\u06eb\u06da\u06d6\u06db\u06e5\u06e8\u06d8"

    goto :goto_0

    :sswitch_7
    const-string v0, ", id=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06eb\u06e1\u06e8\u06d8\u06e2\u06eb\u06da\u06eb\u06da\u06eb\u06d6\u06df\u06e5\u06e5\u06e5\u06e2\u06e6\u06d8\u06e1\u06e4\u06dc\u06d8\u06eb\u06e7\u06d6\u06df\u06e8\u06d8\u06d8\u06da\u06da\u06e0"

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06ec\u06e7\u06db\u06db\u06d8\u06e7\u06d8\u06d6\u06e6\u06e1\u06d8\u06d8\u06e6\u06e1\u06eb\u06d9\u06d8\u06d8\u06eb\u06e0\u06e2\u06e8\u06e2\u06e8\u06d9\u06eb\u06df\u06d8\u06eb\u06e7\u06e4\u06eb"

    goto :goto_0

    :sswitch_9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06e2\u06d6\u06ec\u06e4\u06d6\u06d6\u06d8\u06e8\u06db\u06d8\u06d8\u06e4\u06e6\u06dc\u06e8\u06d8\u06dc\u06d8\u06e1\u06e4\u06e4\u06d9\u06e2\u06e7\u06e4\u06db\u06d8\u06db\u06da\u06e5\u06df\u06e1\u06e5\u06d8\u06e1\u06eb\u06d8\u06e6\u06df\u06e5\u06d8\u06e8\u06e5\u06e8\u06d8\u06d7\u06da\u06e8\u06d8"

    goto :goto_0

    :sswitch_a
    const-string v0, ", description=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06e2\u06e8\u06d8\u06e6\u06e6\u06e8\u06d8\u06dc\u06e8\u06d6\u06e6\u06df\u06e8\u06db\u06db\u06df\u06e6\u06d7\u06dc\u06e4\u06e7\u06d8\u06d8\u06d8\u06d9\u06d7\u06e4\u06d6\u06da\u06d7\u06e7\u06e8"

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06eb\u06dc\u06e6\u06d8\u06d7\u06db\u06e5\u06d8\u06da\u06e0\u06db\u06dc\u06e8\u06e4\u06db\u06e1\u06dc\u06d8\u06da\u06e2\u06e5\u06e0\u06db\u06d8\u06d6\u06d8\u06e7\u06e8\u06e4\u06d6\u06d7\u06d8\u06d6\u06e8\u06e6\u06d8\u06d7\u06e6\u06e5\u06db\u06db\u06d7\u06e1\u06e7\u06e8\u06e0\u06eb\u06e4\u06e0\u06e7"

    goto :goto_0

    :sswitch_c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06eb\u06ec\u06e5\u06e5\u06d8\u06d7\u06da\u06e7\u06eb\u06dc\u06e4\u06d6\u06d8\u06e0\u06e0\u06e1\u06e6\u06e8\u06d8\u06d8\u06da\u06d7\u06e0\u06e7\u06e2\u06da\u06e0\u06e8\u06e4\u06d6\u06d8\u06dc"

    goto :goto_0

    :sswitch_d
    const-string v0, ", size=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e8\u06d6\u06d8\u06d8\u06e1\u06d8\u06e2\u06dc\u06e7\u06d6\u06d8\u06df\u06db\u06dc\u06d8\u06d9\u06e6\u06e0\u06e0\u06e6\u06d7\u06e6\u06e7\u06ec\u06e5\u06e8\u06d8\u06d8\u06e1\u06ec\u06e0\u06d9\u06e4\u06d9\u06ec\u06e1\u06d8\u06e2\u06d9\u06d6\u06d8\u06d7\u06d6\u06d9\u06ec\u06e5\u06d8\u06d8\u06d6\u06d6\u06d8\u06d8\u06d9\u06e8\u06d8\u06d8"

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->size:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06ec\u06e6\u06d6\u06da\u06e6\u06db\u06e0\u06d6\u06e1\u06d8\u06ec\u06e4\u06e8\u06e2\u06db\u06d7\u06e6\u06e1\u06d7\u06d7\u06d6\u06e0\u06e7\u06e8\u06d8\u06e8\u06d6\u06d9\u06d7\u06e1\u06e6\u06d8\u06e7\u06e4\u06df\u06d9\u06e0\u06d8\u06d8"

    goto :goto_0

    :sswitch_f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06df\u06e5\u06dc\u06d8\u06ec\u06d9\u06e8\u06d8\u06db\u06e4\u06e5\u06d8\u06da\u06da\u06d9\u06d6\u06d7\u06d6\u06e8\u06e4\u06e6\u06ec\u06df\u06e8\u06d7\u06dc\u06e4\u06e0\u06d9\u06db\u06eb\u06ec\u06e2\u06db\u06dc\u06e7\u06d8\u06eb\u06d9\u06e2\u06eb\u06e0\u06d8\u06e1\u06e8\u06e7\u06d8"

    goto/16 :goto_0

    :sswitch_10
    const-string v0, ", appId=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06eb\u06e7\u06e8\u06d8\u06d6\u06e1\u06d6\u06eb\u06ec\u06e1\u06db\u06eb\u06e2\u06db\u06dc\u06d8\u06df\u06e1\u06e0\u06e7\u06da\u06dc\u06d8\u06dc\u06d6\u06e6\u06da\u06e6\u06db\u06e4\u06d9\u06ec\u06e0\u06e6\u06e7\u06d7\u06d8\u06d9\u06db\u06d8\u06d8\u06e8\u06df\u06dc\u06eb\u06ec\u06d8\u06d8\u06d6\u06d9\u06d8"

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->appId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06df\u06ec\u06d9\u06eb\u06eb\u06e5\u06d8\u06e8\u06e1\u06e6\u06e6\u06e4\u06e5\u06d8\u06e2\u06e1\u06e8\u06da\u06d6\u06eb\u06e0\u06ec\u06e8\u06d8\u06d7\u06d8\u06d9\u06d7\u06da\u06e5\u06d8\u06e6\u06ec\u06df\u06e5\u06e0\u06da\u06e2\u06da\u06e4\u06dc\u06e7\u06eb\u06d7\u06e1\u06d8\u06da\u06e0\u06db\u06e1\u06dc\u06d8"

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06d7\u06d6\u06e2\u06d8\u06e1\u06e7\u06d9\u06e2\u06db\u06eb\u06e0\u06e1\u06e1\u06df\u06d6\u06d8\u06e4\u06e4\u06d6\u06d8\u06e4\u06e2\u06d6\u06e1\u06d9\u06e6\u06d8\u06eb\u06e8\u06e5\u06d8\u06ec\u06eb\u06e5\u06d8"

    goto/16 :goto_0

    :sswitch_13
    const-string v0, ", version=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06df\u06eb\u06d8\u06d8\u06ec\u06eb\u06da\u06e5\u06d6\u06eb\u06e5\u06dc\u06e1\u06d8\u06db\u06e6\u06d8\u06e7\u06e5\u06e7\u06d8\u06d8\u06e8\u06dc\u06d7\u06db\u06db\u06e8\u06dc\u06e2\u06ec\u06dc\u06e4\u06ec\u06e6\u06e7\u06e6\u06e1\u06d6\u06d8\u06db\u06e6\u06da\u06e4\u06e5\u06e0"

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->version:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06e2\u06ec\u06ec\u06e6\u06d6\u06ec\u06e4\u06e5\u06e6\u06e8\u06d8\u06d6\u06e7\u06ec\u06e4\u06d7\u06e5\u06d8\u06db\u06d7\u06e4\u06e7\u06d6\u06d8\u06e5\u06e8\u06e2\u06e5\u06e2\u06d7\u06e2\u06e2\u06e4\u06d6\u06da\u06dc\u06d8\u06e2\u06eb\u06d8\u06d8\u06d6\u06d9\u06e5\u06e5\u06da\u06d6\u06e4\u06dc\u06e1\u06e8\u06d7\u06e6\u06e8\u06db\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06db\u06e2\u06df\u06e5\u06eb\u06d7\u06da\u06e5\u06e8\u06d8\u06e2\u06da\u06df\u06e7\u06e8\u06e8\u06e4\u06e6\u06e6\u06e2\u06e1\u06e5\u06d8\u06e5\u06e5\u06e4\u06ec\u06db\u06e4\u06e0\u06e6\u06d8\u06d8"

    goto/16 :goto_0

    :sswitch_16
    const-string v0, ", selId=\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06d7\u06ec\u06db\u06dc\u06e8\u06d8\u06d6\u06db\u06df\u06df\u06d9\u06dc\u06d8\u06d9\u06e5\u06e1\u06d8\u06e6\u06db\u06e1\u06d9\u06ec\u06da\u06ec\u06da\u06d9\u06e6\u06e8\u06d8\u06e8\u06eb\u06e1\u06e2\u06df\u06e2\u06d9\u06d6"

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->selId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d6\u06d7\u06e4\u06dc\u06dc\u06e2\u06db\u06e8\u06e1\u06d8\u06e0\u06e4\u06e1\u06d8\u06e8\u06e8\u06e5\u06d8\u06da\u06eb\u06e2\u06da\u06ec\u06e1\u06d8\u06e1\u06df\u06e1\u06d8\u06da\u06d6\u06e1\u06d9\u06df\u06d6\u06d8\u06e8\u06e6\u06e1\u06d8\u06e1\u06eb\u06e1\u06df\u06df\u06d8\u06d8\u06e5\u06d8\u06d8\u06dc\u06e4\u06e7\u06e0\u06e5\u06e6"

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06e4\u06e6\u06d8\u06df\u06e6\u06df\u06d7\u06d7\u06df\u06e4\u06e6\u06e5\u06d8\u06e4\u06d7\u06dc\u06dc\u06d7\u06e8\u06d8\u06ec\u06e1\u06e4\u06d8\u06e4\u06d6\u06e7\u06dc\u06e0\u06e1\u06e6\u06d8\u06e2\u06e8\u06e1\u06d9\u06e1\u06e1\u06df\u06df\u06d6\u06e4\u06d9"

    goto/16 :goto_0

    :sswitch_19
    const-string v0, ", lcFile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06e1\u06d9\u06e6\u06e6\u06e1\u06df\u06d9\u06e5\u06e0\u06dc\u06e4\u06e1\u06d7\u06da\u06e2\u06e8\u06e0\u06eb\u06e4\u06e5\u06db\u06e7\u06e0\u06e7\u06db\u06ec\u06db\u06d8\u06e7\u06d9\u06e4\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->lcFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06e2\u06d6\u06da\u06df\u06e8\u06e1\u06eb\u06d6\u06d8\u06db\u06e5\u06d8\u06d8\u06e4\u06d9\u06e6\u06d8\u06dc\u06dc\u06da\u06d6\u06d9\u06e8\u06df\u06e2\u06e7\u06d9\u06e6\u06db\u06d8\u06ec\u06d8\u06d8\u06df\u06e1\u06e6\u06ec\u06d7"

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, ", propFile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e6\u06e0\u06dc\u06e0\u06e4\u06eb\u06e6\u06e1\u06d8\u06e7\u06dc\u06d6\u06e6\u06e1\u06d8\u06d8\u06d8\u06d8\u06df\u06df\u06df\u06e1\u06db\u06da\u06db\u06eb\u06d6\u06d8\u06da\u06e6\u06e8\u06d8\u06e2\u06d6\u06e5\u06e8\u06e2\u06e5\u06d8\u06e0\u06e1\u06dc\u06d6\u06e0\u06e5\u06d8\u06e7\u06e1\u06d9\u06da\u06e2\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_1c
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->propFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d7\u06dc\u06d6\u06d8\u06e1\u06e5\u06da\u06ec\u06da\u06e6\u06da\u06d6\u06e1\u06d8\u06db\u06dc\u06e8\u06e0\u06ec\u06da\u06eb\u06e8\u06df\u06df\u06d9\u06e1\u06e0\u06eb\u06e5\u06d9\u06e1"

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, ", atcFile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06e8\u06e7\u06d8\u06df\u06d8\u06e5\u06dc\u06e8\u06e7\u06db\u06e4\u06d9\u06dc\u06e4\u06eb\u06e2\u06e8\u06dc\u06e4\u06ec\u06e5\u06d8\u06da\u06e4\u06e6\u06d8\u06e7\u06d8\u06dc\u06dc\u06ec\u06d9\u06ec\u06db\u06e1\u06e5\u06d6\u06e7\u06d8\u06dc\u06db\u06e6\u06d8\u06e0\u06d6\u06d8\u06db\u06e8\u06e4\u06d6\u06ec\u06e6"

    goto/16 :goto_0

    :sswitch_1e
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->atcFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06e1\u06e2\u06e2\u06d7\u06d6\u06d8\u06eb\u06e7\u06e8\u06d8\u06ec\u06e5\u06e6\u06d8\u06e1\u06d8\u06da\u06e8\u06e1\u06df\u06db\u06eb\u06d6\u06e1\u06e7\u06e0\u06e0\u06d9\u06dc\u06d7\u06e4\u06dc\u06d8\u06d6\u06e1\u06e1\u06dc\u06e5\u06e4"

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, ", uiFile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06ec\u06e0\u06e1\u06db\u06d7\u06e6\u06d9\u06e8\u06db\u06e4\u06e7\u06d7\u06db\u06e6\u06db\u06e4\u06d8\u06d8\u06d7\u06e7\u06db\u06db\u06e7\u06dc\u06d8\u06e5\u06e8\u06d8\u06e1\u06e0\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_20
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->uiFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06d8\u06e6\u06d8\u06e8\u06e7\u06da\u06d8\u06e5\u06e5\u06d6\u06d9\u06dc\u06d8\u06db\u06d8\u06e5\u06db\u06dc\u06d8\u06d8\u06df\u06db\u06da\u06df\u06dc\u06d8\u06e5\u06db\u06e8\u06d8\u06d6\u06e1\u06e4\u06e4\u06d9\u06e0\u06e1\u06e1\u06e6\u06d7\u06e7\u06e1\u06d8\u06e1\u06db\u06e1\u06d8\u06e2\u06e7\u06ec"

    goto/16 :goto_0

    :sswitch_21
    const-string v0, ", uipFile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e0\u06e8\u06dc\u06e6\u06dc\u06d8\u06d8\u06df\u06eb\u06e1\u06d8\u06dc\u06ec\u06da\u06e6\u06db\u06e8\u06d8\u06d8\u06e7\u06ec\u06d6\u06e8\u06dc\u06d7\u06df\u06eb\u06e4\u06dc\u06e1\u06e7\u06d7\u06d8\u06df\u06e4\u06e2\u06df\u06e5\u06eb"

    goto/16 :goto_0

    :sswitch_22
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->uipFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06ec\u06e5\u06dc\u06d8\u06d8\u06df\u06e2\u06e0\u06df\u06e6\u06e2\u06e1\u06e7\u06eb\u06e1\u06e8\u06d8\u06da\u06e2\u06e5\u06da\u06e7\u06e6\u06d8\u06d9\u06e2\u06e6\u06ec\u06e6\u06e5\u06d8\u06e0\u06d7\u06eb\u06db\u06e0\u06d8\u06e5\u06db\u06e6\u06d8\u06e2\u06e6\u06d8\u06d6\u06e7\u06e2"

    goto/16 :goto_0

    :sswitch_23
    const-string v0, ", rtdFile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e7\u06e0\u06e6\u06d8\u06e1\u06d8\u06dc\u06df\u06e2\u06e5\u06da\u06e7\u06d8\u06d6\u06e7\u06df\u06e7\u06da\u06e7\u06df\u06d8\u06dc\u06d8\u06e4\u06e2\u06e4\u06df\u06e8\u06d8\u06eb\u06eb\u06e1\u06d8"

    goto/16 :goto_0

    :sswitch_24
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->rtdFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06d9\u06d7\u06dc\u06e6\u06eb\u06d8\u06d8\u06df\u06e0\u06e5\u06df\u06eb\u06e1\u06d8\u06e5\u06e4\u06da\u06e7\u06e0\u06e8\u06ec\u06e7\u06d9\u06e5\u06d9\u06e8\u06da\u06da\u06e1\u06d8\u06d7\u06dc\u06e1\u06e1\u06d9\u06dc\u06d8\u06e0\u06d6\u06ec\u06e2\u06e0\u06ec\u06da\u06e0\u06da\u06e8\u06eb\u06dc\u06e6\u06d8\u06e1\u06eb\u06d9\u06e5\u06db\u06e6\u06d8"

    goto/16 :goto_0

    :sswitch_25
    const-string v0, ", cfgFile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e5\u06dc\u06eb\u06d6\u06e2\u06df\u06ec\u06e4\u06eb\u06d6\u06dc\u06e1\u06ec\u06e2\u06d6\u06d8\u06e7\u06e8\u06e5\u06d8\u06e5\u06ec\u06dc\u06d8\u06e1\u06da\u06e1\u06d8\u06e4\u06ec\u06df\u06e4\u06e0\u06df\u06e7\u06e8\u06e7\u06d8\u06db\u06db\u06e0"

    goto/16 :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->cfgFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e7\u06e0\u06e1\u06d8\u06e7\u06e7\u06d7\u06e2\u06e0\u06d7\u06eb\u06e8\u06d8\u06d8\u06e2\u06e7\u06e6\u06ec\u06d6\u06e0\u06e8\u06e1\u06e7\u06d6\u06d8\u06e8\u06d8\u06e8\u06d7\u06d7\u06db\u06eb\u06d6\u06d9\u06e0\u06d7\u06e6\u06d6\u06d8\u06df\u06e6\u06db\u06db\u06e4\u06db"

    goto/16 :goto_0

    :sswitch_27
    const-string v0, ", infoFile="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06dc\u06e1\u06d8\u06df\u06ec\u06d8\u06e2\u06d7\u06dc\u06d9\u06d6\u06d8\u06e5\u06dc\u06e7\u06db\u06ec\u06e8\u06e6\u06dc\u06e7\u06d8\u06d8\u06d6\u06e8\u06df\u06dc\u06e0\u06eb\u06db\u06e8\u06e0\u06e7\u06e2\u06d9\u06e7\u06e0\u06e7\u06df\u06e6\u06d8\u06e1\u06e1\u06e6\u06d8\u06eb\u06df\u06dc\u06e8\u06e0\u06e2\u06e6\u06d9\u06e4\u06d9\u06d6\u06d8"

    goto/16 :goto_0

    :sswitch_28
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->infoFile:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e7\u06db\u06d6\u06d8\u06e7\u06d7\u06d8\u06d8\u06e1\u06e0\u06e5\u06d8\u06db\u06d9\u06d6\u06e8\u06df\u06d8\u06d8\u06e7\u06eb\u06e7\u06db\u06d9\u06eb\u06db\u06d6\u06e0\u06e8\u06d8\u06e7\u06d8\u06df\u06d6\u06df\u06e4\u06df\u06d6\u06e6\u06eb\u06eb\u06d6\u06d7\u06e1\u06e2\u06e4\u06d8\u06d8\u06d6\u06e1\u06d7\u06db\u06e4\u06e2\u06e6\u06e5\u06e6\u06d8\u06e7\u06e5\u06dc"

    goto/16 :goto_0

    :sswitch_29
    const-string v0, ", fileVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06ec\u06dc\u06e5\u06ec\u06e6\u06d8\u06da\u06e2\u06eb\u06d9\u06e2\u06e2\u06e5\u06e4\u06df\u06e8\u06d7\u06df\u06e1\u06e6\u06eb\u06e4\u06e5\u06d8\u06d8\u06e0\u06d9\u06d8\u06d8\u06e5\u06ec\u06d6\u06d8\u06db\u06db\u06df\u06e0\u06eb\u06da\u06e2\u06e7\u06e1\u06d8\u06eb\u06e6\u06d9"

    goto/16 :goto_0

    :sswitch_2a
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->fileVersion:Lcom/cyjh/elfin/entity/FileVersion;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e6\u06ec\u06e1\u06d8\u06e7\u06e1\u06e7\u06d8\u06eb\u06db\u06e6\u06e8\u06dc\u06db\u06e8\u06e4\u06e2\u06e2\u06e7\u06dc\u06d6\u06e0\u06dc\u06e6\u06e1\u06e5\u06dc\u06e2\u06e5\u06ec\u06e6\u06e6\u06e7\u06e1\u06e4\u06ec\u06d6\u06df\u06df\u06e7\u06ec\u06d7\u06e1"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, ", bestResolution="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u06dc\u06d7\u06dc\u06e2\u06e0\u06dc\u06e1\u06db\u06d9\u06e4\u06e8\u06d6\u06d8\u06e5\u06e4\u06d6\u06d8\u06e7\u06ec\u06da\u06da\u06e4\u06e2\u06eb\u06e5\u06e1\u06d8\u06eb\u06e4\u06e8\u06da\u06e8\u06e5\u06d8\u06e5\u06d9\u06da\u06e2\u06db\u06e1"

    goto/16 :goto_0

    :sswitch_2c
    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->bestResolution:Lcom/cyjh/elfin/entity/BestResolution;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u06e1\u06eb\u06e1\u06d8\u06e1\u06e2\u06e8\u06d8\u06e5\u06da\u06e7\u06da\u06d7\u06e6\u06d8\u06d6\u06da\u06dc\u06da\u06e5\u06d8\u06ec\u06d6\u06e5\u06d8\u06e0\u06dc\u06dc\u06d7\u06e7\u06e7\u06e2\u06df"

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\u06db\u06eb\u06e8\u06e4\u06dc\u06d8\u06d8\u06df\u06e2\u06d8\u06d8\u06da\u06ec\u06db\u06e1\u06d6\u06d8\u06e1\u06e2\u06eb\u06d7\u06d8\u06e5\u06e2\u06e7\u06d9\u06e6\u06d9\u06e1\u06ec\u06eb\u06d6\u06d8\u06d7\u06e7\u06d8\u06d8\u06e1\u06e2\u06e6\u06d8\u06d8\u06e4\u06e5\u06d8\u06d9\u06eb\u06e6"

    goto/16 :goto_0

    :sswitch_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7a6911c4 -> :sswitch_e
        -0x7567f48c -> :sswitch_1
        -0x67ef7add -> :sswitch_1f
        -0x5ff65ab6 -> :sswitch_22
        -0x5be8cf5b -> :sswitch_18
        -0x5946ae5a -> :sswitch_17
        -0x575a5d29 -> :sswitch_14
        -0x486dab2a -> :sswitch_1e
        -0x47b247b6 -> :sswitch_9
        -0x478d231c -> :sswitch_2c
        -0x3cbbf66c -> :sswitch_8
        -0x358dc254 -> :sswitch_15
        -0x2b0e653a -> :sswitch_4
        -0x1f1fc857 -> :sswitch_c
        -0x13c18809 -> :sswitch_0
        -0xc47d003 -> :sswitch_29
        -0xa41c80c -> :sswitch_20
        0x46069e1 -> :sswitch_27
        0x179d6c4c -> :sswitch_25
        0x1c994517 -> :sswitch_11
        0x238d13ce -> :sswitch_6
        0x2395547c -> :sswitch_13
        0x287250ca -> :sswitch_1b
        0x31cbd4df -> :sswitch_2
        0x38322c53 -> :sswitch_21
        0x389b9414 -> :sswitch_5
        0x39ab57dd -> :sswitch_1c
        0x3b6e2957 -> :sswitch_f
        0x3eb27bc4 -> :sswitch_2d
        0x3f4b05a9 -> :sswitch_3
        0x43994d3e -> :sswitch_12
        0x4cd1d9cd -> :sswitch_26
        0x4df6fa0e -> :sswitch_23
        0x5aa0660c -> :sswitch_7
        0x6c49ea23 -> :sswitch_1a
        0x6c6f66a9 -> :sswitch_2a
        0x6ed00115 -> :sswitch_28
        0x708d5cad -> :sswitch_a
        0x70c73e64 -> :sswitch_d
        0x710d5485 -> :sswitch_2b
        0x7156918b -> :sswitch_1d
        0x740db901 -> :sswitch_2e
        0x767b02a8 -> :sswitch_16
        0x77b72c79 -> :sswitch_19
        0x77d4dbcf -> :sswitch_24
        0x7abcc6a4 -> :sswitch_10
        0x7d016d18 -> :sswitch_b
    .end sparse-switch
.end method
