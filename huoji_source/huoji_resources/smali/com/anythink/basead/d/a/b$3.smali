.class public final Lcom/anythink/basead/d/a/b$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/videocommon/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/a/b;->d(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/m;

.field public final synthetic b:Lcom/anythink/basead/d/a/b$a;

.field public final synthetic c:Lcom/anythink/basead/d/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/a/b$3;->c:Lcom/anythink/basead/d/a/b;

    iput-object p2, p0, Lcom/anythink/basead/d/a/b$3;->a:Lcom/anythink/core/common/f/m;

    iput-object p3, p0, Lcom/anythink/basead/d/a/b$3;->b:Lcom/anythink/basead/d/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/a/b$3;->c:Lcom/anythink/basead/d/a/b;

    iget-object v1, p0, Lcom/anythink/basead/d/a/b$3;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/basead/d/a/b$3;->b:Lcom/anythink/basead/d/a/b$a;

    invoke-static {v0, p1, v1, v2}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/basead/d/a/b;Ljava/lang/String;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;)V

    return-void
.end method

.method public final a(ZLjava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/a/b$3;->c:Lcom/anythink/basead/d/a/b;

    iget-object v0, v0, Lcom/anythink/basead/d/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/basead/d/a/b$3;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/basead/d/a/b$3;->a:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/reward/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/b/a;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/d/a/b$3;->b:Lcom/anythink/basead/d/a/b$a;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/anythink/basead/d/a/b$a;->b(Lcom/anythink/core/common/a/i;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/a/b$3;->b:Lcom/anythink/basead/d/a/b$a;

    if-eqz v0, :cond_1

    const-string v0, "30003"

    const-string v1, "Resource download fail."

    invoke-static {v0, v1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/d/a/b$3;->b:Lcom/anythink/basead/d/a/b$a;

    invoke-interface {v1, v0}, Lcom/anythink/basead/d/a/b$a;->a(Lcom/anythink/basead/c/e;)V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
