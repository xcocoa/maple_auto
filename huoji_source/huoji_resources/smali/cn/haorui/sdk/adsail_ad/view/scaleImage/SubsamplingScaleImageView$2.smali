.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1802(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)F

    move-result v2

    invoke-static {v0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1902(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;F)F

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$2002(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Z)Z

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$902(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Z)Z

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$2102(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;F)F

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$2202(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$2302(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$2200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$2200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p1, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$2402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$2502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Z)Z

    return v0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v3, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v2, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$2600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$900(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float p3, p3, v0

    add-float/2addr p2, p3

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/PointF;->y:F

    mul-float p4, p4, v0

    add-float/2addr p3, p4

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget p3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)F

    move-result p3

    div-float/2addr p2, p3

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$1000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)F

    move-result p1

    div-float/2addr p3, p1

    new-instance p1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    iget-object p4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p2, 0x0

    invoke-direct {p1, p4, v0, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->withEasing(I)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->access$1200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    const/4 p3, 0x3

    invoke-static {p1, p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->access$1300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;I)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->start()V

    return p2

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method
