.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Anim"
.end annotation


# instance fields
.field private duration:J

.field private easing:I

.field private interruptible:Z

.field private listener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

.field private origin:I

.field private sCenterEnd:Landroid/graphics/PointF;

.field private sCenterEndRequested:Landroid/graphics/PointF;

.field private sCenterStart:Landroid/graphics/PointF;

.field private scaleEnd:F

.field private scaleStart:F

.field private time:J

.field private vFocusEnd:Landroid/graphics/PointF;

.field private vFocusStart:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->duration:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->interruptible:Z

    const/4 v1, 0x2

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->easing:I

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->origin:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->time:J

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;-><init>()V

    return-void
.end method

.method public static synthetic access$2700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->interruptible:Z

    return p0
.end method

.method public static synthetic access$2702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->interruptible:Z

    return p1
.end method

.method public static synthetic access$2800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->listener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    return-object p0
.end method

.method public static synthetic access$2802(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->listener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    return-object p1
.end method

.method public static synthetic access$3100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->vFocusStart:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$3102(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->vFocusStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$3200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->time:J

    return-wide v0
.end method

.method public static synthetic access$3202(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;J)J
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->time:J

    return-wide p1
.end method

.method public static synthetic access$3300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->duration:J

    return-wide v0
.end method

.method public static synthetic access$3302(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;J)J
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->duration:J

    return-wide p1
.end method

.method public static synthetic access$3400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->easing:I

    return p0
.end method

.method public static synthetic access$3402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->easing:I

    return p1
.end method

.method public static synthetic access$3500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)F
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->scaleStart:F

    return p0
.end method

.method public static synthetic access$3502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;F)F
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->scaleStart:F

    return p1
.end method

.method public static synthetic access$3600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)F
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->scaleEnd:F

    return p0
.end method

.method public static synthetic access$3602(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;F)F
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->scaleEnd:F

    return p1
.end method

.method public static synthetic access$3700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->vFocusEnd:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$3702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->vFocusEnd:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$3800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->sCenterEnd:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$3802(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->sCenterEnd:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$3900(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->origin:I

    return p0
.end method

.method public static synthetic access$3902(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->origin:I

    return p1
.end method

.method public static synthetic access$4400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->sCenterStart:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$4402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->sCenterStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$4500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->sCenterEndRequested:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$4502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->sCenterEndRequested:Landroid/graphics/PointF;

    return-object p1
.end method
