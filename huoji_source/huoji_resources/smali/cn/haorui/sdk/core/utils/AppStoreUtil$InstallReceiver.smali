.class public Lcn/haorui/sdk/core/utils/AppStoreUtil$InstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/utils/AppStoreUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private clearData()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$002(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$102([Ljava/lang/String;)[Ljava/lang/String;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$202([Ljava/lang/String;)[Ljava/lang/String;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$302([Ljava/lang/String;)[Ljava/lang/String;

    return-void
.end method

.method private downloadSuccess()V
    .locals 7

    invoke-static {}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$100()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreUtil"

    if-eqz v0, :cond_1

    const-string v2, "Report send dn_succ"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$400()Landroid/content/Context;

    move-result-object v5

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

.method private installSucc()V
    .locals 7

    invoke-static {}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$300()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreUtil"

    if-eqz v0, :cond_1

    const-string v2, "Report send dn_inst_succ"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$400()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;

    invoke-direct {v6}, Lcn/haorui/sdk/core/utils/DefaultHttpGetWithNoHandlerCallback;-><init>()V

    invoke-static {v5, v4, v6}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetWithWebViewUA(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetWithStringCallback;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "onInstallStart: \u5b89\u88c5\u6210\u529f"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startInstall()V
    .locals 7

    invoke-static {}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStoreUtil"

    if-eqz v0, :cond_1

    const-string v2, "Report send dn_inst_start"

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$400()Landroid/content/Context;

    move-result-object v5

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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "AppStoreUtil"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive:  app_added  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.content.pm.extra.STATUS"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/utils/AppStoreUtil;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/AppStoreUtil$InstallReceiver;->downloadSuccess()V

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/AppStoreUtil$InstallReceiver;->startInstall()V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const-string p1, "install fail "

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "install success "

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/AppStoreUtil$InstallReceiver;->installSucc()V

    :goto_0
    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/AppStoreUtil$InstallReceiver;->clearData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
