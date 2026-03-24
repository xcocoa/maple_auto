.class public Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/NativeDownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeDownloadListenerI"


# instance fields
.field private nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/platform/hr/IAdSailAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    return-void
.end method


# virtual methods
.method public onDownloadFailed()V
    .locals 2

    const-string v0, "NativeDownloadListenerI"

    const-string v1, "onDownloadFailed: \u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStart()V
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {v0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeDownloadListenerI"

    if-eqz v0, :cond_1

    const-string v2, "send dn_start"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {v5}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-static {v4, v6}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v5, v4, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "onDownloaded: \u4e0b\u8f7d\u5f00\u59cb"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloaded()V
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {v0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeDownloadListenerI"

    if-eqz v0, :cond_1

    const-string v2, "send dn_succ"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {v5}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-static {v4, v6}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v5, v4, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "onDownloaded: \u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInstallStart()V
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {v0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeDownloadListenerI"

    if-eqz v0, :cond_1

    const-string v2, "send dn_inst_start"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-interface {v5}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/NativeDownloadListenerImpl;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    invoke-static {v4, v6}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v5, v4, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "onInstallStart: \u5f00\u59cb\u5b89\u88c5"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
