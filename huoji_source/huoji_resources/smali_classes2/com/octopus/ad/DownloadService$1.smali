.class public Lcom/octopus/ad/DownloadService$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/DownloadService;->b(Lcom/octopus/ad/utils/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/utils/a;

.field public final synthetic b:Lcom/octopus/ad/DownloadService;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/DownloadService;Lcom/octopus/ad/utils/a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    iput-object p2, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheck(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFail(I)V
    .locals 4

    const-string p1, "DownloadService"

    const-string v0, "--appUpdate downloadApk onFail--"

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/utils/a;

    invoke-virtual {v0}, Lcom/octopus/ad/utils/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-static {v1}, Lcom/octopus/ad/DownloadService;->e(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-static {v1}, Lcom/octopus/ad/DownloadService;->e(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/utils/a;

    invoke-virtual {v2}, Lcom/octopus/ad/utils/a;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-virtual {v0, v1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip browser fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 3

    const-string p1, "DownloadService"

    const-string v0, "--appUpdate downloadApk onSuccess--"

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-static {p1}, Lcom/octopus/ad/DownloadService;->e(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-static {p1}, Lcom/octopus/ad/DownloadService;->e(Lcom/octopus/ad/DownloadService;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/utils/a;

    invoke-virtual {v0}, Lcom/octopus/ad/utils/a;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/octopus/ad/DownloadService$1;->b:Lcom/octopus/ad/DownloadService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/DownloadService$1;->a:Lcom/octopus/ad/utils/a;

    invoke-static {v2, p1, v0, v1}, Lcom/octopus/ad/DownloadService;->a(Lcom/octopus/ad/DownloadService;Landroid/content/Context;Ljava/lang/Long;Lcom/octopus/ad/utils/a;)V

    return-void
.end method
