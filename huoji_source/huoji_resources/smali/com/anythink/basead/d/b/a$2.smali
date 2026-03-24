.class public final Lcom/anythink/basead/d/b/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/a/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/b/a;->a(Lcom/anythink/core/common/f/ai;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/b/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/m;

.field public final synthetic b:Lcom/anythink/basead/d/b/a$a;

.field public final synthetic c:Lcom/anythink/core/common/f/ai;

.field public final synthetic d:Lcom/anythink/basead/d/b/a;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/b/a;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/b/a$a;Lcom/anythink/core/common/f/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/b/a$2;->d:Lcom/anythink/basead/d/b/a;

    iput-object p2, p0, Lcom/anythink/basead/d/b/a$2;->a:Lcom/anythink/core/common/f/m;

    iput-object p3, p0, Lcom/anythink/basead/d/b/a$2;->b:Lcom/anythink/basead/d/b/a$a;

    iput-object p4, p0, Lcom/anythink/basead/d/b/a$2;->c:Lcom/anythink/core/common/f/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/b/a$2;->d:Lcom/anythink/basead/d/b/a;

    iget-object v0, v0, Lcom/anythink/basead/d/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    iget-object v1, p0, Lcom/anythink/basead/d/b/a$2;->a:Lcom/anythink/core/common/f/m;

    invoke-static {v1}, Lcom/anythink/core/basead/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/basead/d/b/a$2;->b:Lcom/anythink/basead/d/b/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/d/b/a$2;->c:Lcom/anythink/core/common/f/ai;

    invoke-interface {v0, v1}, Lcom/anythink/basead/d/b/a$a;->a(Lcom/anythink/core/common/f/ai;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/e;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/b/a$2;->d:Lcom/anythink/basead/d/b/a;

    iget-object v0, v0, Lcom/anythink/basead/d/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/anythink/core/basead/b;->a()Lcom/anythink/core/basead/b;

    iget-object v1, p0, Lcom/anythink/basead/d/b/a$2;->a:Lcom/anythink/core/common/f/m;

    invoke-static {v1}, Lcom/anythink/core/basead/b;->a(Lcom/anythink/core/common/f/m;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/anythink/basead/d/b/a$2;->b:Lcom/anythink/basead/d/b/a$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/basead/d/b/a$2;->c:Lcom/anythink/core/common/f/ai;

    invoke-interface {v0, v1, p1}, Lcom/anythink/basead/d/b/a$a;->a(Lcom/anythink/core/common/f/ai;Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method
