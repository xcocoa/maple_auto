.class public Lcn/haorui/sdk/adsail_ad/AdNative$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative$1;->onResponse(Lcn/haorui/sdk/core/domain/HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/adsail_ad/AdNative$1;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative$1;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$1;

    iget-object p1, p1, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$bannerRoot:Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$1;

    iget-object p1, p1, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$bannerRoot:Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$1;

    iget-object v0, v0, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$bannerRoot:Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$1;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$1;

    iget-object p1, p1, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;->onADClosed()V

    :cond_1
    return-void
.end method
