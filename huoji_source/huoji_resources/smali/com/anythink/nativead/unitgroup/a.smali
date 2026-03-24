.class public abstract Lcom/anythink/nativead/unitgroup/a;
.super Lcom/anythink/core/api/BaseAd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "a"


# instance fields
.field public final NETWORK_UNKNOW:I

.field public mAdSourceType:Ljava/lang/String;

.field public mAdTrackingInfo:Lcom/anythink/core/common/f/h;

.field public mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

.field private mNativeEventListener:Lcom/anythink/core/common/b/l;

.field public mNetworkType:I

.field private nativePrepareInfo:Lcom/anythink/nativead/api/ATNativePrepareInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/core/api/BaseAd;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/nativead/unitgroup/a;->NETWORK_UNKNOW:I

    const-string v1, "0"

    iput-object v1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    iput v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNetworkType:I

    return-void
.end method


# virtual methods
.method public abstract bindDislikeListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract getAdIconView()Landroid/view/View;
.end method

.method public varargs abstract getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdSourceType:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertiserInfoOperate()Lcom/anythink/core/api/IATAdvertiserInfoOperate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDetail()Lcom/anythink/core/common/f/h;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/common/f/h;

    return-object v0
.end method

.method public getDownloadProgress()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getNativePrepareInfo()Lcom/anythink/nativead/api/ATNativePrepareInfo;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->nativePrepareInfo:Lcom/anythink/nativead/api/ATNativePrepareInfo;

    return-object v0
.end method

.method public getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSlideView(IIILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract isNativeExpress()Z
.end method

.method public final notifyAdClicked()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/anythink/core/common/b/l;->onAdClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final notifyAdDislikeClick()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/b/l;->onAdDislikeButtonClick()V

    :cond_0
    return-void
.end method

.method public final notifyAdImpression()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/b/l;->onAdImpressed()V

    :cond_0
    return-void
.end method

.method public final notifyAdVideoEnd()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/b/l;->onAdVideoEnd()V

    :cond_0
    return-void
.end method

.method public final notifyAdVideoPlayProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/core/common/b/l;->onAdVideoProgress(I)V

    :cond_0
    return-void
.end method

.method public final notifyAdVideoStart()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/core/common/b/l;->onAdVideoStart()V

    :cond_0
    return-void
.end method

.method public final notifyAdVideoVideoPlayFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyAdVideoVideoPlayFail..."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/core/common/b/m;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/core/common/b/m;

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/common/b/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final notifyDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/core/common/b/l;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final notifyDownloadConfirm(Landroid/content/Context;Landroid/view/View;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/anythink/core/common/b/l;->onDownloadConfirmCallback(Landroid/content/Context;Landroid/view/View;Lcom/anythink/core/api/ATNetworkConfirmInfo;)V

    :cond_0
    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end method

.method public abstract resumeVideo()V
.end method

.method public final setDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mDownloadListener:Lcom/anythink/core/api/ATEventInterface;

    return-void
.end method

.method public setNativeEventListener(Lcom/anythink/core/common/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mNativeEventListener:Lcom/anythink/core/common/b/l;

    return-void
.end method

.method public final setNativePrepareInfo(Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->nativePrepareInfo:Lcom/anythink/nativead/api/ATNativePrepareInfo;

    return-void
.end method

.method public final setTrackingInfo(Lcom/anythink/core/common/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/a;->mAdTrackingInfo:Lcom/anythink/core/common/f/h;

    return-void
.end method
