.class public Lcom/octopus/ad/DownloadService$c;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/DownloadService;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/DownloadService$c;->a:Lcom/octopus/ad/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Install Success:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DownloadService"

    invoke-static {v0, p2}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/octopus/ad/DownloadService$c;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {p2}, Lcom/octopus/ad/DownloadService;->d(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/octopus/ad/DownloadService$c;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {p2}, Lcom/octopus/ad/DownloadService;->d(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/octopus/ad/utils/a;

    if-eqz p2, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/octopus/ad/utils/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/octopus/ad/utils/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p2}, Lcom/octopus/ad/utils/a;->h()Lcom/octopus/ad/b/b$b$a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/octopus/ad/utils/a;->h()Lcom/octopus/ad/b/b$b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/octopus/ad/b/b$b$a;->e()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V

    :cond_2
    iget-object p2, p0, Lcom/octopus/ad/DownloadService$c;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {p2}, Lcom/octopus/ad/DownloadService;->d(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/DownloadService$c;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {p1}, Lcom/octopus/ad/DownloadService;->d(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/octopus/ad/DownloadService$c;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {p1}, Lcom/octopus/ad/DownloadService;->d(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/octopus/ad/DownloadService$c;->a:Lcom/octopus/ad/DownloadService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_4
    return-void
.end method
