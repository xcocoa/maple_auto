.class public final Lcom/anythink/basead/ui/BaseATView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/BaseATView;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/e/i;

.field public final synthetic b:Lcom/anythink/basead/ui/BaseATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/BaseATView;Lcom/anythink/basead/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseATView$3;->b:Lcom/anythink/basead/ui/BaseATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/BaseATView$3;->a:Lcom/anythink/basead/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView$3;->b:Lcom/anythink/basead/ui/BaseATView;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView$3;->a:Lcom/anythink/basead/e/i;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/BaseATView;->a(Lcom/anythink/basead/e/i;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView$3;->b:Lcom/anythink/basead/ui/BaseATView;

    iget-object v1, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    instance-of v2, v1, Lcom/anythink/core/common/f/aj;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget v2, v2, Lcom/anythink/core/common/f/m;->f:I

    const/16 v3, 0x43

    if-ne v2, v3, :cond_1

    check-cast v1, Lcom/anythink/core/common/f/aj;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/aj;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object v1

    iget-object v4, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_0
    iget-object v1, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    check-cast v1, Lcom/anythink/core/common/f/aj;

    invoke-virtual {v1, v3, v3}, Lcom/anythink/core/common/f/aj;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/a;

    move-result-object v1

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView$3;->b:Lcom/anythink/basead/ui/BaseATView;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/BaseATView;->a(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView$3;->b:Lcom/anythink/basead/ui/BaseATView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/BaseATView;->a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView$3;->b:Lcom/anythink/basead/ui/BaseATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseATView;->f()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView$3;->b:Lcom/anythink/basead/ui/BaseATView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseATView;->g()V

    return-void
.end method
