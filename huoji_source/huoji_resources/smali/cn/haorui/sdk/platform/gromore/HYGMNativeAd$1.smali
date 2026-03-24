.class public Lcn/haorui/sdk/platform/gromore/HYGMNativeAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/v2/ad/nativeAd/GMViewBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/gromore/HYGMNativeAd$1;->this$0:Lcn/haorui/sdk/platform/gromore/HYGMNativeAd;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/v2/ad/custom/nativeAd/GMCustomNativeAd;->callNativeAdClick()V

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
