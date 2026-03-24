.class public Lcom/anythink/network/adx/AdxATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.source ""


# instance fields
.field public a:Lcom/anythink/basead/d/e;

.field public b:Lcom/anythink/core/common/f/m;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "layout_type"

    invoke-static {p2, v0}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->h:Z

    const-string v0, "basead_params"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f/m;

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->b:Lcom/anythink/core/common/f/m;

    new-instance v2, Lcom/anythink/basead/d/e;

    sget-object v3, Lcom/anythink/basead/d/b$b;->a:Lcom/anythink/basead/d/b$b;

    iget-boolean v4, p0, Lcom/anythink/network/adx/AdxATAdapter;->h:Z

    invoke-direct {v2, p1, v3, v0, v4}, Lcom/anythink/basead/d/e;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;Z)V

    iput-object v2, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/d/e;

    const-string v0, "close_button"

    const-string v2, "0"

    invoke-static {p2, v0, v2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->c:Z

    const-string v0, "v_m"

    invoke-static {p2, v0, v2}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->d:Z

    const-string v0, "video_autoplay"

    invoke-static {p2, v0, v1}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/anythink/network/adx/AdxATAdapter;->e:Ljava/lang/String;

    const/4 p2, -0x1

    if-eqz p3, :cond_0

    const-string p2, "key_width"

    invoke-static {p3, p2}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result p2

    const-string v0, "key_height"

    invoke-static {p3, v0}, Lcom/anythink/core/api/ATInitMediation;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gtz p2, :cond_1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    if-gtz p3, :cond_2

    mul-int/lit8 p3, p2, 0x3

    div-int/lit8 p3, p3, 0x4

    :cond_2
    if-le p2, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, p2

    :goto_1
    if-le p3, p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, p3

    :goto_2
    iput v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->f:I

    iput p1, p0, Lcom/anythink/network/adx/AdxATAdapter;->g:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/adx/AdxATAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/network/adx/AdxATAdapter;->h:Z

    return p0
.end method

.method public static synthetic b(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/adx/AdxATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/d/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/d/e;

    :cond_0
    return-void
.end method

.method public getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;
    .locals 4

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/d/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/d/e;

    invoke-virtual {v0}, Lcom/anythink/basead/d/e;->a()Lcom/anythink/basead/d/h;

    move-result-object v0

    iget v1, p0, Lcom/anythink/network/adx/AdxATAdapter;->f:I

    iget v2, p0, Lcom/anythink/network/adx/AdxATAdapter;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/anythink/basead/d/h;->a(II)V

    iget-boolean v1, p0, Lcom/anythink/network/adx/AdxATAdapter;->d:Z

    invoke-virtual {v0, v1}, Lcom/anythink/basead/d/h;->a(Z)V

    iget-object v1, p0, Lcom/anythink/network/adx/AdxATAdapter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/basead/d/h;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/anythink/network/adx/AdxATNativeAd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean v2, p0, Lcom/anythink/network/adx/AdxATAdapter;->h:Z

    iget-boolean v3, p0, Lcom/anythink/network/adx/AdxATAdapter;->c:Z

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/anythink/network/adx/AdxATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/h;ZZ)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/d/e;

    invoke-virtual {p1}, Lcom/anythink/basead/d/b;->f()Lcom/anythink/core/common/f/l;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/basead/b;->a(Lcom/anythink/core/common/f/l;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setNetworkInfoMap(Ljava/util/Map;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBidRequestInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/api/ATBidRequestInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATBidRequestInfoListener;",
            ")V"
        }
    .end annotation

    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/common/f/m;

    new-instance v0, Lcom/anythink/network/adx/AdxBidRequestInfo;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    invoke-direct {v0, p1, p3}, Lcom/anythink/network/adx/AdxBidRequestInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "layout_type"

    invoke-static {p2, p1}, Lcom/anythink/core/api/ATInitMediation;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/network/adx/AdxATAdapter;->h:Z

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/anythink/network/adx/AdxBidRequestInfo;->fillAdAcceptType()V

    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p4, v0}, Lcom/anythink/core/api/ATBidRequestInfoListener;->onSuccess(Lcom/anythink/core/api/ATBidRequestInfo;)V

    :cond_2
    return-void
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/anythink/network/adx/AdxATInitManager;->getInstance()Lcom/anythink/network/adx/AdxATInitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/network/adx/AdxATInitManager;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATAdapter;->b:Lcom/anythink/core/common/f/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/adx/AdxATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/d/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/basead/d/b;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/d/e;

    invoke-virtual {p1}, Lcom/anythink/basead/d/b;->d()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/network/adx/AdxATAdapter;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/anythink/network/adx/AdxATAdapter;->a:Lcom/anythink/basead/d/e;

    new-instance p3, Lcom/anythink/network/adx/AdxATAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/anythink/network/adx/AdxATAdapter$1;-><init>(Lcom/anythink/network/adx/AdxATAdapter;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/anythink/basead/d/e;->a(Lcom/anythink/basead/e/d;)V

    return-void
.end method
