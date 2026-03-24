.class public Lmobi/oneway/export/f/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:Lmobi/oneway/export/plugin/BaseAd;

.field private c:Ljava/lang/Class;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/ClassLoader;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lmobi/oneway/export/f/a/a;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/f/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmobi/oneway/export/f/a;->d:J

    invoke-virtual {p1}, Lmobi/oneway/export/f/g;->a()I

    move-result v0

    iput v0, p0, Lmobi/oneway/export/f/a;->a:I

    invoke-virtual {p1}, Lmobi/oneway/export/f/g;->b()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/a;->c:Ljava/lang/Class;

    invoke-virtual {p1}, Lmobi/oneway/export/f/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lmobi/oneway/export/f/g;->c()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/f/a;->g:Ljava/lang/ClassLoader;

    invoke-virtual {p1}, Lmobi/oneway/export/f/g;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/oneway/export/f/a;->e:J

    invoke-virtual {p1}, Lmobi/oneway/export/f/g;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/oneway/export/f/a;->j:Ljava/lang/String;

    iput-object p3, p0, Lmobi/oneway/export/f/a;->h:Ljava/lang/String;

    iput-object p2, p0, Lmobi/oneway/export/f/a;->i:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p2, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    :goto_1
    iget-object p1, p0, Lmobi/oneway/export/f/a;->j:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lmobi/oneway/export/f/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lmobi/oneway/export/g/m;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmobi/oneway/export/f/a;->a(Z)V

    return-void
.end method

.method private a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;
    .locals 1

    sget-object v0, Lmobi/oneway/export/f/a$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p1, Lmobi/oneway/export/f/a/h;

    invoke-direct {p1, p0}, Lmobi/oneway/export/f/a/h;-><init>(Lmobi/oneway/export/f/a;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lmobi/oneway/export/f/a/c;

    invoke-direct {p1, p0}, Lmobi/oneway/export/f/a/c;-><init>(Lmobi/oneway/export/f/a;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lmobi/oneway/export/f/a/d;

    invoke-direct {p1, p0}, Lmobi/oneway/export/f/a/d;-><init>(Lmobi/oneway/export/f/a;)V

    goto :goto_0

    :pswitch_3
    new-instance p1, Lmobi/oneway/export/f/a/e;

    invoke-direct {p1, p0}, Lmobi/oneway/export/f/a/e;-><init>(Lmobi/oneway/export/f/a;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lmobi/oneway/export/f/a/f;

    invoke-direct {p1, p0}, Lmobi/oneway/export/f/a/f;-><init>(Lmobi/oneway/export/f/a;)V

    goto :goto_0

    :pswitch_5
    new-instance p1, Lmobi/oneway/export/f/a/g;

    invoke-direct {p1, p0}, Lmobi/oneway/export/f/a/g;-><init>(Lmobi/oneway/export/f/a;)V

    :goto_0
    iput-object p1, p0, Lmobi/oneway/export/f/a;->l:Lmobi/oneway/export/f/a/a;

    :goto_1
    iget-object p1, p0, Lmobi/oneway/export/f/a;->l:Lmobi/oneway/export/f/a/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lmobi/oneway/export/f/a/a;->a(Lmobi/oneway/export/b/b/d;)V

    :cond_0
    iget-object p1, p0, Lmobi/oneway/export/f/a;->l:Lmobi/oneway/export/f/a/a;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectMethod:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {p1}, Lmobi/oneway/export/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lmobi/oneway/export/f/a;->c:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/util/Map;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/oneway/export/plugin/BaseAd;

    iput-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-direct {p0}, Lmobi/oneway/export/f/a;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/oneway/export/plugin/BaseAd;->setAdConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, p1}, Lmobi/oneway/export/f/a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private h()Z
    .locals 4

    invoke-static {}, Lmobi/oneway/export/b/a;->a()Lmobi/oneway/export/b/a;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/f/a;->i:Ljava/lang/String;

    iget-object v2, p0, Lmobi/oneway/export/f/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/oneway/export/f/a;->l:Lmobi/oneway/export/f/a/a;

    if-eqz v0, :cond_0

    sget-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    const-string v2, " request or show count is over limit"

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/a/a;->b(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {}, Lmobi/oneway/export/b/a;->a()Lmobi/oneway/export/b/a;

    move-result-object v0

    sget-object v1, Lmobi/oneway/export/b/a$a;->a:Lmobi/oneway/export/b/a$a;

    iget-object v2, p0, Lmobi/oneway/export/f/a;->i:Ljava/lang/String;

    iget-object v3, p0, Lmobi/oneway/export/f/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lmobi/oneway/export/b/a;->a(Lmobi/oneway/export/b/a$a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private i()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cacheAd"

    invoke-static {}, Lmobi/oneway/export/b/a;->a()Lmobi/oneway/export/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/oneway/export/b/a;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "placements"

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {}, Lmobi/oneway/export/f/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/f/a;->a:I

    return v0
.end method

.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;Lmobi/oneway/export/b/b/i;J)V
    .locals 7

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p3}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lmobi/oneway/export/f/a/h;

    invoke-direct {p0}, Lmobi/oneway/export/f/a;->h()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v2, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lmobi/oneway/export/plugin/BaseAd;->showSplashAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lmobi/oneway/export/b/b/e;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->interactive:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p2}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p2

    check-cast p2, Lmobi/oneway/export/f/a/d;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lmobi/oneway/export/plugin/BaseAd;->initInteractiveAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lmobi/oneway/export/b/b/f;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p2}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p2

    check-cast p2, Lmobi/oneway/export/f/a/f;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lmobi/oneway/export/plugin/BaseAd;->initInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lmobi/oneway/export/b/b/g;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->interstitialimage:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p2}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p2

    check-cast p2, Lmobi/oneway/export/f/a/e;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lmobi/oneway/export/plugin/BaseAd;->initInterstitialImageAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lmobi/oneway/export/b/b/h;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->rewarded:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p2}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p2

    check-cast p2, Lmobi/oneway/export/f/a/g;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lmobi/oneway/export/plugin/BaseAd;->initRewardAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lmobi/oneway/export/b/b/c;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p2}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p2

    check-cast p2, Lmobi/oneway/export/f/a/c;

    invoke-direct {p0}, Lmobi/oneway/export/f/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lmobi/oneway/export/plugin/BaseAd;->loadFeedAd(Landroid/content/Context;Ljava/lang/String;Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V

    return-void
.end method

.method public a(Lmobi/oneway/export/b/b/e;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->interactive:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p1}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p1

    check-cast p1, Lmobi/oneway/export/f/a/d;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmobi/oneway/export/plugin/BaseAd;->setInteractiveAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V

    return-void
.end method

.method public a(Lmobi/oneway/export/b/b/f;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p1}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p1

    check-cast p1, Lmobi/oneway/export/f/a/f;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmobi/oneway/export/plugin/BaseAd;->setInterstitialAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V

    return-void
.end method

.method public a(Lmobi/oneway/export/b/b/g;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->interstitialimage:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p1}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p1

    check-cast p1, Lmobi/oneway/export/f/a/e;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmobi/oneway/export/plugin/BaseAd;->setInterstitialImageAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V

    return-void
.end method

.method public a(Lmobi/oneway/export/b/b/h;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/enums/AdType;->rewarded:Lmobi/oneway/export/enums/AdType;

    invoke-direct {p0, v0, p1}, Lmobi/oneway/export/f/a;->a(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/b/b/b;)Lmobi/oneway/export/f/a/a;

    move-result-object p1

    check-cast p1, Lmobi/oneway/export/f/a/g;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lmobi/oneway/export/plugin/BaseAd;->setRewardAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V

    return-void
.end method

.method public a(Lmobi/oneway/export/enums/AdType;)V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lmobi/oneway/export/f/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lmobi/oneway/export/f/a$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->loadInteractiveAd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->loadInterstitialImageAd(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->loadInterstitialAd(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->loadRewardAd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lmobi/oneway/export/enums/AdType;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lmobi/oneway/export/f/a$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p3}, Lmobi/oneway/export/plugin/BaseAd;->showInteractiveAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p3}, Lmobi/oneway/export/plugin/BaseAd;->showInterstitialImageAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p3}, Lmobi/oneway/export/plugin/BaseAd;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, p3}, Lmobi/oneway/export/plugin/BaseAd;->showRewardAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lmobi/oneway/export/plugin/BaseAd;->setDebugMode(Z)V

    return-void
.end method

.method public b()J
    .locals 5

    iget-wide v0, p0, Lmobi/oneway/export/f/a;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmobi/oneway/export/plugin/BaseAd;->getCrc()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b(Lmobi/oneway/export/enums/AdType;)Z
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lmobi/oneway/export/f/a$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->isInteractiveAdReady(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->isInterstitialImageAdReady(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->isInterstitialAdReady(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    iget-object p1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    iget-object v0, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->isRewardAdReady(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lmobi/oneway/export/f/a;->e:J

    return-wide v0
.end method

.method public c(Lmobi/oneway/export/enums/AdType;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmobi/oneway/export/f/a;->k:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lmobi/oneway/export/plugin/BaseAd;->destoryAd(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V

    iget-object p1, p0, Lmobi/oneway/export/f/a;->l:Lmobi/oneway/export/f/a/a;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/oneway/export/f/a/a;->a(Lmobi/oneway/export/b/b/d;)V

    iput-object v0, p0, Lmobi/oneway/export/f/a;->l:Lmobi/oneway/export/f/a/a;

    :cond_1
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Lmobi/oneway/export/enums/AdType;)Z
    .locals 3

    sget-object v0, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    sget-object v2, Lmobi/oneway/export/f/a$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    const-string p1, "hasFeedAd"

    goto :goto_0

    :cond_2
    const-string p1, "hasInteractiveAd"

    goto :goto_0

    :cond_3
    const-string p1, "hasInterstitialImageAd"

    goto :goto_0

    :cond_4
    const-string p1, "hasInterstitialAd"

    goto :goto_0

    :cond_5
    const-string p1, "hasRewardAd"

    :goto_0
    :try_start_0
    iget-object v2, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lmobi/oneway/export/f/a;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, p1}, Lmobi/oneway/export/f/a;->a(Ljava/lang/Exception;)V

    :cond_6
    :goto_1
    return v0
.end method

.method public e()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/a;->g:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/f/a;->i:Ljava/lang/String;

    return-object v0
.end method
