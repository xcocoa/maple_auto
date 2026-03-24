.class public final Lcom/anythink/china/common/a$3$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a$3;->a(Lcom/anythink/china/common/a/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/common/a/e;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/anythink/china/common/a$3;


# direct methods
.method public constructor <init>(Lcom/anythink/china/common/a$3;Lcom/anythink/china/common/a/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iput-object p2, p0, Lcom/anythink/china/common/a$3$4;->a:Lcom/anythink/china/common/a/e;

    iput-object p3, p0, Lcom/anythink/china/common/a$3$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff1a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a$3$4;->a:Lcom/anythink/china/common/a/e;

    iget-object v2, v2, Lcom/anythink/china/common/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->c(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$4;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->d(Lcom/anythink/china/common/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$4;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/china/common/a;->a(Lcom/anythink/china/common/a;Ljava/util/Map;)Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->f(Lcom/anythink/china/common/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$4;->a:Lcom/anythink/china/common/a/e;

    iget-object v2, v1, Lcom/anythink/china/common/a/e;->n:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/china/common/a$3$4;->a:Lcom/anythink/china/common/a/e;

    invoke-virtual {v0, v1}, Lcom/anythink/china/common/b/a;->c(Lcom/anythink/china/common/a/e;)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-static {v0}, Lcom/anythink/china/common/a;->b(Lcom/anythink/china/common/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/china/common/a$3$4;->a:Lcom/anythink/china/common/a/e;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x64

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/china/common/b/a;->a(Lcom/anythink/china/common/a/e;JJ)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->a:Lcom/anythink/china/common/a/e;

    iget-object v1, v0, Lcom/anythink/china/common/a/e;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/anythink/china/common/a/e;->f:Ljava/lang/String;

    iget-object v3, v0, Lcom/anythink/china/common/a/e;->b:Ljava/lang/String;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/anythink/china/common/a$3$4;->b:Ljava/lang/String;

    const-wide/16 v6, 0x0

    iget-wide v8, v0, Lcom/anythink/china/common/a/e;->h:J

    invoke-static/range {v1 .. v9}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJ)V

    iget-object v0, p0, Lcom/anythink/china/common/a$3$4;->c:Lcom/anythink/china/common/a$3;

    iget-object v0, v0, Lcom/anythink/china/common/a$3;->a:Lcom/anythink/china/common/a;

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->b()V

    return-void
.end method
