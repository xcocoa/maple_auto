.class public Lcom/octopus/ad/widget/ScrollClickView$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/widget/ScrollClickView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/octopus/ad/widget/ScrollClickView$2;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/widget/ScrollClickView$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/widget/ScrollClickView$2$1;->b:Lcom/octopus/ad/widget/ScrollClickView$2;

    iput p2, p0, Lcom/octopus/ad/widget/ScrollClickView$2$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView$2$1;->b:Lcom/octopus/ad/widget/ScrollClickView$2;

    iget-object v0, v0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {v0}, Lcom/octopus/ad/widget/ScrollClickView;->a(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView$2$1;->b:Lcom/octopus/ad/widget/ScrollClickView$2;

    iget-object v0, v0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {v0}, Lcom/octopus/ad/widget/ScrollClickView;->b(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/octopus/ad/widget/ScrollClickView$2$1;->a:I

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/widget/ScrollClickView$2$1;->b:Lcom/octopus/ad/widget/ScrollClickView$2;

    iget-object p1, p1, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {p1}, Lcom/octopus/ad/widget/ScrollClickView;->a(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
