.class public abstract Lcn/haorui/sdk/core/ad/BaseAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/IAd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/haorui/sdk/core/loader/InteractionListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/ad/IAd<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public adView:Landroid/view/View;

.field private adWrapper:Lcn/haorui/sdk/core/loader/d;

.field public interactionListener:Lcn/haorui/sdk/core/loader/InteractionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private platform:Ljava/lang/String;

.field public touchData:Lcn/haorui/sdk/core/ad/TouchData;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    iput-object p2, p0, Lcn/haorui/sdk/core/ad/BaseAd;->platform:Ljava/lang/String;

    new-instance p1, Lcn/haorui/sdk/core/ad/TouchData;

    invoke-direct {p1}, Lcn/haorui/sdk/core/ad/TouchData;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->touchData:Lcn/haorui/sdk/core/ad/TouchData;

    return-void
.end method


# virtual methods
.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    return-object v0
.end method

.method public getData()Lcn/haorui/sdk/core/utils/ResultBean;
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/utils/ResultBean;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/ResultBean;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setAppid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPrice(I)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getOtype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bidding"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getEcpm()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getReward_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReward_name(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getReward_num()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReward_num(I)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getS_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v1}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getS_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    return-object v0
.end method

.method public getInteractionListener()Lcn/haorui/sdk/core/loader/InteractionListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->interactionListener:Lcn/haorui/sdk/core/loader/InteractionListener;

    return-object v0
.end method

.method public getSdkAd()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchData()Lcn/haorui/sdk/core/ad/TouchData;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->touchData:Lcn/haorui/sdk/core/ad/TouchData;

    return-object v0
.end method

.method public isAdValid()Z
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getExpire_timestamp()I

    move-result v0

    const-wide/32 v1, 0x1a8ce0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v1, v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/d;->getSdkAdInfo()Lcn/haorui/sdk/core/domain/SdkAdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getLoadedTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setAdView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adView:Landroid/view/View;

    return-void
.end method

.method public setCacheAdListener(Lcn/haorui/sdk/core/loader/cache/c;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/ad/BaseAd;->adWrapper:Lcn/haorui/sdk/core/loader/d;

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/loader/d;->setCacheAdListener(Lcn/haorui/sdk/core/loader/cache/c;)V

    return-void
.end method

.method public setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/ad/BaseAd;->interactionListener:Lcn/haorui/sdk/core/loader/InteractionListener;

    return-void
.end method
