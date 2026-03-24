.class public Lcom/anythink/network/myoffer/MyOfferATAdapter;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.source ""


# instance fields
.field public a:Lcom/anythink/basead/f/e;

.field public b:Lcom/anythink/core/common/f/m;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/anythink/basead/f/e;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/anythink/basead/f/e;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/f/e;

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/myoffer/MyOfferATAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/f/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anythink/basead/f/e;->a(Lcom/anythink/basead/e/a;)V

    iput-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/f/e;

    :cond_0
    return-void
.end method

.method public getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/f/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/anythink/network/myoffer/MyOfferATNativeAd;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/f/e;

    invoke-direct {v0, p1, v1}, Lcom/anythink/network/myoffer/MyOfferATNativeAd;-><init>(Landroid/content/Context;Lcom/anythink/basead/f/e;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 2
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

    const-string p3, "my_oid"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    :cond_0
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/common/f/m;

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/f/m;

    :cond_1
    const-string p3, "isDefaultOffer"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    :cond_2
    new-instance p2, Lcom/anythink/basead/f/e;

    iget-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/anythink/basead/f/e;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/f/e;

    const/4 p1, 0x1

    return p1
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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

    const-string p3, "my_oid"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    :cond_0
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/f/m;

    :cond_1
    new-instance p2, Lcom/anythink/basead/f/e;

    iget-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->d:Z

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/anythink/basead/f/e;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/f/e;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATAdapter;->a:Lcom/anythink/basead/f/e;

    new-instance p3, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/anythink/network/myoffer/MyOfferATAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATAdapter;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/anythink/basead/f/c;->a(Lcom/anythink/basead/e/c;)V

    return-void
.end method
