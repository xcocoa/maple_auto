.class public Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callAdClick()V

    return-void
.end method

.method public onAdClosed()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    const/4 v1, -0x1

    const-string v2, "\u6a21\u677f\u5173\u95ed"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callDislikeSelected(ILjava/lang/String;)V

    return-void
.end method

.method public onAdRenderFailed()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd$1;->this$0:Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;

    invoke-static {v0}, Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;->access$000(Lcn/haorui/sdk/platform/csjblend/HYCBGMExpressAd;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "\u6e32\u67d3\u5931\u8d25"

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/mediation/bridge/custom/native_ad/MediationCustomNativeAd;->callRenderFail(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method
