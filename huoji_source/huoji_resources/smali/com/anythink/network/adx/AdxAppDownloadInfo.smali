.class public Lcom/anythink/network/adx/AdxAppDownloadInfo;
.super Lcom/anythink/core/api/ATAdAppInfo;
.source ""


# instance fields
.field public appName:Ljava/lang/String;

.field public appPrivacyLink:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public apppermissionLink:Ljava/lang/String;

.field public functionLink:Ljava/lang/String;

.field public publisher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/d/h;)V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/core/api/ATAdAppInfo;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->publisher:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appPrivacyLink:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->apppermissionLink:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/basead/d/h;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->functionLink:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppDownloadCount()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAppPermissonUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->apppermissionLink:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPrivacyUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appPrivacyLink:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->functionLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxAppDownloadInfo;->publisher:Ljava/lang/String;

    return-object v0
.end method
