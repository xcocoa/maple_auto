.class public Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;->adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    if-eqz p1, :cond_0

    sget-object p1, Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;->TAG:Ljava/lang/String;

    const-string p2, "send onADExposure"

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;->adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADExposure()V

    :cond_0
    return-void
.end method

.method public setAdListener(Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;->adListener:Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;

    return-void
.end method
