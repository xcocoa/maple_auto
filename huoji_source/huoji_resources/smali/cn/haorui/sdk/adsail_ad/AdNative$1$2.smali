.class public Lcn/haorui/sdk/adsail_ad/AdNative$1$2;
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

.field public final synthetic val$nativeBannerAd:Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative$1;Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$1;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$2;->val$nativeBannerAd:Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$2;->this$1:Lcn/haorui/sdk/adsail_ad/AdNative$1;

    iget-object p1, p1, Lcn/haorui/sdk/adsail_ad/AdNative$1;->val$adSlot:Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$2;->val$nativeBannerAd:Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$2;->val$nativeBannerAd:Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$1$2;->val$nativeBannerAd:Lcn/haorui/sdk/platform/hr/banner/HRBannerAd;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    return-void
.end method
