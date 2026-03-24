.class public Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private deepLink:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private time:J

.field private track:Lcn/haorui/sdk/core/taskcenter/TrackBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->deepLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->time:J

    return-wide v0
.end method

.method public getTrackBean()Lcn/haorui/sdk/core/taskcenter/TrackBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->track:Lcn/haorui/sdk/core/taskcenter/TrackBean;

    return-object v0
.end method

.method public setDeepLink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->deepLink:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->time:J

    return-void
.end method

.method public setTrackBean(Lcn/haorui/sdk/core/taskcenter/TrackBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/DeeplinkResultBean;->track:Lcn/haorui/sdk/core/taskcenter/TrackBean;

    return-void
.end method
