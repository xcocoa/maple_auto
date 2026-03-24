.class public final Lcom/anythink/basead/d/a;
.super Lcom/anythink/basead/d/b;
.source ""


# instance fields
.field public a:Lcom/anythink/basead/ui/BaseBannerATView;

.field private final k:Ljava/lang/String;

.field private l:Lcom/anythink/expressad/out/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/d/b;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    const-class p1, Lcom/anythink/basead/d/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/d/a;->k:Ljava/lang/String;

    new-instance p1, Lcom/anythink/basead/d/a$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/d/a$1;-><init>(Lcom/anythink/basead/d/a;)V

    iput-object p1, p0, Lcom/anythink/basead/d/a;->l:Lcom/anythink/expressad/out/h;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    instance-of v1, v0, Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/anythink/expressad/out/TemplateBannerView;

    iget-object v1, p0, Lcom/anythink/basead/d/a;->l:Lcom/anythink/expressad/out/h;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/out/TemplateBannerView;->setBannerAdListener(Lcom/anythink/expressad/out/h;)V

    iget-object v0, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    check-cast v0, Lcom/anythink/expressad/out/TemplateBannerView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/a;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    if-nez v0, :cond_2

    invoke-super {p0}, Lcom/anythink/basead/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/anythink/basead/ui/MraidBannerATView;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v4, p0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/MraidBannerATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/anythink/basead/ui/SdkBannerATView;

    iget-object v1, p0, Lcom/anythink/basead/d/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/d/b;->c:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/d/b;->e:Lcom/anythink/core/common/f/aj;

    iget-object v4, p0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/SdkBannerATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    :goto_0
    iput-object v0, p0, Lcom/anythink/basead/d/a;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/d/a;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    return-object v0
.end method

.method public final b()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/basead/d/b;->b()V

    iget-object v0, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    instance-of v1, v0, Lcom/anythink/expressad/out/TemplateBannerView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/TemplateBannerView;->release()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/a;->a:Lcom/anythink/basead/ui/BaseBannerATView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseATView;->destroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    iput-object v0, p0, Lcom/anythink/basead/d/b;->h:Lcom/anythink/basead/e/a;

    return-void
.end method
