.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaleAndTranslate"
.end annotation


# instance fields
.field private scale:F

.field private final vTranslate:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(FLandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->scale:F

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(FLandroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic access$4700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)F
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->scale:F

    return p0
.end method

.method public static synthetic access$4702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;F)F
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->scale:F

    return p1
.end method

.method public static synthetic access$4800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    return-object p0
.end method
