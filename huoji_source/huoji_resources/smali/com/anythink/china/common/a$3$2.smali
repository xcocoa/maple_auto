.class public final Lcom/anythink/china/common/a$3$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a$3;->a(Lcom/anythink/china/common/a/e;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/common/a/e;

.field public final synthetic b:J

.field public final synthetic c:Lcom/anythink/china/common/a$3;


# direct methods
.method public constructor <init>(Lcom/anythink/china/common/a$3;Lcom/anythink/china/common/a/e;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iput-object p2, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    iput-wide p3, p0, Lcom/anythink/china/common/a$3$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->c(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->e(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->e(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v2, v1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action_offer_download_end"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v1, v1, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    const-string v2, "receiver_extra_offer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->m:Ljava/lang/String;

    const-string v2, "receiver_extra_click_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v1, v1, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/k;->a(Landroid/content/Context;)Lcom/anythink/core/common/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/k;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a/e;)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/anythink/china/common/a$3$2;->b:J

    iget-wide v8, v0, Lcom/anythink/china/common/a/e;->h:J

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$2;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->b()V

    return-void
.end method
