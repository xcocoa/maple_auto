.class public final Lcom/anythink/china/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = ""

.field private static g:Ljava/lang/String; = ""

.field private static h:Ljava/lang/String; = ""

.field private static i:Ljava/lang/String; = ""

.field private static j:Ljava/lang/String;

.field private static k:Z

.field private static l:Ljava/lang/String;

.field private static m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lcom/anythink/china/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "anythink_sdk"

    const-string v2, "oaid"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/anythink/china/b/a$1;

    invoke-direct {v2, p0}, Lcom/anythink/china/b/a$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v2}, Lcom/anythink/china/a/b;->a(Landroid/content/Context;Lcom/anythink/china/a/a;)V

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    const-string v4, "mac"

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x17

    if-ge v0, v2, :cond_2

    invoke-static {p0}, Lcom/anythink/china/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/anythink/china/b/d;->a()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v3, v2

    :goto_1
    sput-object v3, Lcom/anythink/china/b/a;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/anythink/china/b/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/o/e;->r()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/china/b/a;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/anythink/china/b/b;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    aget-object v3, v2, v3

    sput-object v3, Lcom/anythink/china/b/a;->e:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sput-object v2, Lcom/anythink/china/b/a;->f:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/anythink/core/common/o/e;->q()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/china/b/a;->g:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/china/b/b;->a()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/china/b/a;->h:Ljava/lang/String;

    invoke-static {}, Lcom/anythink/china/b/b;->b()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/anythink/china/b/a;->i:Ljava/lang/String;

    sget-object v2, Lcom/anythink/china/b/a;->m:Ljava/util/List;

    if-nez v2, :cond_5

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "det_time"

    invoke-static {p0, v1, v3, v2}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/anythink/china/b/a;->m:Ljava/util/List;

    new-instance v12, Lcom/anythink/core/common/f/s;

    const-string v8, "vivo_ver"

    const-string v9, "com.bbk.appstore"

    move-object v4, v12

    move-object v5, p0

    move-wide v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_4

    sget-object v0, Lcom/anythink/china/b/a;->m:Ljava/util/List;

    new-instance v2, Lcom/anythink/core/common/f/s;

    const-string v8, "oppo_ver"

    const-string v9, "com.heytap.market"

    move-object v4, v2

    move-object v5, p0

    move-wide v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/anythink/china/b/a;->m:Ljava/util/List;

    new-instance v2, Lcom/anythink/core/common/f/s;

    const-string v8, "oppo_ver"

    const-string v9, "com.oppo.market"

    move-object v4, v2

    move-object v5, p0

    move-wide v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/anythink/china/b/a;->m:Ljava/util/List;

    new-instance v2, Lcom/anythink/core/common/f/s;

    const-string v8, "xiaomi_ver"

    const-string v9, "com.xiaomi.market"

    move-object v4, v2

    move-object v5, p0

    move-wide v6, v10

    invoke-direct/range {v4 .. v9}, Lcom/anythink/core/common/f/s;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0, v1, v3, v4, v5}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_5
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[0-]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "oaid"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/anythink/china/b/a;->d(Landroid/content/Context;)Ljava/lang/String;

    sget-object v0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/anythink/china/b/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "wifi_name"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/b/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "oaid"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "anythink_sdk"

    const-string v1, "oaid"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    new-instance v3, Lcom/anythink/china/b/a$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/anythink/china/b/a$2;-><init>(Landroid/content/Context;Ljava/lang/Object;[Z)V

    invoke-static {p0, v3}, Lcom/anythink/china/a/b;->a(Landroid/content/Context;Lcom/anythink/china/a/a;)V

    aget-boolean p0, v1, v2

    if-nez p0, :cond_2

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x5dc

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    nop

    :cond_2
    :goto_0
    sget-object p0, Lcom/anythink/china/b/a;->c:Ljava/lang/String;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[0-]+$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    sget-object v0, Lcom/anythink/china/b/a;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/b/a;->l:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/anythink/china/b/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/anythink/china/b/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    const-string v2, "imei"

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/anythink/china/b/a;->k:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v1}, Lcom/anythink/china/common/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/anythink/china/b/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/anythink/china/b/a;->k:Z

    :cond_1
    sget-object p0, Lcom/anythink/china/b/a;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/china/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/anythink/china/b/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/china/b/a;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/anythink/china/b/a;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    sget-object p0, Lcom/anythink/china/b/a;->j:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    sput-object p0, Lcom/anythink/china/b/a;->j:Ljava/lang/String;

    :cond_1
    sget-object p0, Lcom/anythink/china/b/a;->j:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/o/e;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/china/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/china/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/china/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/china/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/china/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/s;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/anythink/china/b/a;->m:Ljava/util/List;

    return-object v0
.end method
