.class public final Lcom/tramini/plugin/a/h/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/tramini/plugin/a/h/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/h/b;
    .locals 1

    sget-object v0, Lcom/tramini/plugin/a/h/b;->a:Lcom/tramini/plugin/a/h/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tramini/plugin/a/h/b;

    invoke-direct {v0}, Lcom/tramini/plugin/a/h/b;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/h/b;->a:Lcom/tramini/plugin/a/h/b;

    :cond_0
    sget-object v0, Lcom/tramini/plugin/a/h/b;->a:Lcom/tramini/plugin/a/h/b;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/tramini/plugin/b/b;)V
    .locals 7

    const-string v0, "S_AJS_ATT"

    const-string v1, "tramini"

    :try_start_0
    new-instance v2, Lcom/tramini/plugin/a/d/b;

    invoke-direct {v2}, Lcom/tramini/plugin/a/d/b;-><init>()V

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tramini/plugin/a/d/b;->c:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, v2, Lcom/tramini/plugin/a/d/b;->d:I

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "adgroup"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "adid"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->adid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "campaign"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "clickLabel"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "creative"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "network"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "trackerName"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "trackerToken"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "attr"

    invoke-virtual {v3}, Lcom/adjust/sdk/AdjustAttribution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tramini/plugin/a/d/b;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tramini/plugin/a/d/b;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v3

    const-string v5, ""

    invoke-static {v3, v1, v0, v5}, Lcom/tramini/plugin/a/h/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v0, v4}, Lcom/tramini/plugin/a/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tramini/plugin/a/g/a;->a()Lcom/tramini/plugin/a/g/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tramini/plugin/b/b;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tramini/plugin/a/h/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/tramini/plugin/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/tramini/plugin/b/b;)V
    .locals 7

    const-string v0, "S_ASF_ATT"

    const-string v1, "tramini"

    const-string v2, ""

    :try_start_0
    new-instance v3, Lcom/tramini/plugin/a/d/b;

    invoke-direct {v3}, Lcom/tramini/plugin/a/d/b;-><init>()V

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/d/b;->c:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/tramini/plugin/a/d/b;->d:I

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "appsflyer-data"

    const-string v6, "attributionId"

    invoke-static {v4, v5, v6, v2}, Lcom/tramini/plugin/a/h/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-object v4, v3, Lcom/tramini/plugin/a/d/b;->e:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tramini/plugin/a/d/b;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v0, v2}, Lcom/tramini/plugin/a/h/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0, v4}, Lcom/tramini/plugin/a/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tramini/plugin/a/g/a;->a()Lcom/tramini/plugin/a/g/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tramini/plugin/b/b;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tramini/plugin/a/h/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, v1, v3}, Lcom/tramini/plugin/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Lcom/tramini/plugin/b/b;)V
    .locals 7

    const-string v0, "S_ASF_ATT"

    const-string v1, "tramini"

    const-string v2, ""

    :try_start_0
    new-instance v3, Lcom/tramini/plugin/a/d/b;

    invoke-direct {v3}, Lcom/tramini/plugin/a/d/b;-><init>()V

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getSdkVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tramini/plugin/a/d/b;->c:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/tramini/plugin/a/d/b;->d:I

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "appsflyer-data"

    const-string v6, "attributionId"

    invoke-static {v4, v5, v6, v2}, Lcom/tramini/plugin/a/h/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-object v4, v3, Lcom/tramini/plugin/a/d/b;->e:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/tramini/plugin/a/d/b;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v0, v2}, Lcom/tramini/plugin/a/h/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0, v4}, Lcom/tramini/plugin/a/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tramini/plugin/a/g/a;->a()Lcom/tramini/plugin/a/g/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tramini/plugin/b/b;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tramini/plugin/a/h/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, v1, v3}, Lcom/tramini/plugin/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private static synthetic d(Ljava/lang/String;Lcom/tramini/plugin/b/b;)V
    .locals 7

    const-string v0, "S_AJS_ATT"

    const-string v1, "tramini"

    :try_start_0
    new-instance v2, Lcom/tramini/plugin/a/d/b;

    invoke-direct {v2}, Lcom/tramini/plugin/a/d/b;-><init>()V

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tramini/plugin/a/d/b;->c:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, v2, Lcom/tramini/plugin/a/d/b;->d:I

    invoke-static {}, Lcom/adjust/sdk/Adjust;->getAttribution()Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "adgroup"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->adgroup:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "adid"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->adid:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "campaign"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->campaign:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "clickLabel"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->clickLabel:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "creative"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->creative:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "network"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->network:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "trackerName"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "trackerToken"

    iget-object v6, v3, Lcom/adjust/sdk/AdjustAttribution;->trackerToken:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "attr"

    invoke-virtual {v3}, Lcom/adjust/sdk/AdjustAttribution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tramini/plugin/a/d/b;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tramini/plugin/a/d/b;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v3

    const-string v5, ""

    invoke-static {v3, v1, v0, v5}, Lcom/tramini/plugin/a/h/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/tramini/plugin/a/b/c;->a()Lcom/tramini/plugin/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tramini/plugin/a/b/c;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v0, v4}, Lcom/tramini/plugin/a/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tramini/plugin/a/g/a;->a()Lcom/tramini/plugin/a/g/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tramini/plugin/b/b;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/tramini/plugin/a/h/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/tramini/plugin/a/g/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/tramini/plugin/b/b;)V
    .locals 2

    invoke-static {}, Lcom/tramini/plugin/a/h/b/a;->a()Lcom/tramini/plugin/a/h/b/a;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/h/b$1;

    invoke-direct {v1, p0, p1}, Lcom/tramini/plugin/a/h/b$1;-><init>(Lcom/tramini/plugin/a/h/b;Lcom/tramini/plugin/b/b;)V

    invoke-virtual {v0, v1}, Lcom/tramini/plugin/a/h/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
