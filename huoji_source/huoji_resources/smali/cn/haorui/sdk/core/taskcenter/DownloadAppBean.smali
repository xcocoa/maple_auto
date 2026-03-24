.class public Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appName:Ljava/lang/String;

.field private appPackageName:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private is_appstore:I

.field private reportProgress:Z

.field private taskId:Ljava/lang/String;

.field private track:Lcn/haorui/sdk/core/taskcenter/TrackBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_appstore()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->is_appstore:I

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackBean()Lcn/haorui/sdk/core/taskcenter/TrackBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->track:Lcn/haorui/sdk/core/taskcenter/TrackBean;

    return-object v0
.end method

.method public isReportProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->reportProgress:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->appPackageName:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setIs_appstore(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->is_appstore:I

    return-void
.end method

.method public setReportProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->reportProgress:Z

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setTrackBean(Lcn/haorui/sdk/core/taskcenter/TrackBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/taskcenter/DownloadAppBean;->track:Lcn/haorui/sdk/core/taskcenter/TrackBean;

    return-void
.end method
