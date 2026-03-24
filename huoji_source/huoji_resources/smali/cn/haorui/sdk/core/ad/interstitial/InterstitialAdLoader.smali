.class public Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;
.super Lcn/haorui/sdk/core/loader/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/loader/b<",
        "Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_HEIGHT:Ljava/lang/String; = "KEY_HEIGHT"

.field public static final KEY_WIDTH:Ljava/lang/String; = "KEY_WIDTH"

.field private static final TAG:Ljava/lang/String; = "InterstitialAdLoader"


# instance fields
.field private isClickToClose:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdListener;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/core/loader/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public createAdDelegate(Landroid/content/Context;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 2

    new-instance p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    new-instance v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-direct {v0}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;-><init>()V

    invoke-direct {p1, v0}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V

    invoke-static {}, Lcn/haorui/sdk/platform/hr/HRInitConfig;->getInstance()Lcn/haorui/sdk/platform/hr/HRInitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/b;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getLoadedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setLoadedTime(J)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getExpire_timestamp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setExpireTimestamp(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getEcpm()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setEcpm(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPermissionUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_permission()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPermisssList(Ljava/util/List;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_intor_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppIntroUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAct_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setActType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAd_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAdType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCbc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setCBC(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_count()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPowerCount(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_delay()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPowerDelay(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getS_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setS_code(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getS_ext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setS_ext(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setReqId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getFrom_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setFromId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDirect_market()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDirectMarket(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPackageName(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPosId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setCid(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDrawing()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDrawing(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClk_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setClickType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_index()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPowerIndex(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDClickData(Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDesc(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setCat(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setImageUrls([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getTarget_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setInteractionType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->setWidth(I)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->setHeight(I)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getInsert_style()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->setInsertStyle(I)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppName(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setIcon(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getScore()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setScore(Ljava/lang/Float;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDeveloper()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDeveloper(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_intro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppIntro(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_feature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppFeature(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPayment_types()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPaymentTypes(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_size()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppSize(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppVer(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_privacy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppPrivacy(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPrivacy_agreement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPrivacyAgreement(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDeepLink(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_username()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWx_username(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWx_path(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWxStart([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWxSuccess([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_fail()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWxFail([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setMonitorUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getResponUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setResponUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClickUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setClickUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_active()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_active([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDp_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_fail()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDp_fail([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDp_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClickid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setClickid(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getFrom_logo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setFromLogo(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCreative_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAdPatternType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setErrorUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAction_text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->setActionText(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot$InterstitialBuilder;->build()Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    move-result-object p1

    new-instance p2, Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;

    invoke-direct {p2, p0, p1}, Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;-><init>(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;)V

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

    invoke-interface {v0, p0, p1, p2}, Lcn/haorui/sdk/core/e;->interstitialLoader(Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;

    move-result-object p1

    return-object p1
.end method

.method public getIsClickToClose()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;->isClickToClose:Z

    return v0
.end method

.method public loadAd(FF)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "KEY_WIDTH"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "KEY_HEIGHT"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/loader/b;->loadAd(Ljava/util/Map;)V

    return-void
.end method

.method public setClickToCloseAd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;->isClickToClose:Z

    return-void
.end method
