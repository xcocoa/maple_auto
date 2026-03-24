.class public Lz2/z8;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO:Ljava/lang/String; = "ScriptVersion"

.field private static final OooO00o:Ljava/lang/String; = "BestResolution"

.field private static final OooO0O0:Ljava/lang/String; = "X"

.field private static final OooO0OO:Ljava/lang/String; = "Y"

.field private static final OooO0Oo:Ljava/lang/String; = "ChangeFileList"

.field private static final OooO0o:Ljava/lang/String; = "FileVersion"

.field private static final OooO0o0:Ljava/lang/String; = "Description"

.field private static final OooO0oO:Ljava/lang/String; = "Name"

.field private static final OooO0oo:Ljava/lang/String; = "id"

.field private static final OooOO0:Ljava/lang/String; = "AppID"

.field private static final OooOO0O:Ljava/lang/String; = "Version"

.field private static final OooOO0o:Ljava/lang/String; = "SelID"

.field private static final OooOOO:Ljava/lang/String; = ".atc"

.field private static final OooOOO0:Ljava/lang/String; = ".mq"

.field private static final OooOOOO:Ljava/lang/String; = ".prop"

.field private static final OooOOOo:Ljava/lang/String; = ".rtd"

.field private static final OooOOo0:Ljava/lang/String; = ".ui"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static OooO00o(Landroid/util/JsonReader;)Lcom/cyjh/elfin/entity/BestResolution;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/entity/BestResolution;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/BestResolution;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/BestResolution;->setX(I)V

    goto :goto_0

    :cond_0
    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/BestResolution;->setY(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method private static OooO0O0(Landroid/util/JsonReader;)Lcom/cyjh/elfin/entity/FileVersion;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/cyjh/elfin/entity/FileVersion;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FileVersion;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".atc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setAtc(I)V

    goto :goto_0

    :cond_0
    const-string v2, ".mq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setMq(I)V

    goto :goto_0

    :cond_1
    const-string v2, ".prop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setProp(I)V

    goto :goto_0

    :cond_2
    const-string v2, ".ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setUI(I)V

    goto :goto_0

    :cond_3
    const-string v2, ".rtd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/FileVersion;->setRtd(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    return-object v0
.end method

.method public static OooO0OO(Ljava/io/InputStream;)Lcom/cyjh/elfin/entity/Script;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "GBK"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    new-instance p0, Lcom/cyjh/elfin/entity/Script;

    invoke-direct {p0}, Lcom/cyjh/elfin/entity/Script;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "BestResolution"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lz2/z8;->OooO00o(Landroid/util/JsonReader;)Lcom/cyjh/elfin/entity/BestResolution;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setBestResolution(Lcom/cyjh/elfin/entity/BestResolution;)V

    goto :goto_0

    :cond_2
    const-string v2, "ChangeFileList"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setChangeFileList(I)V

    goto :goto_0

    :cond_3
    const-string v2, "Description"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v2, "FileVersion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lz2/z8;->OooO0O0(Landroid/util/JsonReader;)Lcom/cyjh/elfin/entity/FileVersion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setFileVersion(Lcom/cyjh/elfin/entity/FileVersion;)V

    goto :goto_0

    :cond_5
    const-string v2, "Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setId(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v2, "SelID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setSelId(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "Version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cyjh/elfin/entity/Script;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-object p0
.end method

.method public static OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/cyjh/elfin/entity/ScriptInfo;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/ScriptInfo;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance p1, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "GBK"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ScriptVersion"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cyjh/elfin/entity/ScriptInfo;->setScriptVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptInfo;->getScriptVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o0(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/cyjh/elfin/entity/ScriptInfo;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/ScriptInfo;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "GBK"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScriptVersion"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/entity/ScriptInfo;->setScriptVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v0}, Lcom/cyjh/elfin/entity/ScriptInfo;->getScriptVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
