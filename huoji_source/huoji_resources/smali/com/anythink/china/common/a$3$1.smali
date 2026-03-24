.class public final Lcom/anythink/china/common/a$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a$3;->a(Lcom/anythink/china/common/a/e;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J

.field public final synthetic c:Lcom/anythink/china/common/a/e;

.field public final synthetic d:Lcom/anythink/china/common/a$3;


# direct methods
.method public constructor <init>(Lcom/anythink/china/common/a$3;JJLcom/anythink/china/common/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/a$3$1;->d:Lcom/anythink/china/common/a$3;

    iput-wide p2, p0, Lcom/anythink/china/common/a$3$1;->a:J

    iput-wide p4, p0, Lcom/anythink/china/common/a$3$1;->b:J

    iput-object p6, p0, Lcom/anythink/china/common/a$3$1;->c:Lcom/anythink/china/common/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-wide v0, p0, Lcom/anythink/china/common/a$3$1;->a:J

    iget-wide v2, p0, Lcom/anythink/china/common/a$3$1;->b:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lcom/anythink/china/common/a$3$1;->d:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a$3$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v2, v2, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$1;->d:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$1;->c:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$1;->d:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/china/common/a$3$1;->c:Lcom/anythink/china/common/a/e;

    iget-wide v3, p0, Lcom/anythink/china/common/a$3$1;->a:J

    iget-wide v5, p0, Lcom/anythink/china/common/a$3$1;->b:J

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJ)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action_offer_download_start"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a$3$1;->d:Lcom/anythink/china/common/a$3;

    iget-object v1, v1, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a$3$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    const-string v2, "receiver_extra_offer_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a$3$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->m:Ljava/lang/String;

    const-string v2, "receiver_extra_click_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/china/common/a$3$1;->d:Lcom/anythink/china/common/a$3;

    iget-object v1, v1, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v1}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/k;->a(Landroid/content/Context;)Lcom/anythink/core/common/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/k;->a(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/anythink/china/common/a$3$1;->c:Lcom/anythink/china/common/a/e;

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/anythink/china/common/a$3$1;->b:J

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    return-void
.end method
