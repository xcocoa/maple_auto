.class public Lcom/octopus/ad/internal/utilities/W3CEvent;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final W3C_DAILY:Ljava/lang/String; = "daily"

.field public static final W3C_MONTHLY:Ljava/lang/String; = "monthly"

.field public static final W3C_WEEKLY:Ljava/lang/String; = "weekly"

.field public static final W3C_YEARLY:Ljava/lang/String; = "yearly"

.field private static format1:Ljava/text/SimpleDateFormat;

.field private static format2:Ljava/text/SimpleDateFormat;

.field public static useMIME:Z


# instance fields
.field private description:Ljava/lang/String;

.field private end:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private recurrence:Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

.field private reminder:Ljava/lang/String;

.field private start:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private transparency:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/octopus/ad/internal/utilities/W3CEvent;->format1:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/octopus/ad/internal/utilities/W3CEvent;->format2:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJSON(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/W3CEvent;
    .locals 22

    const-string v0, "monthsInYear"

    const-string v1, "weeksInMonth"

    const-string v2, "daysInYear"

    const-string v3, "daysInMonth"

    const-string v4, "daysInWeek"

    const-string v5, "exceptionDates"

    const-string v6, "expires"

    const-string v7, "interval"

    const-string v8, "frequency"

    const-string v9, "recurrence"

    const-string v10, "reminder"

    const-string v11, "freebusy"

    const-string v12, "status"

    const-string v13, "summary"

    const-string v14, "location"

    const-string v15, "description"

    move-object/from16 v16, v0

    const-string v0, "id"

    move-object/from16 v17, v1

    const-string v1, "end"

    move-object/from16 v18, v2

    const-string v2, "start"

    move-object/from16 v19, v3

    new-instance v3, Lcom/octopus/ad/internal/utilities/W3CEvent;

    invoke-direct {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;-><init>()V

    move-object/from16 v20, v4

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v21, v5

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setDescription(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setLocation(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setSummary(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setStart(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setStart(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setEnd(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setStatus(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setTransparency(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setReminder(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    invoke-direct {v0}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;-><init>()V

    invoke-virtual {v3, v0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->setRecurrence(Lcom/octopus/ad/internal/utilities/W3CRepeatRule;)V

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->setFrequency(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->setInterval(I)V

    :cond_b
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->setExpires(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_d

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->setExceptionDates([Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_d

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getExceptionDates()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_d
    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    new-array v6, v2, [I

    invoke-virtual {v5, v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->setDaysInWeek([I)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_e

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInWeek()[I

    move-result-object v6

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_e
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    new-array v6, v2, [I

    invoke-virtual {v5, v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->setDaysInMonth([I)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_f

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInMonth()[I

    move-result-object v6

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_f
    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    new-array v6, v2, [I

    invoke-virtual {v5, v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->setDaysInYear([I)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_10

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInYear()[I

    move-result-object v6

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_10
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    new-array v6, v2, [I

    invoke-virtual {v5, v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->setWeeksInMonth([I)V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_11

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getWeeksInMonth()[I

    move-result-object v6

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_11
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v2

    new-array v5, v1, [I

    invoke-virtual {v2, v5}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->setMonthsInYear([I)V

    :goto_5
    if-ge v4, v1, :cond_12

    invoke-virtual {v3}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getMonthsInYear()[I

    move-result-object v2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v2, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catch_0
    :cond_12
    return-object v3
.end method

.method private millisFromDateString(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    sget-object v0, Lcom/octopus/ad/internal/utilities/W3CEvent;->format1:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/octopus/ad/internal/utilities/W3CEvent;->format2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    :try_start_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-wide v0

    :catch_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInsertIntent()Landroid/content/Intent;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "InlinedApi"
        }
    .end annotation

    sget-boolean v0, Lcom/octopus/ad/internal/utilities/W3CEvent;->useMIME:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "android.intent.action.EDIT"

    new-instance v4, Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    :goto_1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "title"

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "eventLocation"

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "description"

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getStart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getStart()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/octopus/ad/internal/utilities/W3CEvent;->millisFromDateString(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_5

    const-string v4, "beginTime"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getEnd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getEnd()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/octopus/ad/internal/utilities/W3CEvent;->millisFromDateString(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_6

    const-string v4, "endTime"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getStatus()Ljava/lang/String;

    move-result-object v4

    const-string v7, "eventStatus"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getTransparency()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getTransparency()Ljava/lang/String;

    move-result-object v4

    const-string v7, "opaque"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v7, "visible"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getReminder()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getReminder()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/octopus/ad/internal/utilities/W3CEvent;->millisFromDateString(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    const-string v4, "minutes"

    cmp-long v11, v7, v5

    if-gez v11, :cond_9

    if-eqz v0, :cond_a

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    :goto_2
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getStart()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getStart()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/octopus/ad/internal/utilities/W3CEvent;->millisFromDateString(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v13, v11, v5

    if-lez v13, :cond_a

    sub-long/2addr v11, v7

    div-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    goto :goto_2

    :cond_a
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    if-eqz v6, :cond_1d

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getFrequency()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "weekly"

    const-string v9, "yearly"

    const-string v10, "monthly"

    if-nez v7, :cond_e

    const-string v7, "daily"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v5, "FREQ=DAILY;"

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v5, "FREQ=WEEKLY;"

    goto :goto_4

    :cond_c
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v5, "FREQ=MONTHLY;"

    goto :goto_4

    :cond_d
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v5, "FREQ=YEARLY;"

    goto :goto_4

    :goto_5
    move-object v5, v6

    :cond_e
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getInterval()I

    move-result v6

    const-string v7, ";"

    if-lez v6, :cond_f

    const-string v6, "INTERVAL="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getInterval()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v8, 0x3b

    if-eqz v6, :cond_11

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInWeek()[I

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInWeek()[I

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_11

    const-string v6, "BYDAY="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInWeek()[I

    move-result-object v6

    array-length v11, v6

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_10

    aget v13, v6, v12

    packed-switch v13, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    const-string v13, "SA,"

    goto :goto_7

    :pswitch_1
    const-string v13, "FR,"

    goto :goto_7

    :pswitch_2
    const-string v13, "TH,"

    goto :goto_7

    :pswitch_3
    const-string v13, "WE,"

    goto :goto_7

    :pswitch_4
    const-string v13, "TU,"

    goto :goto_7

    :pswitch_5
    const-string v13, "MO,"

    goto :goto_7

    :pswitch_6
    const-string v13, "SU,"

    :goto_7
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_11
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v11, ","

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInMonth()[I

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInMonth()[I

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_13

    const-string v6, "BYMONTHDAY="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInMonth()[I

    move-result-object v6

    array-length v12, v6

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_12

    aget v14, v6, v13

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_13
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInYear()[I

    move-result-object v6

    if-eqz v6, :cond_15

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInYear()[I

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_15

    const-string v6, "BYYEARDAY="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getDaysInYear()[I

    move-result-object v6

    array-length v12, v6

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v12, :cond_14

    aget v14, v6, v13

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_14
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_15
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getMonthsInYear()[I

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getMonthsInYear()[I

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_17

    const-string v6, "BYMONTH="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v6

    invoke-virtual {v6}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getMonthsInYear()[I

    move-result-object v6

    array-length v9, v6

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v9, :cond_16

    aget v13, v6, v12

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_17
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getWeeksInMonth()[I

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getWeeksInMonth()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_19

    const-string v5, "BYWEEKNO="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getWeeksInMonth()[I

    move-result-object v5

    array-length v6, v5

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v6, :cond_18

    aget v10, v5, v9

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_19
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getExpires()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/octopus/ad/internal/utilities/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "UNTIL="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getExpires()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getExceptionDates()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getExceptionDates()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_1c

    const-string v5, "EXDATE="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/W3CEvent;->getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    move-result-object v5

    invoke-virtual {v5}, Lcom/octopus/ad/internal/utilities/W3CRepeatRule;->getExceptionDates()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_d
    if-ge v1, v6, :cond_1b

    aget-object v7, v5, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v4, v1, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_1c
    const-string v1, "rrule"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Lcom/octopus/ad/internal/utilities/W3CRepeatRule;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->recurrence:Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    return-object v0
.end method

.method public getReminder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->reminder:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->transparency:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->description:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->end:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->location:Ljava/lang/String;

    return-void
.end method

.method public setRecurrence(Lcom/octopus/ad/internal/utilities/W3CRepeatRule;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->recurrence:Lcom/octopus/ad/internal/utilities/W3CRepeatRule;

    return-void
.end method

.method public setReminder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->reminder:Ljava/lang/String;

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->start:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->status:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTransparency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/W3CEvent;->transparency:Ljava/lang/String;

    return-void
.end method
