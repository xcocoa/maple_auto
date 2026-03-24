.class public final Lcom/anythink/core/common/f$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/d/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/h;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/anythink/core/common/f$1;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f$1;Lcom/anythink/core/common/f/h;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iput-object p2, p0, Lcom/anythink/core/common/f$1$1;->a:Lcom/anythink/core/common/f/h;

    iput-object p3, p0, Lcom/anythink/core/common/f$1$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/anythink/core/common/f$1$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/api/AdError;)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object v0, v0, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->f(Lcom/anythink/core/common/f;)Ljava/lang/String;

    sget-object v0, Lcom/anythink/core/common/b/h$n;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object v2, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/anythink/core/common/f$1;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/core/common/o/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/api/ATSDK;->isNetworkLogDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "action"

    sget-object v6, Lcom/anythink/core/common/b/h$n;->C:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "result"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "placementId"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "adtype"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorMsg"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "anythink_network"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/anythink/core/common/b/h$n;->m:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/anythink/core/common/o/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "3001"

    invoke-static {v1, v0, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/f$1$1;->a:Lcom/anythink/core/common/f/h;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->E(I)V

    iget-object v0, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object v1, v0, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v2, p0, Lcom/anythink/core/common/f$1$1;->a:Lcom/anythink/core/common/f/h;

    iget-object v0, v0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-static {v1, v2, p1, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;Lcom/anythink/core/common/f/v;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/d/f;)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object v0, v0, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/f$1$1;->a:Lcom/anythink/core/common/f/h;

    invoke-static {v1, p1}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/d/f;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->ah()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object v2, v2, Lcom/anythink/core/common/f$1;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3003"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Format corresponding to API: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object v4, v4, Lcom/anythink/core/common/f$1;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/anythink/core/common/o/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Format corresponding to placement strategy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->ah()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/common/o/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object v2, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v1, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-virtual {v2, v1, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/v;Lcom/anythink/core/api/AdError;)V

    iget-object v1, p0, Lcom/anythink/core/common/f$1$1;->a:Lcom/anythink/core/common/f/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/h;->b(Z)V

    iget-object v1, p0, Lcom/anythink/core/common/f$1$1;->a:Lcom/anythink/core/common/f/h;

    invoke-static {v1, p1}, Lcom/anythink/core/common/n/e;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;)V

    iget-object p1, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object p1, p1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-boolean v2, p1, Lcom/anythink/core/common/f;->d:Z

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object v2, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v3, p0, Lcom/anythink/core/common/f$1$1;->b:Landroid/content/Context;

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/common/f$1$1;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/core/common/f$1$1;->a:Lcom/anythink/core/common/f/h;

    iget-object v8, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    move-object v6, p1

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/v;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Lcom/anythink/core/d/f;)V
    .locals 0

    invoke-virtual {p1}, Lcom/anythink/core/d/c;->au()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/f$1$1;->d:Lcom/anythink/core/common/f$1;

    iget-object p1, p1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-virtual {p1}, Lcom/anythink/core/common/f;->b()V

    :cond_0
    return-void
.end method
