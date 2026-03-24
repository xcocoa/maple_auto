.class public Lcom/octopus/ad/widget/ScrollClickView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/widget/ScrollClickView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/widget/ScrollClickView;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/widget/ScrollClickView;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {v0}, Lcom/octopus/ad/widget/ScrollClickView;->a(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "ScrollClickUtil"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {v0}, Lcom/octopus/ad/widget/ScrollClickView;->b(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    iget-object v0, v0, Lcom/octopus/ad/widget/ScrollClickView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    iget-object v0, v0, Lcom/octopus/ad/widget/ScrollClickView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-static {v2}, Lcom/octopus/ad/widget/ScrollClickView;->c(Lcom/octopus/ad/widget/ScrollClickView;)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/octopus/ad/widget/ScrollClickView;->a(Lcom/octopus/ad/widget/ScrollClickView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    iget-object v2, v2, Lcom/octopus/ad/widget/ScrollClickView;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/octopus/ad/utils/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {v1}, Lcom/octopus/ad/widget/ScrollClickView;->c(Lcom/octopus/ad/widget/ScrollClickView;)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {v1}, Lcom/octopus/ad/widget/ScrollClickView;->d(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {v1}, Lcom/octopus/ad/widget/ScrollClickView;->d(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {v1}, Lcom/octopus/ad/widget/ScrollClickView;->d(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/octopus/ad/widget/ScrollClickView$2;->a:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-static {v1}, Lcom/octopus/ad/widget/ScrollClickView;->d(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/widget/ScrollClickView$2$1;

    invoke-direct {v2, p0, v0}, Lcom/octopus/ad/widget/ScrollClickView$2$1;-><init>(Lcom/octopus/ad/widget/ScrollClickView$2;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_3
    :goto_0
    const-string v0, "scrollContainer or scrollBarContainer is null , please check !"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
