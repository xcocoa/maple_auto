.class public Lmobi/oneway/export/b/b/c;
.super Lmobi/oneway/export/b/b/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmobi/oneway/export/b/b/b<",
        "Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/oneway/export/enums/AdType;",
            "Ljava/util/List<",
            "Lmobi/oneway/export/f/a;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4, p5}, Lmobi/oneway/export/b/b/b;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;J)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/b/b/c;->c:Ljava/util/Map;

    iput-object p2, p0, Lmobi/oneway/export/b/b/c;->e:Ljava/util/List;

    iput-object p3, p0, Lmobi/oneway/export/b/b/c;->d:Ljava/util/List;

    return-void
.end method

.method private f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lmobi/oneway/export/b/b/c;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lmobi/oneway/export/b/b/c;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lmobi/oneway/export/b/b/c;->e:Ljava/util/List;

    invoke-static {v1, v0}, Lmobi/oneway/export/f/d;->a(Ljava/util/List;Ljava/lang/String;)Lmobi/oneway/export/f/a;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/oneway/export/feed/IFeedAd;

    new-instance v4, Lmobi/oneway/export/feed/a;

    invoke-direct {v4, v3, v1}, Lmobi/oneway/export/feed/a;-><init>(Lmobi/oneway/export/feed/IFeedAd;Lmobi/oneway/export/f/a;)V

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmobi/oneway/export/b/b/c;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    check-cast v1, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    invoke-interface {v1, v0}, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;->onAdLoad(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    sget-object v1, Lmobi/oneway/export/enums/OnewaySdkError;->LOAD_ERROR:Lmobi/oneway/export/enums/OnewaySdkError;

    invoke-interface {v0, v1, p1}, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;->onError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmobi/oneway/export/b/b/b;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/b/b/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/oneway/export/b/b/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmobi/oneway/export/b/b/c;->f()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    check-cast p2, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    invoke-interface {p2, p1}, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;->onAdLoad(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmobi/oneway/export/b/b/b;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/oneway/export/b/b/b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;

    invoke-interface {p1, p2, p3}, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;->onError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lmobi/oneway/export/b/b/b;->c()V

    iget-object v0, p0, Lmobi/oneway/export/b/b/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
