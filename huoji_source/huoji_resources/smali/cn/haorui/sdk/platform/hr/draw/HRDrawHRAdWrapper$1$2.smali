.class public Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->onADLoaded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;

.field public final synthetic val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

.field public final synthetic val$ad:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->val$ad:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;

    iget-object p1, p1, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$800(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->this$1:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;

    iget-object p1, p1, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$900(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->val$ad:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1$2;->val$ad:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    return-void
.end method
