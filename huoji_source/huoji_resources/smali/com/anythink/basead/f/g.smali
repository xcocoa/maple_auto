.class public final Lcom/anythink/basead/f/g;
.super Lcom/anythink/basead/f/c;
.source ""


# instance fields
.field public a:Lcom/anythink/basead/e/a;

.field public k:Lcom/anythink/basead/ui/BaseSplashATView;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anythink/basead/f/c;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/f/g$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/f/g$1;-><init>(Lcom/anythink/basead/f/g;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/anythink/basead/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/f/g;->a:Lcom/anythink/basead/e/a;

    return-void
.end method

.method public final a()Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/basead/f/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/f/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/f/a/a;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/f/c;->g:Lcom/anythink/core/common/f/z;

    iget-object v2, p0, Lcom/anythink/basead/f/c;->d:Lcom/anythink/core/common/f/m;

    iget-boolean v3, p0, Lcom/anythink/basead/f/c;->f:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/f/a/a;->a(Lcom/anythink/core/common/f/z;Lcom/anythink/core/common/f/m;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/f/g;->l:Z

    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/f/g;->a:Lcom/anythink/basead/e/a;

    iget-object v1, p0, Lcom/anythink/basead/f/g;->k:Lcom/anythink/basead/ui/BaseSplashATView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/basead/ui/BaseSplashATView;->destroy()V

    iput-object v0, p0, Lcom/anythink/basead/f/g;->k:Lcom/anythink/basead/ui/BaseSplashATView;

    :cond_0
    return-void
.end method
