.class public Lcn/haorui/sdk/core/HRConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/HRConfig$Builder;,
        Lcn/haorui/sdk/core/HRConfig$CustomController;
    }
.end annotation


# static fields
.field public static final DEVICE_CONTROL_ALL_CLOSE:I = 0x2

.field public static final DEVICE_CONTROL_ALL_OPEN:I = 0x0

.field public static final DEVICE_CONTROL_ONLY_OAID:I = 0x1

.field public static final DOWNLOAD_CONFIRM_ALWAYS:I = 0x1

.field public static final DOWNLOAD_CONFIRM_AUTO:I = 0x0

.field public static final DOWNLOAD_CONFIRM_NEVER:I = 0x2

.field public static final GENDER_FEMALE:Ljava/lang/String; = "10"

.field public static final GENDER_MALE:Ljava/lang/String; = "01"

.field public static final GENDER_UNKNOWN:Ljava/lang/String; = "-1"

.field public static final SECURE_ALL:I = 0x2

.field public static final SECURE_HTTP:I = 0x0

.field public static final SECURE_HTTPS:I = 0x1

.field private static initTime:J

.field private static initUUID:Ljava/lang/String;


# instance fields
.field private advertiserId:[Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private canUseSdkPersonalRecommend:Z

.field private customController:Lcn/haorui/sdk/core/HRConfig$CustomController;

.field private deny_ader_ids:Ljava/lang/String;

.field private deny_cats:Ljava/lang/String;

.field private deny_cids:Ljava/lang/String;

.field private downloadConfirm:I

.field private enableDebug:Z

.field private enableInterstitialAutoClose:Z

.field private enableNotify:Z

.field private enableOaid:Z

.field private ext:Ljava/lang/String;

.field private isTest:Z

.field private oaid_cert_name:Ljava/lang/String;

.field private preRenderPaddings:[I

.field private secure:I

.field private showFeedAdLogo:Z

.field private showLogo:Z

.field private splashClickPause:Z

.field private splashClickText:Ljava/lang/String;

.field private splashShowTime:J

.field private userAge:Ljava/lang/Integer;

.field private userGender:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userKeywords:Ljava/lang/String;

.field private userType:Ljava/lang/Integer;

.field private webViewActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private webViewClient:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcn/haorui/sdk/core/webview/c;",
            ">;"
        }
    .end annotation
.end field

.field private webViewDownloadListener:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcn/haorui/sdk/core/webview/a;",
            ">;"
        }
    .end annotation
.end field

.field private wx_appid:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/HRConfig;->initUUID:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/haorui/sdk/core/HRConfig;->initTime:J

    return-void
.end method

.method private constructor <init>(Lcn/haorui/sdk/core/HRConfig$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->splashClickPause:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->showLogo:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->enableInterstitialAutoClose:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->canUseSdkPersonalRecommend:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcn/haorui/sdk/core/HRConfig;->splashShowTime:J

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$000(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->appId:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$100(Lcn/haorui/sdk/core/HRConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->enableDebug:Z

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$200(Lcn/haorui/sdk/core/HRConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->enableNotify:Z

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$300(Lcn/haorui/sdk/core/HRConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->enableOaid:Z

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$400(Lcn/haorui/sdk/core/HRConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/core/HRConfig;->downloadConfirm:I

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$500(Lcn/haorui/sdk/core/HRConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/core/HRConfig;->secure:I

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$600(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$700(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userType:Ljava/lang/Integer;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$800(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userAge:Ljava/lang/Integer;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$900(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userGender:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1000(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userKeywords:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1100(Lcn/haorui/sdk/core/HRConfig$Builder;)Lcn/haorui/sdk/core/HRConfig$CustomController;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->customController:Lcn/haorui/sdk/core/HRConfig$CustomController;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1200(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->webViewDownloadListener:Ljava/lang/Class;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1300(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->webViewClient:Ljava/lang/Class;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1400(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->webViewActivity:Ljava/lang/Class;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1500(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->ext:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1600(Lcn/haorui/sdk/core/HRConfig$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->preRenderPaddings:[I

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1700(Lcn/haorui/sdk/core/HRConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->showFeedAdLogo:Z

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1800(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->splashClickText:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$1900(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->deny_cats:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2000(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->deny_cids:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2100(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->deny_ader_ids:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2200(Lcn/haorui/sdk/core/HRConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->splashClickPause:Z

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2300(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->wx_appid:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2400(Lcn/haorui/sdk/core/HRConfig$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->advertiserId:[Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2500(Lcn/haorui/sdk/core/HRConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->showLogo:Z

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2600(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->oaid_cert_name:Ljava/lang/String;

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2700(Lcn/haorui/sdk/core/HRConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->canUseSdkPersonalRecommend:Z

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2800(Lcn/haorui/sdk/core/HRConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->enableInterstitialAutoClose:Z

    invoke-static {p1}, Lcn/haorui/sdk/core/HRConfig$Builder;->access$2900(Lcn/haorui/sdk/core/HRConfig$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/haorui/sdk/core/HRConfig;->splashShowTime:J

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/core/HRConfig$Builder;Lcn/haorui/sdk/core/HRConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/HRConfig;-><init>(Lcn/haorui/sdk/core/HRConfig$Builder;)V

    return-void
.end method

.method public static initTime()J
    .locals 2

    sget-wide v0, Lcn/haorui/sdk/core/HRConfig;->initTime:J

    return-wide v0
.end method

.method public static initUUID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/HRConfig;->initUUID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public appId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public customController()Lcn/haorui/sdk/core/HRConfig$CustomController;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->customController:Lcn/haorui/sdk/core/HRConfig$CustomController;

    return-object v0
.end method

.method public downloadConfirm()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/HRConfig;->downloadConfirm:I

    return v0
.end method

.method public downloadConfirm(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lcn/haorui/sdk/core/HRConfig;->downloadConfirm:I

    :cond_1
    return-void
.end method

.method public enableDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->enableDebug:Z

    return v0
.end method

.method public enableNotify()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->enableNotify:Z

    return v0
.end method

.method public enableOaid()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->enableOaid:Z

    return v0
.end method

.method public enableSdkPersonalRecommend(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig;->canUseSdkPersonalRecommend:Z

    return-void
.end method

.method public getCanUseSdkPersonalRecommend()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->canUseSdkPersonalRecommend:Z

    return v0
.end method

.method public getEnableInterstitialAutoClose()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->enableInterstitialAutoClose:Z

    return v0
.end method

.method public getOaidCertName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->oaid_cert_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSplashShowTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/HRConfig;->splashShowTime:J

    return-wide v0
.end method

.method public getWxAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->wx_appid:Ljava/lang/String;

    return-object v0
.end method

.method public isTest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public secure()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/HRConfig;->secure:I

    return v0
.end method

.method public setEnableInterstitialAutoClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig;->enableInterstitialAutoClose:Z

    return-void
.end method

.method public setOaidCertName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->oaid_cert_name:Ljava/lang/String;

    return-void
.end method

.method public setSplashShowTime(J)V
    .locals 3

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcn/haorui/sdk/core/HRConfig;->splashShowTime:J

    return-void
.end method

.method public setUserKeyWords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->userKeywords:Ljava/lang/String;

    return-void
.end method

.method public setWxAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->wx_appid:Ljava/lang/String;

    return-void
.end method

.method public showFeedAdLogo()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->showFeedAdLogo:Z

    return v0
.end method

.method public showLogo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig;->showLogo:Z

    return-void
.end method

.method public showLogo()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->showLogo:Z

    return v0
.end method

.method public splashClickPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig;->splashClickPause:Z

    return-void
.end method

.method public splashClickPause()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig;->splashClickPause:Z

    return v0
.end method

.method public splashClickText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->splashClickText:Ljava/lang/String;

    return-object v0
.end method

.method public splashClickText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->splashClickText:Ljava/lang/String;

    return-void
.end method

.method public varargs userAdvertiserId([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->advertiserId:[Ljava/lang/String;

    return-void
.end method

.method public userAdvertiserId()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->advertiserId:[Ljava/lang/String;

    return-object v0
.end method

.method public userAge()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userAge:Ljava/lang/Integer;

    return-object v0
.end method

.method public userDenyAderIds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->deny_ader_ids:Ljava/lang/String;

    return-object v0
.end method

.method public userDenyAderIds(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->deny_ader_ids:Ljava/lang/String;

    return-void
.end method

.method public userDenyCats()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->deny_cats:Ljava/lang/String;

    return-object v0
.end method

.method public userDenyCats(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->deny_cats:Ljava/lang/String;

    return-void
.end method

.method public userDenyCids()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->deny_cids:Ljava/lang/String;

    return-object v0
.end method

.method public userDenyCids(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->deny_cids:Ljava/lang/String;

    return-void
.end method

.method public userExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public userExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->ext:Ljava/lang/String;

    return-void
.end method

.method public userGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userGender:Ljava/lang/String;

    return-object v0
.end method

.method public userId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public userId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->userId:Ljava/lang/String;

    return-void
.end method

.method public userKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public userKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig;->userKeywords:Ljava/lang/String;

    return-void
.end method

.method public userPreRenderPaddings(IIII)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->preRenderPaddings:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->preRenderPaddings:[I

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->preRenderPaddings:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    return-void
.end method

.method public userPreRenderPaddings()[I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->preRenderPaddings:[I

    return-object v0
.end method

.method public userType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->userType:Ljava/lang/Integer;

    return-object v0
.end method

.method public webViewActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->webViewActivity:Ljava/lang/Class;

    return-object v0
.end method

.method public webViewClient()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcn/haorui/sdk/core/webview/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->webViewClient:Ljava/lang/Class;

    return-object v0
.end method

.method public webViewDownloadListener()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcn/haorui/sdk/core/webview/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig;->webViewDownloadListener:Ljava/lang/Class;

    return-object v0
.end method
