.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$shakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

.field public final synthetic val$startShakeRoot:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$startShakeRoot:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$shakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$1100(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42f00000    # 120.0f

    mul-float v3, v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$startShakeRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x428c0000    # 70.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    add-int/lit8 v1, v1, -0x46

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, -0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$startShakeRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$startShakeRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$context:Landroid/content/Context;

    sget v2, Lcn/haorui/sdk/R$raw;->adsail_new_shake:I

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$1200(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Landroid/content/Context;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$shakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([BI)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$shakeImage:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;->val$startShakeRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11$1;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
