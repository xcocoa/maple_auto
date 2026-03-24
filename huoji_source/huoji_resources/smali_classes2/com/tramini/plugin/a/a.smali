.class public Lcom/tramini/plugin/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Lcom/tramini/plugin/a/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/a;
    .locals 2

    sget-object v0, Lcom/tramini/plugin/a/a;->a:Lcom/tramini/plugin/a/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/tramini/plugin/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tramini/plugin/a/a;->a:Lcom/tramini/plugin/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tramini/plugin/a/a;

    invoke-direct {v1}, Lcom/tramini/plugin/a/a;-><init>()V

    sput-object v1, Lcom/tramini/plugin/a/a;->a:Lcom/tramini/plugin/a/a;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/tramini/plugin/a/a;->a:Lcom/tramini/plugin/a/a;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/b/c;->b(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    const-string v1, "https://aa.birdgesdk.com/v1/d_api"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tramini/plugin/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/b/c;->b(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    const-string v1, "https://pitk.birdgesdk.com/v1/ptk"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tramini/plugin/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method
