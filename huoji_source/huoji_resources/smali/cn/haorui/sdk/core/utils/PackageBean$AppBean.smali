.class public Lcn/haorui/sdk/core/utils/PackageBean$AppBean;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/utils/PackageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;
    }
.end annotation


# instance fields
.field private others:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;"
        }
    .end annotation
.end field

.field private required:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;"
        }
    .end annotation
.end field

.field private ttl:Ljava/lang/Integer;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOthers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->others:Ljava/util/List;

    return-object v0
.end method

.method public getRequired()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->required:Ljava/util/List;

    return-object v0
.end method

.method public getTtl()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->ttl:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setOthers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->others:Ljava/util/List;

    return-void
.end method

.method public setRequired(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->required:Ljava/util/List;

    return-void
.end method

.method public setTtl(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->ttl:Ljava/lang/Integer;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/PackageBean$AppBean;->url:Ljava/lang/String;

    return-void
.end method
