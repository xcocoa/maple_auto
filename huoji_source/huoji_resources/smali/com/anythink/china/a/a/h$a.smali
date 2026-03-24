.class public final Lcom/anythink/china/a/a/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/a/a/h;


# direct methods
.method private constructor <init>(Lcom/anythink/china/a/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/china/a/a/h;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/china/a/a/h$a;-><init>(Lcom/anythink/china/a/a/h;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p2}, Lcom/anythink/china/a/a/g$a;->a(Landroid/os/IBinder;)Lcom/anythink/china/a/a/g;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/anythink/china/a/a/h;->a(Lcom/anythink/china/a/a/h;Lcom/anythink/china/a/a/g;)Lcom/anythink/china/a/a/g;

    iget-object p1, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p1}, Lcom/anythink/china/a/a/h;->a(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a/g;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p1}, Lcom/anythink/china/a/a/h;->b(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p1}, Lcom/anythink/china/a/a/h;->b(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p2}, Lcom/anythink/china/a/a/h;->a(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a/g;

    move-result-object p2

    invoke-interface {p2}, Lcom/anythink/china/a/a/g;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {v0}, Lcom/anythink/china/a/a/h;->a(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/china/a/a/g;->b()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/anythink/china/a/a;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p1}, Lcom/anythink/china/a/a/h;->c(Lcom/anythink/china/a/a/h;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p2}, Lcom/anythink/china/a/a/h;->b(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p2}, Lcom/anythink/china/a/a/h;->b(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_1
    invoke-interface {p2}, Lcom/anythink/china/a/a;->a()V

    goto :goto_0

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p2}, Lcom/anythink/china/a/a/h;->b(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p2}, Lcom/anythink/china/a/a/h;->b(Lcom/anythink/china/a/a/h;)Lcom/anythink/china/a/a;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    iget-object p2, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    invoke-static {p2}, Lcom/anythink/china/a/a/h;->c(Lcom/anythink/china/a/a/h;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/china/a/a/h$a;->a:Lcom/anythink/china/a/a/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/china/a/a/h;->a(Lcom/anythink/china/a/a/h;Lcom/anythink/china/a/a/g;)Lcom/anythink/china/a/a/g;

    return-void
.end method
