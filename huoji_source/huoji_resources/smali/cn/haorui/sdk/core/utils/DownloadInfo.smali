.class public Lcn/haorui/sdk/core/utils/DownloadInfo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Lcn/haorui/sdk/adsail_ad/NativeDownloadListener;


# static fields
.field public static final STATUS_COMPLETE:I = 0x2

.field public static final STATUS_INTERRUPTED:I = 0x1

.field public static final STATUS_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Download.DownloadInfo"


# instance fields
.field public cacheFile:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public deeplinkUrl:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public downloadFile:Ljava/lang/String;

.field public downloadStartReported:Z

.field public downloadSuccessReported:Z

.field public fileName:Ljava/lang/String;

.field public hasNotifiedOpen:Z

.field public installStartReported:Z

.field public installSuccessReported:Z

.field public key:Ljava/lang/String;

.field public notificationId:I

.field public packageName:Ljava/lang/String;

.field public reportDownloadStart:[Ljava/lang/String;

.field public reportDownloadSuccess:[Ljava/lang/String;

.field public reportInstallStart:[Ljava/lang/String;

.field public reportInstallSucc:[Ljava/lang/String;

.field public retryTime:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->cacheFile:Ljava/lang/String;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->retryTime:I

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    iput-boolean v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadStartReported:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadSuccessReported:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->installStartReported:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->installSuccessReported:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->hasNotifiedOpen:Z

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->key:Ljava/lang/String;

    invoke-interface {p4}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    iput-object p3, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/utils/DownloadInfo;->makeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->fileName:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".TempFile"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->cacheFile:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->fileName:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    invoke-interface {p4}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportDownloadStart:[Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportDownloadStart:[Ljava/lang/String;

    array-length p3, p2

    if-ge p1, p3, :cond_0

    aget-object p3, p2, p1

    invoke-static {p3, p4}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportDownloadSuccess:[Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportDownloadSuccess:[Ljava/lang/String;

    array-length p3, p2

    if-ge p1, p3, :cond_1

    aget-object p3, p2, p1

    invoke-static {p3, p4}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p4}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportInstallStart:[Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportInstallStart:[Ljava/lang/String;

    array-length p3, p2

    if-ge p1, p3, :cond_2

    aget-object p3, p2, p1

    invoke-static {p3, p4}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p4}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportInstallSucc:[Ljava/lang/String;

    if-eqz p1, :cond_3

    :goto_3
    iget-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportInstallSucc:[Ljava/lang/String;

    array-length p2, p1

    if-ge v1, p2, :cond_3

    aget-object p2, p1, v1

    invoke-static {p2, p4}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {p4}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->deeplinkUrl:Ljava/lang/String;

    return-void
.end method

.method private static final makeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/StringUtils;->byte2hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".apk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string p0, "tempName.apk"

    return-object p0
.end method


# virtual methods
.method public downloadStatus()I
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->cacheFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public onDownloadFailed()V
    .locals 2

    const-string v0, "Download.DownloadInfo"

    const-string v1, "onDownloadFailed: \u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadStart()V
    .locals 7

    iget-boolean v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadStartReported:Z

    const-string v1, "Download.DownloadInfo"

    if-eqz v0, :cond_0

    const-string v0, "Report dn_start reported abandon(reported)"

    :goto_0
    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadStartReported:Z

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportDownloadStart:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "Report send dn_start"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v5, v4, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "onDownloaded: \u4e0b\u8f7d\u5f00\u59cb"

    goto :goto_0
.end method

.method public onDownloaded()V
    .locals 7

    iget-boolean v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadSuccessReported:Z

    const-string v1, "Download.DownloadInfo"

    if-eqz v0, :cond_0

    const-string v0, "Report dn_succ reported abandon(reported)"

    :goto_0
    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadSuccessReported:Z

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportDownloadSuccess:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "Report send dn_succ"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v5, v4, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "onDownloaded: \u4e0b\u8f7d\u5b8c\u6210"

    goto :goto_0
.end method

.method public onInstallStart()V
    .locals 7

    iget-boolean v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->installStartReported:Z

    const-string v1, "Download.DownloadInfo"

    if-eqz v0, :cond_0

    const-string v0, "Report dn_inst_start abandon(reported)"

    :goto_0
    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->installStartReported:Z

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportInstallStart:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "Report send dn_inst_start"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v5, v4, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "onInstallStart: \u5f00\u59cb\u5b89\u88c5"

    goto :goto_0
.end method

.method public onInstallSucc()V
    .locals 7

    iget-boolean v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->installSuccessReported:Z

    const-string v1, "Download.DownloadInfo"

    if-eqz v0, :cond_0

    const-string v0, "Report dn_inst_succ abandon(reported)"

    :goto_0
    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->installSuccessReported:Z

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->reportInstallSucc:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v2, "Report send dn_inst_succ"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->context:Landroid/content/Context;

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v5, v4, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "onInstallStart: \u5b89\u88c5\u6210\u529f"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->displayName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->url:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/DownloadInfo;->downloadFile:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "DownloadInfo: DisplayName: %s\r\nUrl: %s\r\nDownloadFile:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
