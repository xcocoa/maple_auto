.class public Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/utils/PackageBean$AppBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackBean"
.end annotation


# instance fields
.field private app_package:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isInstalled:Z

.field private lastCheckTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_package()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->app_package:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->isInstalled:Z

    return v0
.end method

.method public getLastCheckTime()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->lastCheckTime:J

    return-wide v0
.end method

.method public setApp_package(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->app_package:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setInstalled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->isInstalled:Z

    return-void
.end method

.method public setLastCheckTime(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;->lastCheckTime:J

    return-void
.end method
