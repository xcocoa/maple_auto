.class public final Lcom/anythink/basead/d/a/a$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/a/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/a/a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/m;

.field public final synthetic b:Lcom/anythink/basead/d/a/a$a;

.field public final synthetic c:Lcom/anythink/core/common/f/j;

.field public final synthetic d:Lcom/anythink/basead/d/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/a/a;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/a$a;Lcom/anythink/core/common/f/j;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/a/a$5;->d:Lcom/anythink/basead/d/a/a;

    iput-object p2, p0, Lcom/anythink/basead/d/a/a$5;->a:Lcom/anythink/core/common/f/m;

    iput-object p3, p0, Lcom/anythink/basead/d/a/a$5;->b:Lcom/anythink/basead/d/a/a$a;

    iput-object p4, p0, Lcom/anythink/basead/d/a/a$5;->c:Lcom/anythink/core/common/f/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/a/a$5;->d:Lcom/anythink/basead/d/a/a;

    iget-object v0, v0, Lcom/anythink/basead/d/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/basead/d/a/a$5;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/basead/d/a/a$5;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/basead/d/a/a$5;->b:Lcom/anythink/basead/d/a/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/d/a/a$5;->c:Lcom/anythink/core/common/f/j;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/anythink/basead/d/a/a$a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/a/i;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/a/a$5;->d:Lcom/anythink/basead/d/a/a;

    iget-object v0, v0, Lcom/anythink/basead/d/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/basead/d/a/a$5;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/basead/d/a/a$5;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/basead/d/a/a$5;->b:Lcom/anythink/basead/d/a/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/d/a/a$5;->c:Lcom/anythink/core/common/f/j;

    invoke-interface {v0, v1, p1}, Lcom/anythink/basead/d/a/a$a;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method
