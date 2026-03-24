.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$102(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;I)I

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$201(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;->this$0:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->access$301(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return v0
.end method
