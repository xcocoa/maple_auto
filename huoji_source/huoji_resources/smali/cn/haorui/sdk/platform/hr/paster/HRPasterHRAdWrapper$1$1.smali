.class public Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->onADLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

.field public final synthetic val$ad:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

.field public final synthetic val$pasterAd:Lcn/haorui/sdk/core/ad/paster/HRPasterAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;Lcn/haorui/sdk/core/ad/paster/HRPasterAd;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->val$pasterAd:Lcn/haorui/sdk/core/ad/paster/HRPasterAd;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->val$ad:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object p1, p1, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$200(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->this$1:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;

    iget-object p1, p1, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;->access$300(Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->val$pasterAd:Lcn/haorui/sdk/core/ad/paster/HRPasterAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->val$pasterAd:Lcn/haorui/sdk/core/ad/paster/HRPasterAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->val$ad:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->val$pasterAd:Lcn/haorui/sdk/core/ad/paster/HRPasterAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/paster/HRPasterHRAdWrapper$1$1;->val$ad:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    return-void
.end method
