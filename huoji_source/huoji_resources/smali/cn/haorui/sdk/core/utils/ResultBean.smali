.class public Lcn/haorui/sdk/core/utils/ResultBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aderId:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private cat:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private ecpm:Ljava/lang/String;

.field private fromId:Ljava/lang/String;

.field private interactionType:I

.field private is_bidding:I

.field private pid:Ljava/lang/String;

.field private price:I

.field private reqId:Ljava/lang/String;

.field private reward_name:Ljava/lang/String;

.field private reward_num:I

.field private s_code:Ljava/lang/String;

.field private s_ext:Ljava/lang/String;

.field private sdkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->pid:Ljava/lang/String;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->appid:Ljava/lang/String;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->sdkName:Ljava/lang/String;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->reqId:Ljava/lang/String;

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->fromId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->aderId:Ljava/lang/String;

    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getEcpm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->ecpm:Ljava/lang/String;

    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->fromId:Ljava/lang/String;

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->interactionType:I

    return v0
.end method

.method public getIs_bidding()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->is_bidding:I

    return v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->price:I

    return v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getReward_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->reward_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReward_num()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->reward_num:I

    return v0
.end method

.method public getS_code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->s_code:Ljava/lang/String;

    return-object v0
.end method

.method public getS_ext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->s_ext:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/ResultBean;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public setAderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->aderId:Ljava/lang/String;

    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->appid:Ljava/lang/String;

    return-void
.end method

.method public setCat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->cat:Ljava/lang/String;

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->cid:Ljava/lang/String;

    return-void
.end method

.method public setEcpm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->ecpm:Ljava/lang/String;

    return-void
.end method

.method public setFromId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->fromId:Ljava/lang/String;

    return-void
.end method

.method public setInteractionType(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->interactionType:I

    return-void
.end method

.method public setIs_bidding(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->is_bidding:I

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->pid:Ljava/lang/String;

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->price:I

    return-void
.end method

.method public setReqId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->reqId:Ljava/lang/String;

    return-void
.end method

.method public setReward_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->reward_name:Ljava/lang/String;

    return-void
.end method

.method public setReward_num(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->reward_num:I

    return-void
.end method

.method public setS_code(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->s_code:Ljava/lang/String;

    return-void
.end method

.method public setS_ext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->s_ext:Ljava/lang/String;

    return-void
.end method

.method public setSdkName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/ResultBean;->sdkName:Ljava/lang/String;

    return-void
.end method
