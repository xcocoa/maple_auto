.class public Lcom/octopus/ad/DownloadService$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/DownloadService;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "DownloadService"

    const-string v1, "onReceived...download finish...begin install\uff01"

    invoke-static {v0, v1}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_download_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {p2}, Lcom/octopus/ad/DownloadService;->c(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {p2}, Lcom/octopus/ad/DownloadService;->d(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {p2}, Lcom/octopus/ad/DownloadService;->c(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {v2}, Lcom/octopus/ad/DownloadService;->e(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {v2}, Lcom/octopus/ad/DownloadService;->e(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {v2}, Lcom/octopus/ad/DownloadService;->d(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/octopus/ad/utils/a;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/octopus/ad/utils/a;->h()Lcom/octopus/ad/b/b$b$a;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/octopus/ad/utils/a;->h()Lcom/octopus/ad/b/b$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/b/b$b$a;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/octopus/ad/internal/utilities/ReportEventUtil;->report(Ljava/util/List;)V

    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v2

    :cond_3
    iget-object v2, p0, Lcom/octopus/ad/DownloadService$b;->a:Lcom/octopus/ad/DownloadService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, p1, v0, p2}, Lcom/octopus/ad/DownloadService;->a(Lcom/octopus/ad/DownloadService;Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/utils/a;)V

    :cond_4
    :goto_0
    return-void
.end method
