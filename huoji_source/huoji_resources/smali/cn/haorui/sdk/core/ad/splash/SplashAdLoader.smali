.class public Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;
.super Lcn/haorui/sdk/core/loader/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/loader/b<",
        "Lcn/haorui/sdk/core/ad/splash/SplashAdListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_AUTO_SHOW:Ljava/lang/String; = "KEY_AUTO_SHOW"

.field public static final KEY_SKIP_BUTTON:Ljava/lang/String; = "KEY_SKIP_BUTTON"

.field private static final TAG:Ljava/lang/String; = "SplashAdLoader"


# instance fields
.field private adContainer:Landroid/view/ViewGroup;

.field private fetchDelay:I

.field private hideSkipButton:Z

.field private isMute:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcn/haorui/sdk/core/ad/splash/SplashAdListener;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3, p4}, Lcn/haorui/sdk/core/loader/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->isMute:Z

    iput-object p2, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->adContainer:Landroid/view/ViewGroup;

    iput p5, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->fetchDelay:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/splash/SplashAdListener;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcn/haorui/sdk/core/ad/splash/SplashAdListener;I)V

    return-void
.end method


# virtual methods
.method public createAdDelegate(Landroid/content/Context;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 2

    new-instance p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    new-instance v0, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    invoke-direct {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;-><init>()V

    invoke-direct {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;)V

    invoke-static {}, Lcn/haorui/sdk/platform/hr/HRInitConfig;->getInstance()Lcn/haorui/sdk/platform/hr/HRInitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/b;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getLoadedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setLoadedTime(J)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getExpire_timestamp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setExpireTimestamp(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getEcpm()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setEcpm(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPermissionUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_permission()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPermisssList(Ljava/util/List;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_intor_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppIntroUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAct_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setActType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAd_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAdType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCbc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setCBC(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_count()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPowerCount(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_delay()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPowerDelay(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getS_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setS_code(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getS_ext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setS_ext(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setReqId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getFrom_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setFromId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDirect_market()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDirectMarket(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPackageName(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getIs_eyes()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setIsEyes(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPosId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClk_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setClkType(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClk_area()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setClkArea(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_index()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setPowerIndex(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setPowerType(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setCid(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDrawing()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDrawing(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClk_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setClickType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_index()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setPowerIndex(I)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDClickData(Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setTitle(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDesc(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setCat(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setImageUrls([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getTarget_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setInteractionType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setAdContainer(Landroid/view/ViewGroup;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppName(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setIcon(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getScore()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setScore(Ljava/lang/Float;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDeveloper()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDeveloper(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_intro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppIntro(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_feature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppFeature(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPayment_types()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPaymentTypes(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_size()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppSize(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppVer(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_privacy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppPrivacy(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPrivacy_agreement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPrivacyAgreement(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDeepLink(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_username()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWx_username(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWx_path(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWxStart([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWxSuccess([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_fail()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWxFail([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setMonitorUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getResponUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setResponUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClickUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setClickUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_active()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_active([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDp_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_fail()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDp_fail([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDp_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_start([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_one_quarter()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_one_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_one_half()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_one_half([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_three_quarter()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_three_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_complete()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_complete([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_pause()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_pause([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_resume()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_resume([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_mute()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_mute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_unmute()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_unmute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_replay()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_replay([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_cover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_cover(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_endcover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_endcover(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_keep_time()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->setVideo_keep_time(Ljava/lang/Long;)Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClickid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setClickid(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getFrom_logo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setFromLogo(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCreative_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAdPatternType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setErrorUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot$SplashBuilder;->build()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCreative_type()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCreative_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->setVideoUrl(Ljava/lang/String;)V

    :cond_0
    new-instance p2, Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;

    invoke-direct {p2, p0, p1}, Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;-><init>(Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;)V

    return-object p2
.end method

.method public createDelegate(Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 1
    .param p2    # Lcn/haorui/sdk/core/domain/HRAdInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcn/haorui/sdk/core/e;->splashLoader(Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;

    move-result-object p1

    return-object p1
.end method

.method public getAdContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->adContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getFetchDelay()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->fetchDelay:I

    return v0
.end method

.method public getIsHideSkipBtn()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->hideSkipButton:Z

    return v0
.end method

.method public getVideoIsMute()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->isMute:Z

    return v0
.end method

.method public hideSkipBtn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->hideSkipButton:Z

    return-void
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->loadAd(Landroid/view/View;)V

    return-void
.end method

.method public loadAd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->adContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY_SKIP_BUTTON"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "KEY_AUTO_SHOW"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, v0}, Lcn/haorui/sdk/core/loader/b;->loadAd(Ljava/util/Map;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u65e0 adContainer \u4e0d\u652f\u6301\u81ea\u52a8\u5c55\u793a"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadAdOnly()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->loadAdOnly(Landroid/view/View;)V

    return-void
.end method

.method public loadAdOnly(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "KEY_SKIP_BUTTON"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "KEY_AUTO_SHOW"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, v0}, Lcn/haorui/sdk/core/loader/b;->loadAd(Ljava/util/Map;)V

    return-void
.end method

.method public setVideoIsMute(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;->isMute:Z

    return-void
.end method
