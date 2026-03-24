.class public final Lcom/anythink/core/common/k/d$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/k/d;->a(JJLcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/h;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/anythink/core/api/ATBaseAdAdapter;

.field public final synthetic e:Lcom/anythink/core/common/k/d;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/k/d;Lcom/anythink/core/common/f/h;JJLcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/k/d$1;->e:Lcom/anythink/core/common/k/d;

    iput-object p2, p0, Lcom/anythink/core/common/k/d$1;->a:Lcom/anythink/core/common/f/h;

    iput-wide p3, p0, Lcom/anythink/core/common/k/d$1;->b:J

    iput-wide p5, p0, Lcom/anythink/core/common/k/d$1;->c:J

    iput-object p7, p0, Lcom/anythink/core/common/k/d$1;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/k/d$1;->a:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/k/d$1;->a:Lcom/anythink/core/common/f/h;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/d/f;->m()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/anythink/core/common/k/d$1;->b:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    move-wide v8, v6

    goto :goto_1

    :cond_2
    move-wide v8, v4

    :goto_1
    invoke-virtual {v3}, Lcom/anythink/core/d/f;->H()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/common/k/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "a"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v4, "b"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "api_c"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    move-object v12, v4

    iget-wide v6, p0, Lcom/anythink/core/common/k/d$1;->c:J

    iget-object v10, p0, Lcom/anythink/core/common/k/d$1;->a:Lcom/anythink/core/common/f/h;

    iget-object v11, p0, Lcom/anythink/core/common/k/d$1;->d:Lcom/anythink/core/api/ATBaseAdAdapter;

    move-object v4, v1

    move-object v5, v2

    invoke-static/range {v4 .. v12}, Lcom/anythink/core/common/k/d;->a(Ljava/lang/String;Ljava/lang/String;JJLcom/anythink/core/common/f/h;Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/anythink/core/common/k/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/k/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/k/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/anythink/core/common/k/d$1;->a:Lcom/anythink/core/common/f/h;

    const-string v8, ""

    invoke-virtual {v4}, Lcom/anythink/core/common/k/b;->b()Ljava/lang/String;

    move-result-object v9

    move-object v4, v1

    move-object v5, v2

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/h;Lcom/anythink/core/d/f;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v12, Lcom/anythink/core/common/k/c;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4}, Lcom/anythink/core/common/k/b;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/anythink/core/common/k/d$1;->a:Lcom/anythink/core/common/f/h;

    move-object v4, v12

    move v6, v13

    move-object v9, v3

    move-object v10, v1

    move-object v11, v2

    invoke-direct/range {v4 .. v11}, Lcom/anythink/core/common/k/c;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/anythink/core/common/f/h;Lcom/anythink/core/d/f;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/anythink/core/common/k/d$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/core/common/k/d$1$1;-><init>(Lcom/anythink/core/common/k/d$1;Ljava/lang/String;)V

    invoke-virtual {v12, v1, v2}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
