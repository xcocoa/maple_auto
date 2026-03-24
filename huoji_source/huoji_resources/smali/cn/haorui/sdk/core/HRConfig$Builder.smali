.class public Lcn/haorui/sdk/core/HRConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/HRConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->canUseSdkPersonalRecommend:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableDebug:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableNotify:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableOaid:Z

    iput v1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->downloadConfirm:I

    const/4 v2, 0x2

    iput v2, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->secure:I

    iput-boolean v1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->showFeedAdLogo:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->splashClickPause:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->showLogo:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableInterstitialAutoClose:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->splashShowTime:J

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/core/HRConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableDebug:Z

    return p0
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Lcn/haorui/sdk/core/HRConfig$Builder;)Lcn/haorui/sdk/core/HRConfig$CustomController;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->customController:Lcn/haorui/sdk/core/HRConfig$CustomController;

    return-object p0
.end method

.method public static synthetic access$1200(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->webViewDownloadListener:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$1300(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->webViewClient:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$1400(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->webViewActivity:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$1500(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->ext:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1600(Lcn/haorui/sdk/core/HRConfig$Builder;)[I
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->preRenderPaddings:[I

    return-object p0
.end method

.method public static synthetic access$1700(Lcn/haorui/sdk/core/HRConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->showFeedAdLogo:Z

    return p0
.end method

.method public static synthetic access$1800(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->splashClickText:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1900(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->deny_cats:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/core/HRConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableNotify:Z

    return p0
.end method

.method public static synthetic access$2000(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->deny_cids:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2100(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->deny_ader_ids:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2200(Lcn/haorui/sdk/core/HRConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->splashClickPause:Z

    return p0
.end method

.method public static synthetic access$2300(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->wx_appid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2400(Lcn/haorui/sdk/core/HRConfig$Builder;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->advertiserId:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2500(Lcn/haorui/sdk/core/HRConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->showLogo:Z

    return p0
.end method

.method public static synthetic access$2600(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->oaid_cert_name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2700(Lcn/haorui/sdk/core/HRConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->canUseSdkPersonalRecommend:Z

    return p0
.end method

.method public static synthetic access$2800(Lcn/haorui/sdk/core/HRConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableInterstitialAutoClose:Z

    return p0
.end method

.method public static synthetic access$2900(Lcn/haorui/sdk/core/HRConfig$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->splashShowTime:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/core/HRConfig$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableOaid:Z

    return p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/core/HRConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->downloadConfirm:I

    return p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/core/HRConfig$Builder;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->secure:I

    return p0
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userType:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userAge:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/core/HRConfig$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userGender:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcn/haorui/sdk/core/HRConfig;
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcn/haorui/sdk/core/HRConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/haorui/sdk/core/HRConfig;-><init>(Lcn/haorui/sdk/core/HRConfig$Builder;Lcn/haorui/sdk/core/HRConfig$1;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "appId\u9519\u8bef"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public customController(Lcn/haorui/sdk/core/HRConfig$CustomController;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0
    .param p1    # Lcn/haorui/sdk/core/HRConfig$CustomController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->customController:Lcn/haorui/sdk/core/HRConfig$CustomController;

    return-object p0
.end method

.method public downloadConfirm(I)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->downloadConfirm:I

    :cond_1
    return-object p0
.end method

.method public enableDebug(Z)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableDebug:Z

    return-object p0
.end method

.method public enableInterstitialAutoClose(Z)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableInterstitialAutoClose:Z

    return-object p0
.end method

.method public enableNotify(Z)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableNotify:Z

    return-object p0
.end method

.method public enableOaid(Z)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->enableOaid:Z

    return-object p0
.end method

.method public enableSdkPersonalRecommend(Z)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->canUseSdkPersonalRecommend:Z

    return-object p0
.end method

.method public secure(I)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 1

    const/4 v0, 0x2

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    :cond_0
    iput p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->secure:I

    :cond_1
    return-object p0
.end method

.method public setOaidCertName(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->oaid_cert_name:Ljava/lang/String;

    return-object p0
.end method

.method public setSplashShowTime(J)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 3

    const-wide/16 v0, 0xbb8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->splashShowTime:J

    :cond_0
    return-object p0
.end method

.method public setWxAppid(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->wx_appid:Ljava/lang/String;

    return-object p0
.end method

.method public showFeedAdLogo(Z)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->showFeedAdLogo:Z

    return-object p0
.end method

.method public showLogo(Z)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->showLogo:Z

    return-object p0
.end method

.method public splashClickPause(Z)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->splashClickPause:Z

    return-object p0
.end method

.method public splashClickText(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->splashClickText:Ljava/lang/String;

    return-object p0
.end method

.method public varargs userAdvertiserId([Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->advertiserId:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public userAge(I)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x96

    if-le v0, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userAge:Ljava/lang/Integer;

    :cond_0
    return-object p0
.end method

.method public userDenyAderIds(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->deny_ader_ids:Ljava/lang/String;

    return-object p0
.end method

.method public userDenyCats(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->deny_cats:Ljava/lang/String;

    return-object p0
.end method

.method public userDenyCids(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->deny_cids:Ljava/lang/String;

    return-object p0
.end method

.method public userExt(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->ext:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public userGender(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "01"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "10"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userGender:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public userKeywords(Ljava/lang/String;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userKeywords:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public userPreRenderPaddings(IIII)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->preRenderPaddings:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->preRenderPaddings:[I

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->preRenderPaddings:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    aput p4, v0, p1

    return-object p0
.end method

.method public userType(I)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->userType:Ljava/lang/Integer;

    return-object p0
.end method

.method public webViewActivity(Ljava/lang/Class;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)",
            "Lcn/haorui/sdk/core/HRConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->webViewActivity:Ljava/lang/Class;

    return-object p0
.end method

.method public webViewClient(Ljava/lang/Class;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/haorui/sdk/core/webview/c;",
            ">;)",
            "Lcn/haorui/sdk/core/HRConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->webViewClient:Ljava/lang/Class;

    return-object p0
.end method

.method public webviewDownloadListener(Ljava/lang/Class;)Lcn/haorui/sdk/core/HRConfig$Builder;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/haorui/sdk/core/webview/a;",
            ">;)",
            "Lcn/haorui/sdk/core/HRConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/HRConfig$Builder;->webViewDownloadListener:Ljava/lang/Class;

    return-object p0
.end method
