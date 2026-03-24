.class public final Lcom/tramini/plugin/a/b$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/b$1;->a(Lcom/tramini/plugin/a/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tramini/plugin/a/d/a;

.field public final synthetic b:Lcom/tramini/plugin/a/b$1;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/a/b$1;Lcom/tramini/plugin/a/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/b$1$1;->b:Lcom/tramini/plugin/a/b$1;

    iput-object p2, p0, Lcom/tramini/plugin/a/b$1$1;->a:Lcom/tramini/plugin/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tramini/plugin/a/b$1$1;->b:Lcom/tramini/plugin/a/b$1;

    iget-object v1, v1, Lcom/tramini/plugin/a/b$1;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tramini/plugin/a/b$1$1;->a:Lcom/tramini/plugin/a/d/a;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/tramini/plugin/a/d/a;->a:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "setting_id"

    iget-object v2, p0, Lcom/tramini/plugin/a/b$1$1;->b:Lcom/tramini/plugin/a/b$1;

    iget-object v2, v2, Lcom/tramini/plugin/a/b$1;->c:Lcom/tramini/plugin/b/b;

    invoke-virtual {v2}, Lcom/tramini/plugin/b/b;->c()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/tramini/plugin/a/d/a;->b:Lcom/tramini/plugin/a/d/a$a;

    if-eqz v1, :cond_2

    const-string v1, "type"

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "i_t"

    iget-object v2, p0, Lcom/tramini/plugin/a/b$1$1;->a:Lcom/tramini/plugin/a/d/a;

    iget-object v2, v2, Lcom/tramini/plugin/a/d/a;->b:Lcom/tramini/plugin/a/d/a$a;

    iget-object v2, v2, Lcom/tramini/plugin/a/d/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tramini/plugin/a/b$1$1;->a:Lcom/tramini/plugin/a/d/a;

    iget-object v1, v1, Lcom/tramini/plugin/a/d/a;->b:Lcom/tramini/plugin/a/d/a$a;

    iget-object v1, v1, Lcom/tramini/plugin/a/d/a$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "i_al"

    iget-object v2, p0, Lcom/tramini/plugin/a/b$1$1;->a:Lcom/tramini/plugin/a/d/a;

    iget-object v2, v2, Lcom/tramini/plugin/a/d/a;->b:Lcom/tramini/plugin/a/d/a$a;

    iget-object v2, v2, Lcom/tramini/plugin/a/d/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tramini/plugin/a/h/c;->a([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/tramini/plugin/a/b$1$1;->b:Lcom/tramini/plugin/a/b$1;

    iget v1, v1, Lcom/tramini/plugin/a/b$1;->a:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    const/16 v2, 0x14

    if-eq v1, v2, :cond_3

    return-void

    :cond_3
    :goto_2
    invoke-static {}, Lcom/tramini/plugin/a/g/a;->a()Lcom/tramini/plugin/a/g/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tramini/plugin/a/b$1$1;->b:Lcom/tramini/plugin/a/b$1;

    iget-object v2, v2, Lcom/tramini/plugin/a/b$1;->d:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/tramini/plugin/a/b$1$1;->b:Lcom/tramini/plugin/a/b$1;

    iget-object v4, v4, Lcom/tramini/plugin/a/b$1;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/tramini/plugin/a/g/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
