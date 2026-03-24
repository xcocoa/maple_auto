.class public Lcn/haorui/sdk/platform/PlatformFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ploatforms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcn/haorui/sdk/platform/hr/HRSdkPlatform;

    invoke-direct {v1}, Lcn/haorui/sdk/platform/hr/HRSdkPlatform;-><init>()V

    const-string v2, "AD_HR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcn/haorui/sdk/platform/PlatformFactory;->ploatforms:Ljava/util/Set;

    return-object v0
.end method
