.class public final Lcom/anythink/basead/d/e;
.super Lcom/anythink/basead/d/b;
.source ""


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/d/b;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    iput-boolean p4, p0, Lcom/anythink/basead/d/e;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/basead/d/h;
    .locals 7

    new-instance v6, Lcom/anythink/basead/d/h;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v3, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v4, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    iget-boolean v5, p0, Lcom/anythink/basead/d/e;->a:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/anythink/basead/d/h;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/aj;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/a/i;Z)V

    return-object v6
.end method

.method public final a(Lcom/anythink/basead/e/d;)V
    .locals 1

    new-instance v0, Lcom/anythink/basead/d/e$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/d/e$1;-><init>(Lcom/anythink/basead/d/e;Lcom/anythink/basead/e/d;)V

    invoke-super {p0, v0}, Lcom/anythink/basead/d/b;->a(Lcom/anythink/basead/e/c;)V

    return-void
.end method
