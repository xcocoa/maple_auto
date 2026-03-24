.class public Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;
.super Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/anythink/core/common/f/m;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/anythink/basead/f/b;

.field private e:Landroid/view/View;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->f:Z

    return-void
.end method

.method public static synthetic a(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/basead/f/b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Lcom/anythink/basead/f/b;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/anythink/basead/f/b;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->b:Lcom/anythink/core/common/f/m;

    iget-object v2, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->f:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/anythink/basead/f/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Lcom/anythink/basead/f/b;

    new-instance p1, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;

    invoke-direct {p1, p0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;-><init>(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)V

    invoke-virtual {v0, p1}, Lcom/anythink/basead/f/b;->a(Lcom/anythink/basead/e/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic f(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic g(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/core/api/ATCustomLoadListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mLoadListener:Lcom/anythink/core/api/ATCustomLoadListener;

    return-object p0
.end method

.method public static synthetic h(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-object p0
.end method


# virtual methods
.method public destory()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Lcom/anythink/basead/f/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/anythink/basead/f/b;->a(Lcom/anythink/basead/e/a;)V

    iget-object v1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Lcom/anythink/basead/f/b;

    invoke-virtual {v1}, Lcom/anythink/basead/f/b;->c()V

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Lcom/anythink/basead/f/b;

    :cond_0
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Lcom/anythink/basead/f/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Lcom/anythink/basead/f/b;

    invoke-virtual {v0}, Lcom/anythink/basead/f/b;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Lcom/anythink/basead/f/b;

    invoke-static {v0}, Lcom/anythink/basead/b;->a(Lcom/anythink/basead/f/c;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->e:Landroid/view/View;

    return-object v0
.end method

.method public getNetworkInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    const-string v0, "MyOffer"

    return-object v0
.end method

.method public getNetworkPlacementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initNetworkObjectByPlacementId(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)Z
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

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a:Ljava/lang/String;

    :cond_0
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/common/f/m;

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->b:Lcom/anythink/core/common/f/m;

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

    iput-boolean p2, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->f:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method public loadCustomNetworkAd(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;)V
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

    iput-object p3, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a:Ljava/lang/String;

    :cond_0
    const-string p3, "basead_params"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/core/common/f/m;

    iput-object p2, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->b:Lcom/anythink/core/common/f/m;

    :cond_1
    invoke-direct {p0, p1}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->d:Lcom/anythink/basead/f/b;

    new-instance p2, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;

    invoke-direct {p2, p0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$1;-><init>(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/f/c;->a(Lcom/anythink/basead/e/c;)V

    return-void
.end method
