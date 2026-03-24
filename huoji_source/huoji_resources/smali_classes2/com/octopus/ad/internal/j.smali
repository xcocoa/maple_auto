.class public Lcom/octopus/ad/internal/j;
.super Lcom/octopus/ad/internal/utilities/HTTPGet;
.source ""


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/utilities/HTTPGet;-><init>(Z)V

    iput-object p1, p0, Lcom/octopus/ad/internal/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "{}"

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "responseBody"

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/octopus/ad/internal/utilities/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/octopus/ad/utils/b/h;->b()Lcom/octopus/ad/utils/b/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/utils/b/h;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/octopus/ad/utils/b/b;

    invoke-direct {v1, v0}, Lcom/octopus/ad/utils/b/b;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const-string p1, "lastReqTime"

    invoke-static {}, Lcom/octopus/ad/utils/b/l;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/octopus/ad/internal/utilities/SPUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/octopus/ad/internal/utilities/HTTPResponse;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/j;->onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V

    return-void
.end method
