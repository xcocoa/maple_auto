.class public final Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;->internalFormatShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/core/api/ATCommonImpressionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

.field public final synthetic val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;


# direct methods
.method public constructor <init>(Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;Lcom/anythink/core/api/ATCommonImpressionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->this$0:Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter;

    iput-object p2, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0, p1}, Lcom/anythink/core/api/ATCommonImpressionListener;->onDeeplinkCallback(Z)V

    return-void
.end method

.method public final onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCommonImpressionListener;->onDownloadConfirm(Landroid/content/Context;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    return-void
.end method

.method public final onInterstitialAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdClick()V

    return-void
.end method

.method public final onInterstitialAdClose()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdDismiss()V

    return-void
.end method

.method public final onInterstitialAdShow()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdImpression()V

    return-void
.end method

.method public final onInterstitialAdVideoEnd()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdVideoPlayEnd()V

    return-void
.end method

.method public final onInterstitialAdVideoError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdShowFail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onInterstitialAdVideoStart()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/interstitial/unitgroup/api/CustomInterstitialAdapter$1;->val$commonImpressionListener:Lcom/anythink/core/api/ATCommonImpressionListener;

    invoke-interface {v0}, Lcom/anythink/core/api/ATCommonImpressionListener;->onAdVideoPlayStart()V

    return-void
.end method
