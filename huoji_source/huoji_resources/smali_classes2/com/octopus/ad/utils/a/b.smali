.class public final Lcom/octopus/ad/utils/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Z

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static volatile h:Ljava/lang/String;

.field private static volatile i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/octopus/ad/utils/a/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/octopus/ad/utils/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/utils/a/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/octopus/ad/utils/a/a;->b()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/octopus/ad/utils/a/b;->b:Ljava/lang/String;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/octopus/ad/utils/a/b;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    sput-object v0, Lcom/octopus/ad/utils/a/b;->b:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/octopus/ad/utils/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/OctopusAdSdkController;->isCanUsePhoneState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/octopus/ad/Octopus;->getCustomController()Lcom/octopus/ad/OctopusAdSdkController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/octopus/ad/OctopusAdSdkController;->getImei()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/octopus/ad/utils/a/b;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/octopus/ad/utils/a/b;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    const-class v0, Lcom/octopus/ad/utils/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/utils/a/b;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/octopus/ad/utils/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/octopus/ad/utils/a/b;->c:Ljava/lang/String;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/octopus/ad/utils/a/b;->c:Ljava/lang/String;

    if-nez p0, :cond_3

    const-string p0, ""

    sput-object p0, Lcom/octopus/ad/utils/a/b;->c:Ljava/lang/String;

    :cond_3
    sget-object p0, Lcom/octopus/ad/utils/a/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    sget-boolean v0, Lcom/octopus/ad/utils/a/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/octopus/ad/utils/a/b;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/octopus/ad/utils/a/b;->a:Z

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/octopus/ad/utils/a/a;->a(Landroid/app/Application;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/octopus/ad/utils/a/b;->a:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "oaid"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/SPUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    sget-object v0, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/octopus/ad/utils/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/octopus/ad/utils/a/a;->c()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    sget-object v1, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/octopus/ad/utils/a/b$1;

    invoke-direct {v1}, Lcom/octopus/ad/utils/a/b$1;-><init>()V

    invoke-static {p0, v1}, Lcom/octopus/ad/utils/a/a;->a(Landroid/content/Context;Lcom/octopus/ad/utils/a/c;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p0, ""

    sput-object p0, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "oaid"

    sget-object v1, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/utilities/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Oaid is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/octopus/ad/utils/a/f;->b(Ljava/lang/Object;)V

    sget-object p0, Lcom/octopus/ad/utils/a/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "gaid"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/SPUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    sget-object v0, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/octopus/ad/utils/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/octopus/ad/utils/a/a;->d()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    sget-object v1, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/octopus/ad/utils/a/b$2;

    invoke-direct {v1, p0}, Lcom/octopus/ad/utils/a/b$2;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v1}, Lcom/octopus/ad/utils/a/a;->a(Landroid/content/Context;Lcom/octopus/ad/utils/a/c;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p0, ""

    sput-object p0, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "gaid"

    sget-object v1, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/utilities/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gaid is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/octopus/ad/utils/a/f;->b(Ljava/lang/Object;)V

    sget-object p0, Lcom/octopus/ad/utils/a/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/octopus/ad/utils/a/b;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/octopus/ad/utils/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/utils/a/b;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/octopus/ad/utils/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/octopus/ad/utils/a/b;->e:Ljava/lang/String;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/octopus/ad/utils/a/b;->e:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    sput-object p0, Lcom/octopus/ad/utils/a/b;->e:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/octopus/ad/utils/a/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/octopus/ad/utils/a/b;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    const-class v0, Lcom/octopus/ad/utils/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/utils/a/b;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/octopus/ad/utils/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/octopus/ad/utils/a/b;->h:Ljava/lang/String;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/octopus/ad/utils/a/b;->h:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    sput-object p0, Lcom/octopus/ad/utils/a/b;->h:Ljava/lang/String;

    :cond_2
    sget-object p0, Lcom/octopus/ad/utils/a/b;->h:Ljava/lang/String;

    return-object p0
.end method
