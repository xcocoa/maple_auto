.class public Lcn/haorui/sdk/platform/ADPlatformHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ADPlatformHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPlatformPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/e;->config()Lcn/haorui/sdk/core/d;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/d;->getNeededPermissions()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public static checkTypeSupport(Lcn/haorui/sdk/core/loader/b;Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Lcn/haorui/sdk/core/a;->a(Ljava/lang/String;)Lcn/haorui/sdk/core/e;

    move-result-object p1

    invoke-interface {p1}, Lcn/haorui/sdk/core/e;->support()[Lcn/haorui/sdk/core/ad/AdType;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/b;->getAdType()Lcn/haorui/sdk/core/ad/AdType;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static filterValidSdk(Landroid/content/Context;[Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/loader/b;)[Lcn/haorui/sdk/core/domain/SdkAdInfo;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-static {p0, v3, p2}, Lcn/haorui/sdk/platform/ADPlatformHelper;->isSdkValid(Landroid/content/Context;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/loader/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v1, [Lcn/haorui/sdk/core/domain/SdkAdInfo;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcn/haorui/sdk/core/domain/SdkAdInfo;

    return-object p0
.end method

.method private static isSdkValid(Landroid/content/Context;Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/loader/b;)Z
    .locals 4

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/SdkAdInfo;->getSdk()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ADPlatformHelper"

    if-eqz v0, :cond_0

    const-string p0, "sdk invalid, platform is empty"

    :goto_0
    invoke-static {v2, p0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    sget-object v0, Lcn/haorui/sdk/platform/PlatformFactory;->ploatforms:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0, p1}, Lcn/haorui/sdk/platform/ADPlatformHelper;->checkPlatformPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2, p1}, Lcn/haorui/sdk/platform/ADPlatformHelper;->checkTypeSupport(Lcn/haorui/sdk/core/loader/b;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sdk invalid ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), check lib import"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
