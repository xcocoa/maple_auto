.class public final Lcom/anythink/basead/d/g$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/d/g;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/anythink/basead/d/g;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/g;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iput-object p2, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v1, v0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    instance-of v2, v1, Lcom/anythink/expressad/splash/d/c;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v2

    check-cast v1, Lcom/anythink/expressad/splash/d/c;

    new-instance v2, Lcom/anythink/basead/d/g$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/basead/d/g$1$1;-><init>(Lcom/anythink/basead/d/g$1;[Z)V

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/splash/d/c;->a(Lcom/anythink/expressad/out/e;)V

    iget-object v1, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    new-instance v2, Lcom/anythink/basead/d/g$1$2;

    invoke-direct {v2, p0, v0}, Lcom/anythink/basead/d/g$1$2;-><init>(Lcom/anythink/basead/d/g$1;[Z)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    check-cast v0, Lcom/anythink/expressad/splash/d/c;

    iget-object v1, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/splash/d/c;->a(Landroid/view/ViewGroup;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    new-instance v1, Lcom/anythink/basead/ui/MraidSplashATView;

    iget-object v2, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v4, v3, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v5, v3, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v3, v3, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/anythink/basead/ui/MraidSplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    :goto_0
    iput-object v1, v0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v1, v0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v0, v0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-static {v1, v0}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->isSinglePicture(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    new-instance v1, Lcom/anythink/basead/ui/SinglePictureSplashATView;

    iget-object v2, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v4, v3, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v5, v3, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v3, v3, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/anythink/basead/ui/SinglePictureSplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    new-instance v1, Lcom/anythink/basead/ui/AsseblemSplashATView;

    iget-object v2, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v4, v3, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v5, v3, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v3, v3, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/anythink/basead/ui/AsseblemSplashATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v1, v0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-static {v0}, Lcom/anythink/basead/d/g;->a(Lcom/anythink/basead/d/g;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/BaseSplashATView;->setAdExtraInfoMap(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v1, v0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    iget-boolean v0, v0, Lcom/anythink/basead/d/g;->k:Z

    invoke-virtual {v1, v0}, Lcom/anythink/basead/ui/BaseSplashATView;->setDontCountDown(Z)V

    iget-object v0, p0, Lcom/anythink/basead/d/g$1;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/anythink/basead/d/g$1;->b:Lcom/anythink/basead/d/g;

    iget-object v1, v1, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
