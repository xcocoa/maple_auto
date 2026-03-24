.class public Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->bindExpressAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$1000(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$500(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomFeedAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onFeedAdClicked(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerFeedAd;)V

    :goto_0
    return-void
.end method

.method public onAdClosed()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$200(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;->isNativeExpress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    invoke-static {v0}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$300(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;)Lcn/haorui/sdk/platform/ms/recycler/HrCustomExpressAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerAdapter;->onExpressAdClosed(Lcom/meishu/sdk/platform/custom/recycler/MsCustomRecyclerExpressAd;)V

    :cond_0
    return-void
.end method

.method public onAdRenderFailed()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader$3;->this$0:Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;

    const/4 v1, -0x1

    const-string v2, "\u6e32\u67d3\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;->access$1100(Lcn/haorui/sdk/platform/ms/recycler/HRRecyclerAdLoader;ILjava/lang/String;)V

    return-void
.end method
