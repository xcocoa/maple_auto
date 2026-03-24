.class public final Lcom/anythink/china/common/a$3$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a$3;->a(Lcom/anythink/china/common/a/e;JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/common/a/e;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Lcom/anythink/china/common/a$3;


# direct methods
.method public constructor <init>(Lcom/anythink/china/common/a$3;Lcom/anythink/china/common/a/e;IJJ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/a$3$5;->e:Lcom/anythink/china/common/a$3;

    iput-object p2, p0, Lcom/anythink/china/common/a$3$5;->a:Lcom/anythink/china/common/a/e;

    iput p3, p0, Lcom/anythink/china/common/a$3$5;->b:I

    iput-wide p4, p0, Lcom/anythink/china/common/a$3$5;->c:J

    iput-wide p6, p0, Lcom/anythink/china/common/a$3$5;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/china/common/a$3$5;->e:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$5;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/china/common/a$3$5;->e:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$5;->a:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget v0, p0, Lcom/anythink/china/common/a$3$5;->b:I

    const-string v1, "("

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a$3$5;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") pause download"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/anythink/china/common/a$3$5;->e:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/china/common/a$3$5;->a:Lcom/anythink/china/common/a/e;

    iget-wide v3, p0, Lcom/anythink/china/common/a$3$5;->c:J

    iget-wide v5, p0, Lcom/anythink/china/common/a$3$5;->d:J

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJ)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$5;->e:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->b()V

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/anythink/china/common/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/china/common/a$3$5;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") stop download"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
