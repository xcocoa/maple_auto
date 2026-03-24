.class public Lcn/haorui/sdk/core/utils/RecordBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private clickNum:I

.field private dynamicClickNum:I

.field private exposureNum:I

.field private lastClickTime:J

.field private lastDynamicClickTime:J

.field private lastDynamicLoadedTime:J

.field private loadNum:I

.field private loadSucc:I

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClickNum()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/RecordBean;->clickNum:I

    return v0
.end method

.method public getDynamicClickNum()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/RecordBean;->dynamicClickNum:I

    return v0
.end method

.method public getExposureNum()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/RecordBean;->exposureNum:I

    return v0
.end method

.method public getLastClickTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/utils/RecordBean;->lastClickTime:J

    return-wide v0
.end method

.method public getLastDynamicClickTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/utils/RecordBean;->lastDynamicClickTime:J

    return-wide v0
.end method

.method public getLastDynamicLoadedTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/utils/RecordBean;->lastDynamicLoadedTime:J

    return-wide v0
.end method

.method public getLoadNum()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/RecordBean;->loadNum:I

    return v0
.end method

.method public getLoadSucc()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/RecordBean;->loadSucc:I

    return v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/RecordBean;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public setClickNum(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/RecordBean;->clickNum:I

    return-void
.end method

.method public setDynamicClickNum(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/RecordBean;->dynamicClickNum:I

    return-void
.end method

.method public setExposureNum(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/RecordBean;->exposureNum:I

    return-void
.end method

.method public setLastClickTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/utils/RecordBean;->lastClickTime:J

    return-void
.end method

.method public setLastDynamicClickTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/utils/RecordBean;->lastDynamicClickTime:J

    return-void
.end method

.method public setLastDynamicLoadedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/utils/RecordBean;->lastDynamicLoadedTime:J

    return-void
.end method

.method public setLoadNum(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/RecordBean;->loadNum:I

    return-void
.end method

.method public setLoadSucc(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/RecordBean;->loadSucc:I

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/RecordBean;->pid:Ljava/lang/String;

    return-void
.end method
