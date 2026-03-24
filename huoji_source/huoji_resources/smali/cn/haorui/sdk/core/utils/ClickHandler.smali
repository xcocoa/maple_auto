.class public Lcn/haorui/sdk/core/utils/ClickHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ClickHandler"

.field public static activitySoftReference:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final wx_BaseReq:Ljava/lang/String; = "com.tencent.mm.opensdk.modelbase.BaseReq"

.field private static final wx_BaseWXApiImplV10:Ljava/lang/String; = "com.tencent.mm.opensdk.openapi.BaseWXApiImplV10"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->isSelfBackground(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static clearShowDialogActivity()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/haorui/sdk/core/utils/ClickHandler;->activitySoftReference:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private static downloadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcn/haorui/sdk/core/utils/DownloadUtils;->getInstance()Lcn/haorui/sdk/core/utils/DownloadUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcn/haorui/sdk/core/utils/DownloadUtils;->startDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static downloadInAppStore(Landroid/content/Context;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V
    .locals 5

    :try_start_0
    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->setInfo(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "ClickHandler"

    const-string v2, "Report send dn_start"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v4}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {p0, v3, v4}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static gotoDownload(Landroid/content/Context;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V
    .locals 7

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->isInternetConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "ClickHandler"

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_3

    sget-object v2, Lcn/haorui/sdk/core/download/a$a;->a:Lcn/haorui/sdk/core/download/a;

    iget-object v2, v2, Lcn/haorui/sdk/core/download/a;->c:Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/StringUtils;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".apk"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "File exist."

    invoke-static {v3, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "application/vnd.android.package-archive"

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".HRFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->gotoDownloadInner(Landroid/content/Context;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    goto :goto_2

    :cond_3
    const-string p0, "Unexpected data."

    invoke-static {v3, p0}, Lcn/haorui/sdk/core/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static gotoDownloadInner(Landroid/content/Context;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V
    .locals 9

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->downloadConfirm()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->downloadConfirm()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_start()[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v5

    if-ge v1, v2, :cond_1

    aget-object v2, v5, v1

    invoke-static {v2, p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    invoke-interface {v1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_succ()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    :goto_1
    array-length v2, v6

    if-ge v1, v2, :cond_2

    aget-object v2, v6, v1

    invoke-static {v2, p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    invoke-interface {v1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v1, 0x0

    :goto_2
    array-length v2, v7

    if-ge v1, v2, :cond_3

    aget-object v2, v7, v1

    invoke-static {v2, p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    invoke-interface {v1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const/4 v1, 0x0

    :goto_3
    array-length v2, v8

    if-ge v1, v2, :cond_4

    aget-object v2, v8, v1

    invoke-static {v2, p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    invoke-interface {v1}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v0

    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    invoke-interface {v1}, Lcn/haorui/sdk/core/ad/AdSlot;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcn/haorui/sdk/core/utils/ClickHandler;->downloadApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_5
    :goto_4
    sput-object p1, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;->nativeAd:Lcn/haorui/sdk/platform/hr/IAdSailAd;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/haorui/sdk/adsail_ad/view/DownLoadDialogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_6
    return-void
.end method

.method public static handleClick(Lcn/haorui/sdk/platform/hr/IAdSailAd;)V
    .locals 13

    const-string v0, "send wx_start"

    const-string v1, "ClickHandler"

    const-string v2, "handleClick"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v2

    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getClickUrl()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    const-string v7, "send handleClick"

    invoke-static {v1, v7}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v7, v2, Lcn/haorui/sdk/core/ad/BaseAdSlot;

    if-eqz v7, :cond_3

    move-object v7, v2

    check-cast v7, Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v7}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    sget-object v9, Lcn/haorui/sdk/core/utils/RecordUtil;->recordClickMap:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;

    if-nez v9, :cond_0

    new-instance v9, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;

    invoke-direct {v9}, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;-><init>()V

    :cond_0
    invoke-virtual {v9}, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->isClicked()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->isDynamicClick()Z

    move-result v10

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_2

    const/16 v11, 0x8

    invoke-static {v8, v11}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {v9, v6}, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->setClicked(Z)V

    sget-object v11, Lcn/haorui/sdk/core/utils/RecordUtil;->recordClickMap:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    array-length v7, v3

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_7

    aget-object v9, v3, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-interface {p0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-interface {p0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-interface {p0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-static {v9, v11, v12}, Lcn/haorui/sdk/core/utils/MacroUtil;->doReplaceUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    :cond_4
    if-eqz v10, :cond_5

    const-string v11, "__MS_DCLK_S__"

    const-string v12, "1"

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    :cond_5
    invoke-interface {p0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v9, p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v12}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v11, v9, v12}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    array-length v7, v3

    new-array v7, v7, [Ljava/lang/String;

    array-length v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v9, v8, :cond_8

    aget-object v11, v3, v9

    add-int/lit8 v12, v10, 0x1

    invoke-static {v11, p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto :goto_3

    :cond_8
    invoke-interface {v2, v7}, Lcn/haorui/sdk/core/ad/AdSlot;->setdUrl([Ljava/lang/String;)V

    :cond_9
    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdType()Lcn/haorui/sdk/core/ad/AdType;

    move-result-object v7

    sget-object v8, Lcn/haorui/sdk/core/ad/AdType;->FEED:Lcn/haorui/sdk/core/ad/AdType;

    const/4 v9, 0x2

    if-ne v7, v8, :cond_a

    instance-of v7, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    if-eqz v7, :cond_a

    move-object v7, p0

    check-cast v7, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-virtual {v7}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getAdPatternType()I

    move-result v8

    if-ne v8, v9, :cond_a

    invoke-virtual {v7}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->isShowDetail()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {p0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v7, :cond_a

    invoke-interface {p0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->openDetail()V

    return-void

    :cond_a
    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getWx_username()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    :try_start_0
    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getWx_start()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v8, v7

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v8, :cond_c

    aget-object v11, v7, v10

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-static {v11}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v12}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v3, v11, v12}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcn/haorui/sdk/core/HRConfig;->getWxAppid()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.tencent.mm.opensdk.openapi.BaseWXApiImplV10"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v5

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v6

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v9

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    aput-object v7, v4, v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v12

    invoke-virtual {v10, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "userName"

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getWx_username()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v10, "path"

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getWx_path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "com.tencent.mm.opensdk.modelbase.BaseReq"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "sendReq"

    :try_start_1
    new-array v11, v6, [Ljava/lang/Class;

    aput-object v7, v11, v5

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v9, v8, v5

    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_12

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getWx_succ()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string v7, "send wx_success"

    invoke-static {v1, v7}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v7, v4

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_e

    aget-object v9, v4, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v9}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v10}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v3, v9, v10}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    return-void

    :cond_f
    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getWx_fail()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v7, v4

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_12

    aget-object v9, v4, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    invoke-static {v9}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v10}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v3, v9, v10}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :catch_0
    move-exception v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wx loadfail="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getWx_fail()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v4

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_12

    aget-object v7, v4, v1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-static {v7}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceExposureMacros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v8}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v3, v7, v8}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    :try_start_2
    invoke-interface {v2}, Lcn/haorui/sdk/core/ad/AdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, p0, v0}, Lcn/haorui/sdk/core/utils/ClickHandler;->openDeepLink(Landroid/content/Context;Lcn/haorui/sdk/core/ad/AdSlot;Lcn/haorui/sdk/platform/hr/IAdSailAd;Landroid/content/Intent;)Z

    move-result v0
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v0, :cond_13

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_13
    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getInteractionType()I

    move-result v0

    if-ne v0, v6, :cond_15

    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getDirect_market()I

    move-result v0

    if-ne v0, v6, :cond_14

    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {v3, p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->downloadInAppStore(Landroid/content/Context;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    goto/16 :goto_9

    :cond_14
    invoke-static {v3, p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->gotoDownload(Landroid/content/Context;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    goto/16 :goto_9

    :cond_15
    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getInteractionType()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1b

    invoke-interface {p0}, Lcn/haorui/sdk/core/ad/IAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/core/loader/ShareInteractionListener;

    if-eqz v0, :cond_17

    :try_start_3
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->webViewActivity()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_16

    const-class v0, Lcn/haorui/sdk/activity/HRWebviewActivity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_16
    const-string v1, "setShareListener"

    :try_start_4
    new-array v4, v6, [Ljava/lang/Class;

    const-class v7, Lcn/haorui/sdk/core/loader/ShareInteractionListener;

    aput-object v7, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {p0}, Lcn/haorui/sdk/core/ad/IAd;->getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;

    move-result-object v7

    check-cast v7, Lcn/haorui/sdk/core/loader/ShareInteractionListener;

    aput-object v7, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_8
    sget-object v0, Lcn/haorui/sdk/core/uri/c;->c:Lcn/haorui/sdk/core/uri/c;

    invoke-interface {p0}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    invoke-interface {v1}, Lcn/haorui/sdk/core/ad/AdSlot;->getdUrl()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-static {v1, p0}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceOtherMacros(Ljava/lang/String;Lcn/haorui/sdk/core/ad/IAd;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_18

    iget-object p0, v0, Lcn/haorui/sdk/core/uri/c;->a:Ljava/lang/String;

    const-string v0, "uri scheme error"

    invoke-static {p0, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    iget-object v4, v0, Lcn/haorui/sdk/core/uri/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/haorui/sdk/core/uri/b;

    invoke-interface {v7, v3, v1, v2}, Lcn/haorui/sdk/core/uri/b;->a(Landroid/content/Context;Landroid/net/Uri;Lcn/haorui/sdk/core/ad/AdSlot;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v5, 0x1

    :cond_1a
    if-nez v5, :cond_1b

    iget-object v0, v0, Lcn/haorui/sdk/core/uri/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri cannot process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_9
    return-void
.end method

.method private static isInstall(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isInternetConnected(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSelfBackground(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isWifiConnected(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static openDeepLink(Landroid/content/Context;Lcn/haorui/sdk/core/ad/AdSlot;Lcn/haorui/sdk/platform/hr/IAdSailAd;Landroid/content/Intent;)Z
    .locals 7

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDp_start()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClickHandler"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "send dp_start"

    invoke-static {v1, v3}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5, p2}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {p0, v5, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcn/haorui/sdk/core/utils/ClickHandler$a;

    invoke-direct {v0, p0, p1, p2}, Lcn/haorui/sdk/core/utils/ClickHandler$a;-><init>(Landroid/content/Context;Lcn/haorui/sdk/core/ad/AdSlot;Lcn/haorui/sdk/platform/hr/IAdSailAd;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p3

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/AdSlot;->getDp_fail()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "send dp_fail"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3, p2}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v4}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {p0, v3, v4}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static replaceMacros(Ljava/lang/String;Lcn/haorui/sdk/platform/hr/IAdSailAd;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcn/haorui/sdk/platform/hr/IAdSailAd;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    invoke-static {p0, p1}, Lcn/haorui/sdk/core/utils/ClickHandler;->replaceOtherMacros(Ljava/lang/String;Lcn/haorui/sdk/core/ad/IAd;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "__CLICK_ID__"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getClickid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/AdSlot;->getClickid()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    aput-object p1, v2, v0

    invoke-static {p0, v1, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replaceOtherMacros(Ljava/lang/String;Lcn/haorui/sdk/core/ad/IAd;)Ljava/lang/String;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Lcn/haorui/sdk/core/ad/IAd;->getTouchData()Lcn/haorui/sdk/core/ad/TouchData;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/TouchData;->getTouchPosition()Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "__DOWN_X__"

    const-string v3, "__DOWN_Y__"

    const-string v4, "__UP_X__"

    const-string v5, "__UP_Y__"

    const-string v6, "__MS_EVENT_SEC__"

    const-string v7, "__MS_EVENT_MSEC__"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/16 v4, -0x3e7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getDownX()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getDownX()I

    move-result v5

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v5, -0x3e7

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getDownY()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getDownY()I

    move-result v6

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v6, -0x3e7

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getUpX()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getUpX()I

    move-result v6

    goto :goto_5

    :cond_5
    :goto_4
    const/16 v6, -0x3e7

    :goto_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getUpY()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getUpY()I

    move-result v4

    :cond_7
    :goto_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x4

    const-wide/16 v5, 0x3e8

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getTouchTime()Ljava/sql/Timestamp;

    move-result-object v7

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getTouchTime()Ljava/sql/Timestamp;

    move-result-object v7

    invoke-virtual {v7}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v7

    div-long/2addr v7, v5

    goto :goto_8

    :cond_9
    :goto_7
    div-long v7, v0, v5

    :goto_8
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getTouchTime()Ljava/sql/Timestamp;

    move-result-object v5

    if-nez v5, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Lcn/haorui/sdk/core/view/TouchPositionListener$TouchPosition;->getTouchTime()Ljava/sql/Timestamp;

    move-result-object p1

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    :cond_b
    :goto_9
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setShowDialogActivity(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcn/haorui/sdk/core/utils/ClickHandler;->activitySoftReference:Ljava/lang/ref/SoftReference;

    return-void
.end method
