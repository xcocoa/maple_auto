.class public abstract Lcn/haorui/sdk/core/loader/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/loader/IAdLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/haorui/sdk/core/loader/IAdLoadListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/haorui/sdk/core/loader/IAdLoader;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdLoader"

.field private static adCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private static adTypeCounter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/haorui/sdk/core/ad/AdType;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private static checkSupport:Ljava/lang/String;

.field private static hashParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static queryParams:[Ljava/lang/String;


# instance fields
.field private accept_ad_height:Ljava/lang/Integer;

.field private accept_ad_width:Ljava/lang/Integer;

.field public context:Landroid/content/Context;

.field private current:Lcn/haorui/sdk/core/loader/d;

.field private eCPM:Ljava/lang/String;

.field public loaderListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private loaderManager:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

.field public posId:Ljava/lang/String;

.field public startLoadTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/loader/b;->hashParams:Ljava/util/Map;

    const-string v1, "device_imei"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/loader/b;->adCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/loader/b;->adTypeCounter:Ljava/util/Map;

    invoke-static {}, Lcn/haorui/sdk/core/ad/AdType;->values()[Lcn/haorui/sdk/core/ad/AdType;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    sget-object v3, Lcn/haorui/sdk/core/loader/b;->adTypeCounter:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "app_id"

    const-string v3, "pid"

    const-string v4, "accept_ad_type"

    const-string v5, "sdk_version"

    const-string v6, "sdk_version_code"

    const-string v7, "device_os"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/core/loader/b;->queryParams:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/loader/IAdLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/b;->eCPM:Ljava/lang/String;

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/b;->context:Landroid/content/Context;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/b;->posId:Ljava/lang/String;

    iput-object p3, p0, Lcn/haorui/sdk/core/loader/b;->loaderListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/utils/OriginalResponse;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/loader/b;->onLoadSuccess(Lcn/haorui/sdk/core/utils/OriginalResponse;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/HRAdInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/core/loader/b;->handleDynamicClick(Lcn/haorui/sdk/core/domain/HRAdInfo;)V

    return-void
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/core/loader/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/b;->eCPM:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/core/loader/b;)Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/loader/b;->loaderManager:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    return-object p0
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;)Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/b;->loaderManager:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    return-object p1
.end method

.method private generateParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->accept_ad_width:Ljava/lang/Integer;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/b;->accept_ad_width:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "accept_ad_width"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->accept_ad_height:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/b;->accept_ad_height:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accept_ad_height"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method private handleDynamicClick(Lcn/haorui/sdk/core/domain/HRAdInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getAct_type()I

    move-result v0

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/loader/b;->isSupportTurn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/domain/HRAdInfo;->setAct_type(I)V

    :cond_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;->getPower()I

    move-result v1

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;->getPtime()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPower_index()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcn/haorui/sdk/core/utils/RecordUtil;->isCanDynamicClick:Z

    sput v1, Lcn/haorui/sdk/core/utils/RecordUtil;->dynamicPower:I

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->getPid()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static isSupportTurn()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/loader/b;->checkSupport:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    sput-object v0, Lcn/haorui/sdk/core/loader/b;->checkSupport:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcn/haorui/sdk/core/loader/b;->checkSupport:Ljava/lang/String;

    return-object v0
.end method

.method private loadAd(Lcn/haorui/sdk/core/domain/HRAdInfo;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/domain/HRAdInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/core/loader/b$b;

    invoke-direct {v1, p0, p1, p2}, Lcn/haorui/sdk/core/loader/b$b;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/domain/HRAdInfo;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onLoadSuccess(Lcn/haorui/sdk/core/utils/OriginalResponse;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/core/utils/OriginalResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcn/haorui/sdk/core/utils/GsonUtils;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/OriginalResponse;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/domain/HRAdInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/haorui/sdk/core/domain/HRAdInfo;->setLoadedTime(J)V

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/core/loader/b;->loadAd(Lcn/haorui/sdk/core/domain/HRAdInfo;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/loader/b;->handleNoAd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private wrapParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcn/haorui/sdk/core/loader/b;->hashParams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v6, :cond_0

    :try_start_1
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    invoke-static {v6}, Lcn/haorui/sdk/core/utils/StringUtils;->byte2hex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    const-string v6, "pid"

    :try_start_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v3, "5317f4377245bfb8efdc42c45d71bd43"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v4, "message"

    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonce"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v0, "signature"

    :try_start_4
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v4, "&"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-static {p1}, Lcn/haorui/sdk/core/loader/c;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    :cond_3
    return-object v3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public abstract createAdDelegate(Landroid/content/Context;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
.end method

.method public abstract createDelegate(Lcn/haorui/sdk/core/domain/SdkAdInfo;Lcn/haorui/sdk/core/domain/HRAdInfo;)Lcn/haorui/sdk/core/loader/d;
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->loaderManager:Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/concurrent/ConCurrentManager;->destroy()V

    :cond_0
    return-void
.end method

.method public destroyCurrent()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->current:Lcn/haorui/sdk/core/loader/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/IAdLoader;->destroy()V

    :cond_0
    return-void
.end method

.method public final eCPM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->eCPM:Ljava/lang/String;

    return-object v0
.end method

.method public getAccept_ad_height()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->accept_ad_height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAccept_ad_width()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->accept_ad_width:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAdType()Lcn/haorui/sdk/core/ad/AdType;
    .locals 3

    instance-of v0, p0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->getAdPatternType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->FEED:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->getAdPatternType()I

    move-result v0

    const v1, 0x186a0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->FEED_PRE_RENDER:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_1
    instance-of v0, p0, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerMixAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->getAdPatternType()I

    move-result v0

    const v1, 0x30d40

    if-ne v0, v1, :cond_2

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->FEED_MIX:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_2
    instance-of v0, p0, Lcn/haorui/sdk/core/ad/banner/BannerAdLoader;

    if-eqz v0, :cond_3

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->BANNER:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_3
    instance-of v0, p0, Lcn/haorui/sdk/core/ad/splash/SplashAdLoader;

    if-eqz v0, :cond_4

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->SPLASH:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_4
    instance-of v0, p0, Lcn/haorui/sdk/core/ad/interstitial/InterstitialAdLoader;

    if-eqz v0, :cond_5

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->INTERSTITIAL:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_5
    instance-of v0, p0, Lcn/haorui/sdk/core/ad/paster/PasterAdLoader;

    if-eqz v0, :cond_6

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->PASTER:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_6
    instance-of v0, p0, Lcn/haorui/sdk/core/ad/reward/RewardVideoLoader;

    if-eqz v0, :cond_7

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->REWARD:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_7
    instance-of v0, p0, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    if-eqz v0, :cond_8

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->DRAW:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_8
    instance-of v0, p0, Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;

    if-eqz v0, :cond_9

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->FULL_SCREEN_VIDEO:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->loaderListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    return-object v0
.end method

.method public getPosId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->posId:Ljava/lang/String;

    return-object v0
.end method

.method public handleNoAd(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->loaderListener:Lcn/haorui/sdk/core/loader/IAdLoadListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/core/loader/b$c;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/core/loader/b$c;-><init>(Lcn/haorui/sdk/core/loader/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public loadAd()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/loader/b;->loadAd(Ljava/util/Map;)V

    return-void
.end method

.method public loadAd(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AdType is null\uff01"

    const-string v1, "pid\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/haorui/sdk/core/loader/b;->startLoadTime:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcn/haorui/sdk/core/loader/b;->eCPM:Ljava/lang/String;

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/b;->posId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "AdLoader"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {v3, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/core/loader/b;->handleNoAd(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/b;->getAdType()Lcn/haorui/sdk/core/ad/AdType;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v3, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/loader/b;->handleNoAd(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/b;->posId:Ljava/lang/String;

    sget-object v3, Lcn/haorui/sdk/core/loader/b;->adCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    sget-object v5, Lcn/haorui/sdk/core/loader/b;->adTypeCounter:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcn/haorui/sdk/core/utils/RequestUtil;->wrapParams(Landroid/content/Context;Ljava/lang/String;Lcn/haorui/sdk/core/ad/AdType;JJ)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/haorui/sdk/core/loader/b;->generateParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcn/haorui/sdk/core/loader/b;->wrapParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcn/haorui/sdk/core/loader/b;->queryParams:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/b;->posId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->isTest()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_4

    const-string v0, "https://sdk-demo.1rtb.net/sdk/req_ad"

    goto :goto_1

    :cond_4
    const-string v0, "https://zlsdk.1rtb.net/sdk/req_ad"

    :goto_1
    :try_start_2
    new-instance v4, Lcn/haorui/sdk/core/loader/b$a;

    invoke-direct {v4, p0, p1}, Lcn/haorui/sdk/core/loader/b$a;-><init>(Lcn/haorui/sdk/core/loader/b;Ljava/util/Map;)V

    invoke-static {v0, v3, v2, v1, v4}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncRequestJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcn/haorui/sdk/core/utils/HttpGetJsonCallback;)V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->isTest()Z

    move-result v0

    sget-boolean v1, Lcn/haorui/sdk/core/exception/c;->b:Z

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    instance-of v2, v1, Lcn/haorui/sdk/core/exception/c$a;

    if-nez v2, :cond_6

    new-instance v2, Lcn/haorui/sdk/core/exception/c$a;

    invoke-direct {v2, p1, v0, v1}, Lcn/haorui/sdk/core/exception/c$a;-><init>(Landroid/content/Context;ZLjava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/loader/b;->handleNoAd(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setAdSize(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/b;->accept_ad_width:Ljava/lang/Integer;

    iput-object p2, p0, Lcn/haorui/sdk/core/loader/b;->accept_ad_height:Ljava/lang/Integer;

    return-void
.end method

.method public setCurrent(Lcn/haorui/sdk/core/loader/d;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/b;->current:Lcn/haorui/sdk/core/loader/d;

    return-void
.end method
