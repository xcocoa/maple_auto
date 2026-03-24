.class public final enum Lcom/cyjh/common/util/WebInjectFileHelper;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/common/util/WebInjectFileHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/common/util/WebInjectFileHelper;

.field public static final enum INSTANCE:Lcom/cyjh/common/util/WebInjectFileHelper;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cyjh/common/util/WebInjectFileHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cyjh/common/util/WebInjectFileHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyjh/common/util/WebInjectFileHelper;->INSTANCE:Lcom/cyjh/common/util/WebInjectFileHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/cyjh/common/util/WebInjectFileHelper;

    aput-object v0, v1, v2

    sput-object v1, Lcom/cyjh/common/util/WebInjectFileHelper;->$VALUES:[Lcom/cyjh/common/util/WebInjectFileHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/common/util/WebInjectFileHelper;
    .locals 1

    const-class v0, Lcom/cyjh/common/util/WebInjectFileHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/common/util/WebInjectFileHelper;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/common/util/WebInjectFileHelper;
    .locals 1

    sget-object v0, Lcom/cyjh/common/util/WebInjectFileHelper;->$VALUES:[Lcom/cyjh/common/util/WebInjectFileHelper;

    invoke-virtual {v0}, [Lcom/cyjh/common/util/WebInjectFileHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/common/util/WebInjectFileHelper;

    return-object v0
.end method


# virtual methods
.method public copyWebInjectFile(Landroid/content/Context;)V
    .locals 19

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    new-array v1, v1, [B

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    const/16 v0, 0x12

    aget-byte v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lz2/y4;->OooO0O0()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xygtest"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "inject/config.txt"

    const-string v6, "test.apk"

    const-string v7, "inject/test.apk"

    const-string v8, "data/local/tmp/c"

    const-string v9, "data/local/tmp/a"

    const-string v10, "mkdir -p /sdcard/com.cyjh.mrpa/script/"

    const-string v11, "mkdir -p /data/local/tmp/"

    const-string v12, "com.cyjh.mrpa/script/.config"

    const-string v13, "chmod 777 /data/local/tmp/*"

    const-string v14, "/sdcard/com.cyjh.mrpa/script/"

    const-string v15, "cp /sdcard/data/local/tmp/* /data/local/tmp/"

    const-string v2, "/sdcard/com.cyjh.mrpa/script/.config"

    const-string v3, "mkdir -p /sdcard/data/local/tmp/"

    move-object/from16 v16, v4

    const-string v4, "result="

    if-eqz v0, :cond_7

    const/16 v0, 0x64

    move-object/from16 v17, v6

    const-string v6, "getprop phone.id"

    move-object/from16 v18, v7

    const/4 v7, 0x1

    invoke-static {v6, v7, v0}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    move-result-object v0

    iget-object v0, v0, Lz2/y4$OooO00o;->OooO0O0:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v3, v7, v1}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lz2/y4$OooO00o;->OooO00o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v0

    const-string v1, "injectDDY/test.apk"

    const-string v3, "data/local/tmp/test.apk"

    invoke-virtual {v0, v1, v3}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v0

    const-string v1, "injectDDY/ddyinject.apk"

    const-string v3, "data/local/tmp/ddyinject.apk"

    invoke-virtual {v0, v1, v3}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v0

    const-string v1, "injectDDY/config.txt"

    invoke-virtual {v0, v1, v12}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/ddyinject.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/tmp/test.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lz2/j4;->OooOOO0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/data/local/tmp/ddyinject.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lz2/j4;->OooOOO0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lz2/j4;->OooOOO0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/data/local/tmp/test.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lz2/j4;->OooOOO0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v15, v2, v1}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lz2/y4$OooO00o;->OooO00o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v13, v2, v1}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lz2/y4$OooO00o;->OooO00o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    if-eqz v1, :cond_a

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v6, v1}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    invoke-static {v11, v6, v1}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    invoke-static {v10, v6, v1}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v0

    const-string v1, "inject/armeabi-v7a/Inject"

    invoke-virtual {v0, v1, v9}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v0

    const-string v1, "inject/armeabi-v7a/libnullso2.so"

    invoke-virtual {v0, v1, v8}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v0

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    invoke-virtual {v0, v7, v6}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_5
    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v15, v2, v1}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lz2/y4$OooO00o;->OooO00o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v13, v2, v1}, Lz2/y4;->OooO0OO(Ljava/lang/String;ZI)Lz2/y4$OooO00o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lz2/y4$OooO00o;->OooO00o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_7
    move-object/from16 v0, v16

    if-eqz v1, :cond_a

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v10, 0x1

    invoke-static {v1, v10, v3}, Lz2/y4;->OooO0o0(Ljava/util/List;ZI)Lz2/y4$OooO00o;

    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v3

    const-string v10, "inject/x86/Inject"

    invoke-virtual {v3, v10, v9}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v3

    const-string v9, "inject/x86/libnullso2.so"

    invoke-virtual {v3, v9, v8}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_8
    invoke-static/range {p1 .. p1}, Lz2/p4;->OooO(Landroid/content/Context;)Lz2/p4;

    move-result-object v2

    invoke-virtual {v2, v0, v12}, Lz2/p4;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Lz2/p4;

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lz2/y4;->OooO0o0(Ljava/util/List;ZI)Lz2/y4$OooO00o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lz2/y4$OooO00o;->OooO00o:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_a
    :goto_1
    return-void
.end method
