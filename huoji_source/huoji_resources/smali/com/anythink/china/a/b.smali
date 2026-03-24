.class public final Lcom/anythink/china/a/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/a/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "unknown"

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ro.build.freeme.label"

    const/4 v3, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/anythink/china/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1, v4, v3}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    return-void

    :cond_0
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_1

    const-string v7, "FREEMEOS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_2

    const-string v5, "FERRMEOS"

    goto :goto_3

    :cond_2
    const-string v6, "ro.ssui.product"

    invoke-static {v6}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v9, "unknown"

    if-nez v7, :cond_3

    :try_start_2
    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    const-string v5, "SSUI"

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    const-string v5, "FREEME"

    goto :goto_3

    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/anythink/china/a/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v5, "COOLPAD"

    goto :goto_3

    :cond_7
    const-string v2, "ro.odm.manufacturer"

    invoke-static {v2}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "PRIZE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v5, "COOLSEA"

    :cond_8
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v9, "ASUS"

    const-string v10, "HUAWEI"

    const-string v11, "OPPO"

    const-string v12, "ONEPLUS"

    const-string v13, "ZTE"

    const-string v14, "FERRMEOS"

    const-string v15, "SSUI"

    const-string v16, "SAMSUNG"

    const-string v17, "MEIZU"

    const-string v18, "MOTOLORA"

    const-string v19, "LENOVO"

    const-string v20, "FREEME"

    const-string v21, "COOLPAD"

    const-string v22, "COOLSEA"

    filled-new-array/range {v9 .. v22}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v5

    new-instance v6, Lcom/anythink/china/a/b$1;

    invoke-direct {v6, v1, v0, v2}, Lcom/anythink/china/a/b$1;-><init>(Lcom/anythink/china/a/a;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v5, v6, v0, v8}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    goto :goto_4

    :cond_9
    const-string v5, "VIVO"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v2, Lcom/anythink/china/a/a/p;

    invoke-direct {v2, v0}, Lcom/anythink/china/a/a/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/anythink/china/a/a/p;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_a
    const-string v5, "NUBIA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/anythink/china/a/a/k;

    invoke-direct {v2, v0}, Lcom/anythink/china/a/a/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/anythink/china/a/a/k;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_b
    invoke-static/range {p0 .. p1}, Lcom/anythink/china/a/b;->c(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    nop

    goto :goto_4

    :catchall_1
    const-string v4, ""

    :cond_c
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {v1, v4, v3}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    :cond_d
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/china/a/a;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/a/b$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/anythink/china/a/b$1;-><init>(Lcom/anythink/china/a/a;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x2

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public static synthetic a(Lcom/bun/miitmdid/interfaces/IdSupplier;Lcom/anythink/china/a/a;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    :cond_2
    return-void
.end method

.method private static a()Z
    .locals 2

    const-string v0, "ro.build.freeme.label"

    invoke-static {v0}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FREEMEOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.coolpad.deviceidsupport"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/anythink/china/a/b$a;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/b$a;-><init>(Landroid/content/Context;)V

    iget-object p0, v0, Lcom/anythink/china/a/b$a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/anythink/china/a/b;->c(Landroid/content/Context;Lcom/anythink/china/a/a;)V

    return-void
.end method

.method private static b(Lcom/bun/miitmdid/interfaces/IdSupplier;Lcom/anythink/china/a/a;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    :cond_2
    return-void
.end method

.method private static b()Z
    .locals 2

    const-string v0, "ro.ssui.product"

    invoke-static {v0}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static c(Landroid/content/Context;Lcom/anythink/china/a/a;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/china/a/b$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/china/a/b$2;-><init>(Landroid/content/Context;Lcom/anythink/china/a/a;)V

    const/4 p0, 0x2

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method private static c()Z
    .locals 2

    const-string v0, "ro.build.freeme.label"

    invoke-static {v0}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static d()Z
    .locals 2

    const-string v0, "ro.odm.manufacturer"

    invoke-static {v0}, Lcom/anythink/china/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
