.class public Lcom/anythink/china/common/service/ApkDownloadService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/common/service/ApkDownloadService$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "extra_unique_id"

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/service/ApkDownloadService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/china/common/service/ApkDownloadService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->f()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/anythink/china/common/a/d;

    invoke-direct {v1, v0}, Lcom/anythink/china/common/a/d;-><init>(Lcom/anythink/china/common/a/e;)V

    new-instance v0, Lcom/anythink/china/common/service/ApkDownloadService$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/service/ApkDownloadService$1;-><init>(Lcom/anythink/china/common/service/ApkDownloadService;)V

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a$a;)V

    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "extra_unique_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/anythink/china/common/service/ApkDownloadService;->a(Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/anythink/china/common/service/ApkDownloadService$a;

    invoke-direct {p1, p0}, Lcom/anythink/china/common/service/ApkDownloadService$a;-><init>(Lcom/anythink/china/common/service/ApkDownloadService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/china/common/b/a;->a()V

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
