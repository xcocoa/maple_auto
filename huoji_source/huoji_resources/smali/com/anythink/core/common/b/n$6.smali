.class public final Lcom/anythink/core/common/b/n$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/api/ATInitConfig;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/anythink/core/common/b/n;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/n;Lcom/anythink/core/api/ATInitConfig;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/n$6;->c:Lcom/anythink/core/common/b/n;

    iput-object p2, p0, Lcom/anythink/core/common/b/n$6;->a:Lcom/anythink/core/api/ATInitConfig;

    iput-object p3, p0, Lcom/anythink/core/common/b/n$6;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/b/n$6;->a:Lcom/anythink/core/api/ATInitConfig;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitConfig;->getInitMediation()Lcom/anythink/core/api/ATInitMediation;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitMediation;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/b/n$6;->c:Lcom/anythink/core/common/b/n;

    invoke-static {v2}, Lcom/anythink/core/common/b/n;->b(Lcom/anythink/core/common/b/n;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "anythink_network_init_data"

    const-string v4, ""

    invoke-static {v2, v3, v1, v4}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/anythink/core/common/o/i;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/anythink/core/common/b/n$6;->a:Lcom/anythink/core/api/ATInitConfig;

    invoke-virtual {v2}, Lcom/anythink/core/api/ATInitConfig;->getRequestParamMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "anythink_local"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_0
    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, Lcom/anythink/core/common/b/n$6;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/q;->c()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v5, p0, Lcom/anythink/core/common/b/n$6;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/q;->d()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v6, p0, Lcom/anythink/core/common/b/n$6;->b:Landroid/content/Context;

    invoke-virtual {v0, v6, v4, v5}, Lcom/anythink/core/api/ATInitMediation;->setUserDataConsent(Landroid/content/Context;ZZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v6

    goto :goto_2

    :catchall_1
    move-exception v6

    goto :goto_1

    :catchall_2
    move-exception v6

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    :goto_2
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-object v6, p0, Lcom/anythink/core/common/b/n$6;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v6

    iget-object v7, p0, Lcom/anythink/core/common/b/n$6;->c:Lcom/anythink/core/common/b/n;

    invoke-static {v7}, Lcom/anythink/core/common/b/n;->d(Lcom/anythink/core/common/b/n;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v6

    const-string v7, "app_ccpa_switch"

    invoke-virtual {v6}, Lcom/anythink/core/d/a;->r()I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_4

    :cond_1
    const/4 v8, 0x0

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/anythink/core/common/o/h;->b()Z

    move-result v7

    const-string v8, "app_coppa_switch"

    invoke-virtual {v6}, Lcom/anythink/core/d/a;->s()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "anythink"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pre init network: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], params: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gdpr: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", in eu: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/anythink/core/common/b/n$6;->c:Lcom/anythink/core/common/b/n;

    invoke-static {v1}, Lcom/anythink/core/common/b/n;->b(Lcom/anythink/core/common/b/n;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/api/ATInitMediation;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_4
    return-void

    :catchall_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
