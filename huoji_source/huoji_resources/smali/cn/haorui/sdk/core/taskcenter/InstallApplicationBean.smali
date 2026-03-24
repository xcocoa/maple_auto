.class public Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private downloadUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private taskId:Ljava/lang/String;

.field private track:Lcn/haorui/sdk/core/taskcenter/TrackBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackBean()Lcn/haorui/sdk/core/taskcenter/TrackBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->track:Lcn/haorui/sdk/core/taskcenter/TrackBean;

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setTrackBean(Lcn/haorui/sdk/core/taskcenter/TrackBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/InstallApplicationBean;->track:Lcn/haorui/sdk/core/taskcenter/TrackBean;

    return-void
.end method
