.class public Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd$1;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd$1;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd$1;->this$0:Lcn/haorui/sdk/platform/topon/recycler/HRNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    return-void
.end method

.method public onAdRenderFailed()V
    .locals 0

    return-void
.end method
