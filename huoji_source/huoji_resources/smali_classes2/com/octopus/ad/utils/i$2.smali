.class public Lcom/octopus/ad/utils/i$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/i;->a(II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/FrameLayout$LayoutParams;

.field public final synthetic d:Lcom/octopus/ad/utils/i;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/i;IILandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/i$2;->d:Lcom/octopus/ad/utils/i;

    iput p2, p0, Lcom/octopus/ad/utils/i$2;->a:I

    iput p3, p0, Lcom/octopus/ad/utils/i$2;->b:I

    iput-object p4, p0, Lcom/octopus/ad/utils/i$2;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/utils/i$2;->d:Lcom/octopus/ad/utils/i;

    invoke-static {v0}, Lcom/octopus/ad/utils/i;->a(Lcom/octopus/ad/utils/i;)Lcom/octopus/ad/widget/ScrollClickView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/utils/i$2;->d:Lcom/octopus/ad/utils/i;

    invoke-static {v0}, Lcom/octopus/ad/utils/i;->a(Lcom/octopus/ad/utils/i;)Lcom/octopus/ad/widget/ScrollClickView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/octopus/ad/utils/i$2;->d:Lcom/octopus/ad/utils/i;

    invoke-static {v0}, Lcom/octopus/ad/utils/i;->a(Lcom/octopus/ad/utils/i;)Lcom/octopus/ad/widget/ScrollClickView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/octopus/ad/utils/i$2;->d:Lcom/octopus/ad/utils/i;

    iget v2, v1, Lcom/octopus/ad/utils/i;->b:I

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/octopus/ad/utils/i;->b(Lcom/octopus/ad/utils/i;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/octopus/ad/utils/i$2;->a:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/octopus/ad/utils/i;->b:I

    :cond_1
    iget-object v1, p0, Lcom/octopus/ad/utils/i$2;->d:Lcom/octopus/ad/utils/i;

    iget v2, v1, Lcom/octopus/ad/utils/i;->a:I

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/octopus/ad/utils/i;->b(Lcom/octopus/ad/utils/i;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/octopus/ad/utils/i$2;->b:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/octopus/ad/utils/i;->a:I

    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/utils/i$2;->c:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/octopus/ad/utils/i$2;->d:Lcom/octopus/ad/utils/i;

    iget v3, v2, Lcom/octopus/ad/utils/i;->b:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v2, Lcom/octopus/ad/utils/i;->a:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v2}, Lcom/octopus/ad/utils/i;->a(Lcom/octopus/ad/utils/i;)Lcom/octopus/ad/widget/ScrollClickView;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/utils/i$2;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/octopus/ad/utils/i$2;->c:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",leftMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/octopus/ad/utils/i$2;->c:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",scrollViewWidthInt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollClickUtil"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
