.class public final Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-object v0, v0, Lcom/anythink/expressad/video/module/AnythinkBaseView;->b:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->l(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->h(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I

    move-result v1

    iget-object v2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->i(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I

    move-result v2

    iget-object v3, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v3}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->j(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I

    move-result v3

    iget-object v4, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v4}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->k(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->l(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->m(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->l(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->n(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->b(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$3;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {v0}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->o(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V

    return-void
.end method
