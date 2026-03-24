.class public Lcn/haorui/sdk/core/loader/cache/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/haorui/sdk/core/domain/SdkAdInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "__ACCEPT_ID__"

    const-string v1, "__STRATEGY_DEALID__"

    const-string v2, "__ACCEPT_APPID__"

    const-string v3, "__ACCEPT_PID__"

    const-string v4, "__SDK__"

    const-string v5, "__GROUP_ID__"

    const-string v6, "__P__"

    const-string v7, "__TIMEOUT__"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getAccept_id()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getStrategy_dealid()Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getApp_id()Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPid()Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v3

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object v5

    :goto_4
    aput-object v5, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getGroup_id()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getGroup_id()Ljava/lang/String;

    move-result-object v3

    :goto_5
    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getPrice()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x6

    aput-object p1, v1, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x7

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a([Ljava/lang/String;Ljava/lang/String;Lcn/haorui/sdk/core/domain/HRAdInfo;)V
    .locals 4

    invoke-virtual {p3}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getReq_id()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, p2, v0}, Lcn/haorui/sdk/core/utils/MacroUtil;->replaceUUIDMacros(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->setClickUrl([Ljava/lang/String;)V

    :cond_2
    return-void
.end method
