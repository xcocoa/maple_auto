.class public Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailAdMediaListenerAdapter"


# instance fields
.field private adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

.field private apiRecyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

.field private context:Landroid/content/Context;

.field private isStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-object p3, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->apiRecyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    return-void
.end method


# virtual methods
.method public onVideoComplete()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoComplete"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_complete()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->apiRecyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoCompleted()V

    :cond_2
    return-void
.end method

.method public onVideoError()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->apiRecyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoError()V

    :cond_0
    return-void
.end method

.method public onVideoLoaded()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->apiRecyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoLoaded()V

    :cond_0
    return-void
.end method

.method public onVideoMute()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoMute"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_mute()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onVideoOneHalf()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoOneHalf"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_one_half()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onVideoOneQuarter()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoOneQuarter"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_one_quarter()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onVideoPause()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoPause"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_pause()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->apiRecyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoPause()V

    :cond_2
    return-void
.end method

.method public onVideoReplay()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoReplay"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_replay()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onVideoResume()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoResume"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_resume()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->apiRecyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoResume()V

    :cond_2
    return-void
.end method

.method public onVideoStart()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoStart"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->isStarted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_start()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->isStarted:Z

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->apiRecyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;->onVideoStart()V

    :cond_3
    return-void
.end method

.method public onVideoThreeQuarter()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoThreeQuarter"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_three_quarter()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onVideoUnmute()V
    .locals 6

    const-string v0, "AdSailAdMediaListenerAdapter"

    const-string v1, "send onVideoUnmute"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_unmute()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v5}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v4, v3, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
