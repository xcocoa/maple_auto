.class public final Lcom/anythink/china/a/a/r;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/anythink/china/a/a/q;

.field public b:Landroid/content/ServiceConnection;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/china/a/a/r$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/a/a/r$1;-><init>(Lcom/anythink/china/a/a/r;)V

    iput-object v0, p0, Lcom/anythink/china/a/a/r;->b:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/anythink/china/a/a/r;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/china/a/a;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zui.deviceidservice"

    const-string v2, "com.zui.deviceidservice.DeviceidService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/a/a/r;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/china/a/a/r;->b:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/china/a/a/r;->a:Lcom/anythink/china/a/a/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/china/a/a/q;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-interface {p1}, Lcom/anythink/china/a/a;->a()V

    return-void
.end method
