.class public Lcn/haorui/sdk/core/utils/PckIdBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private app_n:Ljava/lang/String;

.field private app_y:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PckIdBean;->app_n:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PckIdBean;->app_y:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/utils/PckIdBean;->time:J

    return-wide v0
.end method

.method public setApp_n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PckIdBean;->app_n:Ljava/lang/String;

    return-void
.end method

.method public setApp_y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PckIdBean;->app_y:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/utils/PckIdBean;->time:J

    return-void
.end method
