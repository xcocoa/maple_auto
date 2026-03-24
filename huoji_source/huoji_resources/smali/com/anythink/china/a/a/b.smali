.class public final Lcom/anythink/china/a/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/ServiceConnection;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/china/a/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lcom/anythink/china/a/a/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/a/b$1;-><init>(Lcom/anythink/china/a/a/b;)V

    iput-object v0, p0, Lcom/anythink/china/a/a/b;->b:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/anythink/china/a/a/b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/a;)V
    .locals 5

    const-string v0, "com.asus.msa.SupplementaryDID"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/anythink/china/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.asus.msa.action.ACCESS_DID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/anythink/china/a/a/b;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/china/a/a/b;->b:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/china/a/a/b;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v2, Lcom/anythink/china/a/a/a;

    invoke-direct {v2, v0}, Lcom/anythink/china/a/a/a;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v2}, Lcom/anythink/china/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_1
    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    return-void
.end method
