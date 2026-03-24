.class public Lcn/haorui/sdk/core/utils/DownloadDialogBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private app_feature:Ljava/lang/String;

.field private app_intor_url:Ljava/lang/String;

.field private app_intro:Ljava/lang/String;

.field private app_name:Ljava/lang/String;

.field private app_permission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation
.end field

.field private app_permission_url:Ljava/lang/String;

.field private app_privacy:Ljava/lang/String;

.field private app_private_agreement:Ljava/lang/String;

.field private app_size:Ljava/lang/String;

.field private app_ver:Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private payment_types:Ljava/lang/String;

.field private score:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_feature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_feature:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_intor_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_intor_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_intro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_intro:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_permission()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_permission:Ljava/util/List;

    return-object v0
.end method

.method public getApp_permission_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_permission_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_privacy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_privacy:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_private_agreement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_private_agreement:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_size()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_size:Ljava/lang/String;

    return-object v0
.end method

.method public getApp_ver()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->developer:Ljava/lang/String;

    return-object v0
.end method

.method public getPayment_types()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->payment_types:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->score:F

    return v0
.end method

.method public setApp_feature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_feature:Ljava/lang/String;

    return-void
.end method

.method public setApp_intor_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_intor_url:Ljava/lang/String;

    return-void
.end method

.method public setApp_intro(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_intro:Ljava/lang/String;

    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_name:Ljava/lang/String;

    return-void
.end method

.method public setApp_permission(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_permission:Ljava/util/List;

    return-void
.end method

.method public setApp_permission_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_permission_url:Ljava/lang/String;

    return-void
.end method

.method public setApp_privacy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_privacy:Ljava/lang/String;

    return-void
.end method

.method public setApp_private_agreement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_private_agreement:Ljava/lang/String;

    return-void
.end method

.method public setApp_size(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_size:Ljava/lang/String;

    return-void
.end method

.method public setApp_ver(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->app_ver:Ljava/lang/String;

    return-void
.end method

.method public setDeveloper(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->developer:Ljava/lang/String;

    return-void
.end method

.method public setPayment_types(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->payment_types:Ljava/lang/String;

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/core/utils/DownloadDialogBean;->score:F

    return-void
.end method
