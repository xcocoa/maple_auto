.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->closeAd(Landroid/widget/TextView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$100(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$100(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    invoke-interface {p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdClosed()V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$400(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->this$0:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;

    invoke-static {p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->access$400(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;->onAdClosed()V

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->val$view:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method
