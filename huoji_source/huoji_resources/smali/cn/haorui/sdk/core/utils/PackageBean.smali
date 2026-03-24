.class public Lcn/haorui/sdk/core/utils/PackageBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/PackageBean$DClick;,
        Lcn/haorui/sdk/core/utils/PackageBean$AppBean;
    }
.end annotation


# instance fields
.field private app:Lcn/haorui/sdk/core/utils/PackageBean$AppBean;

.field private dclk:Lcn/haorui/sdk/core/utils/PackageBean$DClick;

.field private ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp()Lcn/haorui/sdk/core/utils/PackageBean$AppBean;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackageBean;->app:Lcn/haorui/sdk/core/utils/PackageBean$AppBean;

    return-object v0
.end method

.method public getDclk()Lcn/haorui/sdk/core/utils/PackageBean$DClick;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackageBean;->dclk:Lcn/haorui/sdk/core/utils/PackageBean$DClick;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackageBean;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setApp(Lcn/haorui/sdk/core/utils/PackageBean$AppBean;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackageBean;->app:Lcn/haorui/sdk/core/utils/PackageBean$AppBean;

    return-void
.end method

.method public setDclk(Lcn/haorui/sdk/core/utils/PackageBean$DClick;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackageBean;->dclk:Lcn/haorui/sdk/core/utils/PackageBean$DClick;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackageBean;->ver:Ljava/lang/String;

    return-void
.end method
