.class public final Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->f()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;


# direct methods
.method public constructor <init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->h(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->l(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)I

    move-result v0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->m(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Ljava/util/Random;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;I)I

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;->a:Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-static {v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->h(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;->setProgress(I)V

    :cond_0
    return-void
.end method
