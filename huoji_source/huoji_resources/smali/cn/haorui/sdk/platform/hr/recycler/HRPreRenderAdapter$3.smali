.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->getAdView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$3;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$3;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$200(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCbc()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$3;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$400(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$3;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$400(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/InteractionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdRenderFailed()V
    .locals 0

    return-void
.end method
