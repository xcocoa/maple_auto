.class public Lcn/haorui/sdk/core/utils/AderUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsOperationContent(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userAdvertiserId()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->userAdvertiserId()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
