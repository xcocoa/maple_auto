.class public Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;
.super Lcn/haorui/sdk/core/loader/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/core/loader/b<",
        "Lcn/haorui/sdk/core/ad/draw/DrawAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawAdLoader"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/draw/DrawAdListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
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
    .locals 5

    new-instance p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    new-instance v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-direct {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;-><init>()V

    invoke-direct {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    invoke-static {}, Lcn/haorui/sdk/platform/hr/HRInitConfig;->getInstance()Lcn/haorui/sdk/platform/hr/HRInitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/b;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getLoadedTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setLoadedTime(J)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getExpire_timestamp()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setExpireTimestamp(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getEcpm()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setEcpm(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPermissionUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_permission()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPermisssList(Ljava/util/List;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_intor_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppIntroUrl(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAct_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setActType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAd_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAdType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCbc()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setCBC(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_count()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPowerCount(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_delay()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPowerDelay(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getS_code()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setS_code(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getS_ext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setS_ext(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setReqId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getFrom_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setFromId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDirect_market()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDirectMarket(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPackageName(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPosId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setCid(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDrawing()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDrawing(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClk_type()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setClickType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_index()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPowerIndex(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDClickData(Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setDesc(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setCat(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAderId(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setDesc(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getTarget_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setInteractionType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setWidth(I)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setHeight(I)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getdUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setAppName(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setIcon(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getScore()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setScore(Ljava/lang/Float;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDeveloper()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDeveloper(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_intro()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppIntro(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_feature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppFeature(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPayment_types()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPaymentTypes(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_size()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppSize(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_ver()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppVer(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getApp_privacy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAppPrivacy(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPrivacy_agreement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setPrivacyAgreement(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDeepLink(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_username()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWx_username(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWx_path(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWxStart([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWxSuccess([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getWx_fail()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setWxFail([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getMonitorUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setMonitorUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getResponUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setResponUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClickUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setClickUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_inst_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_inst_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_inst_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDn_active()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDn_active([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDp_start([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_fail()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDp_fail([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDp_succ()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setDp_succ([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_start()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_start([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_one_quarter()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_one_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_one_half()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_one_half([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_three_quarter()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_three_quarter([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_complete()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_complete([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_pause()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_pause([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_resume()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_resume([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_mute()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_mute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_unmute()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_unmute([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_replay()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_replay([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setImageUrls([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getVideo_cover()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setVideo_cover(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getClickid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setClickid(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCreative_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setAdPatternType(I)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAction_text()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setActionText(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getFrom_logo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setFromLogo(Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->setContent(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getErrorUrl()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;->setErrorUrl([Ljava/lang/String;)Lcn/haorui/sdk/core/ad/BaseAdSlot$Builder;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot$RewardBuilder;->build()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object p1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getCreative_type()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->setVideoUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->setImageUrls([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getSrcUrls()[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, v2

    invoke-virtual {p1, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->setVideoUrl(Ljava/lang/String;)V

    :cond_2
    :goto_0
    new-instance p2, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;

    invoke-direct {p2, p0, p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;-><init>(Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    return-object p2
.end method

.method public createDelegate(Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
    .locals 1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcn/haorui/sdk/core/e;->drawLoader(Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;

    move-result-object p1

    return-object p1
.end method
