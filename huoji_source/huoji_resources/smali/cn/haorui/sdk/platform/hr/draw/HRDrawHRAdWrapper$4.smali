.class public Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->loadImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

.field public final synthetic val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$1400(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;->this$0:Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->access$1500(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;->val$HRDrawAd:Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    return-void
.end method
