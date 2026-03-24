.class public final Lcom/anythink/china/common/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/common/a;


# direct methods
.method public constructor <init>(Lcom/anythink/china/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/a$1;->a:Lcom/anythink/china/common/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    sget-object p1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    :try_start_0
    iget-object p1, p0, Lcom/anythink/china/common/a$1;->a:Lcom/anythink/china/common/a;

    check-cast p2, Lcom/anythink/china/common/service/ApkDownloadService$a;

    invoke-static {p1, p2}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Lcom/anythink/china/common/service/ApkDownloadService$a;)Lcom/anythink/china/common/service/ApkDownloadService$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    sget-object p1, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/china/common/a$1;->a:Lcom/anythink/china/common/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Lcom/anythink/china/common/service/ApkDownloadService$a;)Lcom/anythink/china/common/service/ApkDownloadService$a;

    return-void
.end method
