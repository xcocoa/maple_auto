.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$3;
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


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$3;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$3;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method
