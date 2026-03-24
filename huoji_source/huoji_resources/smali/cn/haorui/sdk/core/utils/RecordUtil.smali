.class public Lcn/haorui/sdk/core/utils/RecordUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;
    }
.end annotation


# static fields
.field private static final LAST_CLICK_TIME:Ljava/lang/String; = "last_click_time"

.field public static final LAST_DCLK_RSP_TIME:I = 0x6

.field public static final LAST_DYNAMIC_TIME:Ljava/lang/String; = "last_dynamic_time"

.field private static final RECORD_DATA:Ljava/lang/String; = "record_data"

.field public static final TYPE_CLICK:I = 0x4

.field public static final TYPE_DYNAMIC_CLICK:I = 0x5

.field public static final TYPE_EXPOSURE:I = 0x3

.field public static final TYPE_LAST_CLICK:I = 0x8

.field public static final TYPE_LAST_DYNAMIC_CLICK:I = 0x7

.field public static final TYPE_LOAD:I = 0x1

.field public static final TYPE_LOAD_SUCC:I = 0x2

.field private static dateRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/utils/RecordBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public static dynamicPower:I

.field public static isCanDynamicClick:Z

.field public static lastDynamicClickTime:J

.field private static final mGson:Lcom/google/gson/Gson;

.field public static recordClickMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/utils/RecordUtil;->recordClickMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/haorui/sdk/core/utils/RecordUtil;->isCanDynamicClick:Z

    const/4 v0, 0x1

    sput v0, Lcn/haorui/sdk/core/utils/RecordUtil;->dynamicPower:I

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcn/haorui/sdk/core/utils/RecordUtil;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateFormat(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT+8:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllClick()Ljava/lang/String;
    .locals 19

    invoke-static {}, Lcn/haorui/sdk/core/utils/RecordUtil;->getRecordData()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_dynamic_time"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "last_click_time"

    invoke-interface {v5, v6, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-wide v13, v3

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/haorui/sdk/core/utils/RecordBean;

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcn/haorui/sdk/core/utils/RecordBean;->getLoadNum()I

    move-result v16

    add-int v0, v0, v16

    invoke-virtual {v15}, Lcn/haorui/sdk/core/utils/RecordBean;->getLoadSucc()I

    move-result v16

    add-int v9, v9, v16

    invoke-virtual {v15}, Lcn/haorui/sdk/core/utils/RecordBean;->getExposureNum()I

    move-result v16

    add-int v10, v10, v16

    invoke-virtual {v15}, Lcn/haorui/sdk/core/utils/RecordBean;->getClickNum()I

    move-result v16

    add-int v11, v11, v16

    invoke-virtual {v15}, Lcn/haorui/sdk/core/utils/RecordBean;->getDynamicClickNum()I

    move-result v16

    add-int v12, v12, v16

    invoke-virtual {v15}, Lcn/haorui/sdk/core/utils/RecordBean;->getLastDynamicLoadedTime()J

    move-result-wide v16

    cmp-long v18, v16, v13

    if-lez v18, :cond_0

    invoke-virtual {v15}, Lcn/haorui/sdk/core/utils/RecordBean;->getLastDynamicLoadedTime()J

    move-result-wide v13

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v0

    goto :goto_1

    :cond_2
    move-wide v13, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-nez v7, :cond_4

    if-nez v9, :cond_4

    if-nez v10, :cond_4

    if-nez v11, :cond_4

    if-nez v12, :cond_4

    cmp-long v0, v13, v3

    if-nez v0, :cond_4

    cmp-long v0, v1, v3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordData()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/utils/RecordBean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "record_data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/haorui/sdk/core/utils/RecordUtil;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcn/haorui/sdk/core/utils/RecordMapBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/utils/RecordMapBean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/RecordMapBean;->getDateRecordMap()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/RecordUtil;->dateFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSingleClick(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcn/haorui/sdk/core/utils/RecordUtil;->getRecordData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/haorui/sdk/core/utils/RecordBean;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/RecordBean;->getLoadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/RecordBean;->getLoadSucc()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/RecordBean;->getExposureNum()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/RecordBean;->getClickNum()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/RecordBean;->getDynamicClickNum()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/RecordBean;->getLastDynamicLoadedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/RecordBean;->getLastDynamicClickTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/core/utils/RecordBean;->getLastClickTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static saveAction(Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcn/haorui/sdk/core/utils/RecordUtil;->getRecordData()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/utils/RecordBean;

    if-nez v1, :cond_1

    new-instance v1, Lcn/haorui/sdk/core/utils/RecordBean;

    invoke-direct {v1}, Lcn/haorui/sdk/core/utils/RecordBean;-><init>()V

    :cond_1
    invoke-virtual {v1, p0}, Lcn/haorui/sdk/core/utils/RecordBean;->setPid(Ljava/lang/String;)V

    const-string v2, "last_click_time"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcn/haorui/sdk/core/utils/RecordBean;->setLastClickTime(J)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcn/haorui/sdk/core/utils/RecordBean;->setLastDynamicClickTime(J)V

    invoke-virtual {v1, v3, v4}, Lcn/haorui/sdk/core/utils/RecordBean;->setLastClickTime(J)V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v5, "last_dynamic_time"

    invoke-interface {p1, v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/haorui/sdk/core/utils/RecordBean;->setLastDynamicLoadedTime(J)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1}, Lcn/haorui/sdk/core/utils/RecordBean;->getDynamicClickNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcn/haorui/sdk/core/utils/RecordBean;->setDynamicClickNum(I)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {v1}, Lcn/haorui/sdk/core/utils/RecordBean;->getClickNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcn/haorui/sdk/core/utils/RecordBean;->setClickNum(I)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {v1}, Lcn/haorui/sdk/core/utils/RecordBean;->getExposureNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcn/haorui/sdk/core/utils/RecordBean;->setExposureNum(I)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {v1}, Lcn/haorui/sdk/core/utils/RecordBean;->getLoadSucc()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcn/haorui/sdk/core/utils/RecordBean;->setLoadSucc(I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {v1}, Lcn/haorui/sdk/core/utils/RecordBean;->getLoadNum()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcn/haorui/sdk/core/utils/RecordBean;->setLoadNum(I)V

    :goto_1
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveRecordData(Ljava/util/HashMap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saveRecordData(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/haorui/sdk/core/utils/RecordBean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->dateFormat(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/haorui/sdk/core/utils/RecordUtil;->dateRecordMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcn/haorui/sdk/core/utils/RecordUtil;->dateRecordMap:Ljava/util/HashMap;

    :cond_0
    sget-object v1, Lcn/haorui/sdk/core/utils/RecordUtil;->dateRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcn/haorui/sdk/core/utils/RecordMapBean;

    invoke-direct {p0}, Lcn/haorui/sdk/core/utils/RecordMapBean;-><init>()V

    sget-object v0, Lcn/haorui/sdk/core/utils/RecordUtil;->dateRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/utils/RecordMapBean;->setDateRecordMap(Ljava/util/HashMap;)V

    sget-object v0, Lcn/haorui/sdk/core/utils/RecordUtil;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "record_data"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
