.class public Lcn/haorui/sdk/core/domain/SdkAdInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private _err_pst:Ljava/lang/String;

.field private _price:Ljava/lang/String;

.field private _pst:Ljava/lang/String;

.field private _s:Ljava/lang/String;

.field private accept_id:Ljava/lang/String;

.field private alreadyLoaded:Z

.field private app_id:Ljava/lang/String;

.field private app_key:Ljava/lang/String;

.field private big_group:Ljava/lang/String;

.field private cache_clk:Ljava/lang/String;

.field private cache_err:Ljava/lang/String;

.field private cache_imp:Ljava/lang/String;

.field private cache_req:Ljava/lang/String;

.field private cache_rsp:Ljava/lang/String;

.field private clk:Ljava/lang/String;

.field private clk_limit:I

.field private cls:Ljava/lang/String;

.field private custom_ext:Ljava/lang/String;

.field private drawing:I

.field private ecpm:I

.field private err:Ljava/lang/String;

.field private expire_timestamp:I

.field private failMsg:Ljava/lang/String;

.field private finalRsp:Ljava/lang/String;

.field private group:Ljava/lang/String;

.field private group_id:Ljava/lang/String;

.field private imp:Ljava/lang/String;

.field private insert_new:I

.field private isCache:Z

.field private is_bidding:I

.field private loadTime:J

.field private loadedTime:J

.field private maxPrice:I

.field private otype:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private pre:I

.field private price:I

.field private priority:I

.field private req:Ljava/lang/String;

.field private req_id:Ljava/lang/String;

.field private req_uid:I

.field private reward_name:Ljava/lang/String;

.field private reward_num:I

.field private rsp:Ljava/lang/String;

.field private s2sb:Ljava/lang/String;

.field private s_code:Ljava/lang/String;

.field private s_ext:Ljava/lang/String;

.field private score:I

.field private sdk:Ljava/lang/String;

.field private strategy_dealid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->clk_limit:I

    const-string v0, "order"

    iput-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->otype:Ljava/lang/String;

    const-string v0, "__PST__"

    iput-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_pst:Ljava/lang/String;

    iput-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_err_pst:Ljava/lang/String;

    const-string v0, "__S__"

    iput-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_s:Ljava/lang/String;

    const-string v0, "__PRICE__"

    iput-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_price:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccept_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->accept_id:Ljava/lang/String;

    return-object v0
.end method

.method public getAlreadyLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->alreadyLoaded:Z

    return v0
.end method

.method public getApp_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_key()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->app_key:Ljava/lang/String;

    return-object v0
.end method

.method public getBig_group()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->big_group:Ljava/lang/String;

    return-object v0
.end method

.method public getCache_clk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_clk:Ljava/lang/String;

    return-object v0
.end method

.method public getCache_err()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_err:Ljava/lang/String;

    return-object v0
.end method

.method public getCache_imp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_imp:Ljava/lang/String;

    return-object v0
.end method

.method public getCache_req()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_req:Ljava/lang/String;

    return-object v0
.end method

.method public getCache_rsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_rsp:Ljava/lang/String;

    return-object v0
.end method

.method public getClk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->clk:Ljava/lang/String;

    return-object v0
.end method

.method public getClk_limit()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->clk_limit:I

    return v0
.end method

.method public getCls()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cls:Ljava/lang/String;

    return-object v0
.end method

.method public getCustom_ext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->custom_ext:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawing()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->drawing:I

    return v0
.end method

.method public getEcpm()I
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->otype:Ljava/lang/String;

    const-string v1, "bidding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->price:I

    return v0

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->ecpm:I

    return v0
.end method

.method public getErr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->err:Ljava/lang/String;

    return-object v0
.end method

.method public getExpire_timestamp()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->expire_timestamp:I

    return v0
.end method

.method public getFailMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->failMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFinalRsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->finalRsp:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getImp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->imp:Ljava/lang/String;

    return-object v0
.end method

.method public getInsert_new()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->insert_new:I

    return v0
.end method

.method public getIs_bidding()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->is_bidding:I

    return v0
.end method

.method public getLoadTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->loadTime:J

    return-wide v0
.end method

.method public getLoadedTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->loadedTime:J

    return-wide v0
.end method

.method public getMaxPrice()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->maxPrice:I

    return v0
.end method

.method public getOtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->otype:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getPre()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->pre:I

    return v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->price:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->priority:I

    return v0
.end method

.method public getReq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->req:Ljava/lang/String;

    return-object v0
.end method

.method public getReq_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->req_id:Ljava/lang/String;

    return-object v0
.end method

.method public getReq_uid()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->req_uid:I

    return v0
.end method

.method public getReward_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->reward_name:Ljava/lang/String;

    return-object v0
.end method

.method public getReward_num()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->reward_num:I

    return v0
.end method

.method public getRsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->rsp:Ljava/lang/String;

    return-object v0
.end method

.method public getS2sb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->s2sb:Ljava/lang/String;

    return-object v0
.end method

.method public getS_code()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->s_code:Ljava/lang/String;

    return-object v0
.end method

.method public getS_ext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->s_ext:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->score:I

    return v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->sdk:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy_dealid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->strategy_dealid:Ljava/lang/String;

    return-object v0
.end method

.method public get_err_pst()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_err_pst:Ljava/lang/String;

    return-object v0
.end method

.method public get_price()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_price:Ljava/lang/String;

    return-object v0
.end method

.method public get_pst()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_pst:Ljava/lang/String;

    return-object v0
.end method

.method public get_s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_s:Ljava/lang/String;

    return-object v0
.end method

.method public isCache()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->isCache:Z

    return v0
.end method

.method public replace()V
    .locals 9

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getRsp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getFinalRsp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getCache_rsp()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getLoadTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->set_pst(Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "__PST__"

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "__PRICE__"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const-string v7, "ssp"

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->set_price(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setFinalRsp(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_rsp(Ljava/lang/String;)V

    return-void
.end method

.method public replaceErrorPst(Lcn/haorui/sdk/core/loader/AdPlatformError;)V
    .locals 9

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getErr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getCache_err()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getLoadTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->set_err_pst(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "__PST__"

    if-nez v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_err(Ljava/lang/String;)V

    const-string v2, "__MS_ERRNO__"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    const-string v3, "1024"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "__ERROR_CODE__"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "__P__"

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "__TIMEOUT__"

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->getCode()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetErrorReport(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setErr(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_err(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setAccept_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->accept_id:Ljava/lang/String;

    return-void
.end method

.method public setAlreadyLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->alreadyLoaded:Z

    return-void
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setApp_key(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->app_key:Ljava/lang/String;

    return-void
.end method

.method public setBig_group(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->big_group:Ljava/lang/String;

    return-void
.end method

.method public setCache(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->isCache:Z

    return-void
.end method

.method public setCache_clk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_clk:Ljava/lang/String;

    return-void
.end method

.method public setCache_err(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_err:Ljava/lang/String;

    return-void
.end method

.method public setCache_imp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_imp:Ljava/lang/String;

    return-void
.end method

.method public setCache_req(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_req:Ljava/lang/String;

    return-void
.end method

.method public setCache_rsp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_rsp:Ljava/lang/String;

    return-void
.end method

.method public setClk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->clk:Ljava/lang/String;

    return-void
.end method

.method public setClk_limit(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->clk_limit:I

    return-void
.end method

.method public setCls(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cls:Ljava/lang/String;

    return-void
.end method

.method public setCustom_ext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->custom_ext:Ljava/lang/String;

    return-void
.end method

.method public setDrawing(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->drawing:I

    return-void
.end method

.method public setEcpm(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->ecpm:I

    return-void
.end method

.method public setEcpm(Ljava/lang/String;)V
    .locals 11

    const-string v0, "__S__"

    const-string v1, "__PRICE__"

    const-string v2, "ssp"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    iput v4, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->ecpm:I

    if-lez v4, :cond_2

    mul-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget v3, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->price:I

    mul-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->set_price(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->set_s(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->rsp:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->finalRsp:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->imp:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-static {v9, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_rsp:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->cache_imp:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setRsp(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setImp(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_rsp(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->setCache_imp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setErr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->err:Ljava/lang/String;

    return-void
.end method

.method public setExpire_timestamp(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->expire_timestamp:I

    return-void
.end method

.method public setFailMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->failMsg:Ljava/lang/String;

    return-void
.end method

.method public setFinalRsp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->finalRsp:Ljava/lang/String;

    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->group:Ljava/lang/String;

    return-void
.end method

.method public setGroup_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->group_id:Ljava/lang/String;

    return-void
.end method

.method public setImp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->imp:Ljava/lang/String;

    return-void
.end method

.method public setInsert_new(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->insert_new:I

    return-void
.end method

.method public setIs_bidding(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->is_bidding:I

    return-void
.end method

.method public setLoadTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->loadTime:J

    return-void
.end method

.method public setLoadedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->loadedTime:J

    return-void
.end method

.method public setMaxPrice(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->maxPrice:I

    return-void
.end method

.method public setOtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->otype:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->pid:Ljava/lang/String;

    return-void
.end method

.method public setPre(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->pre:I

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->price:I

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->priority:I

    return-void
.end method

.method public setReq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->req:Ljava/lang/String;

    return-void
.end method

.method public setReq_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->req_id:Ljava/lang/String;

    return-void
.end method

.method public setReq_uid(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->req_uid:I

    return-void
.end method

.method public setReward_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->reward_name:Ljava/lang/String;

    return-void
.end method

.method public setReward_num(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->reward_num:I

    return-void
.end method

.method public setRsp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->rsp:Ljava/lang/String;

    return-void
.end method

.method public setS2sb(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->s2sb:Ljava/lang/String;

    return-void
.end method

.method public setS_code(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->s_code:Ljava/lang/String;

    return-void
.end method

.method public setS_ext(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->s_ext:Ljava/lang/String;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->score:I

    return-void
.end method

.method public setSdk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->sdk:Ljava/lang/String;

    return-void
.end method

.method public setStrategy_dealid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->strategy_dealid:Ljava/lang/String;

    return-void
.end method

.method public set_err_pst(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_err_pst:Ljava/lang/String;

    return-void
.end method

.method public set_price(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_price:Ljava/lang/String;

    return-void
.end method

.method public set_pst(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_pst:Ljava/lang/String;

    return-void
.end method

.method public set_s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->_s:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdkAdInfo{pid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", req=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->req:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rsp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->rsp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", imp=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->imp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clk=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->clk:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", err=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->err:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", req_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->req_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", group=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->group:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", loadedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->loadedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/haorui/sdk/core/domain/SdkAdInfo;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
