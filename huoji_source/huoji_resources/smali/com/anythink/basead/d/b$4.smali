.class public final Lcom/anythink/basead/d/b$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/d/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/b;->c(Lcom/anythink/basead/e/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/e/c;

.field public final synthetic b:Lcom/anythink/basead/d/b;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/b;Lcom/anythink/basead/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/b$4;->b:Lcom/anythink/basead/d/b;

    iput-object p2, p0, Lcom/anythink/basead/d/b$4;->a:Lcom/anythink/basead/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/b$4;->a:Lcom/anythink/basead/e/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/basead/e/c;->onAdDataLoaded()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/ai;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/b$4;->b:Lcom/anythink/basead/d/b;

    iput-object p1, v0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    new-instance p1, Lcom/anythink/basead/c/i;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/basead/d/b$4;->b:Lcom/anythink/basead/d/b;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    const/16 v1, 0x21

    invoke-static {v1, v0, p1}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    iget-object p1, p0, Lcom/anythink/basead/d/b$4;->b:Lcom/anythink/basead/d/b;

    invoke-static {p1}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b;)Z

    iget-object p1, p0, Lcom/anythink/basead/d/b$4;->a:Lcom/anythink/basead/e/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/anythink/basead/e/c;->onAdCacheLoaded()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/ai;Lcom/anythink/basead/c/e;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/b$4;->b:Lcom/anythink/basead/d/b;

    iget-object v1, p0, Lcom/anythink/basead/d/b$4;->a:Lcom/anythink/basead/e/c;

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/d/b;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/c/e;Lcom/anythink/basead/e/c;Z)V

    return-void
.end method
