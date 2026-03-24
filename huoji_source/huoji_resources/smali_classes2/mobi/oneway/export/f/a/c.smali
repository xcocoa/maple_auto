.class public Lmobi/oneway/export/f/a/c;
.super Lmobi/oneway/export/f/a/a;
.source ""

# interfaces
.implements Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/f/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmobi/oneway/export/f/a/a;-><init>(Lmobi/oneway/export/f/a;)V

    return-void
.end method


# virtual methods
.method public c()Lmobi/oneway/export/enums/AdType;
    .locals 1

    sget-object v0, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    return-object v0
.end method

.method public onAdLoad(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lmobi/oneway/export/enums/EventType;->ready:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {p0, v0}, Lmobi/oneway/export/f/a/a;->a(Lmobi/oneway/export/enums/EventType;)V

    iget-object v0, p0, Lmobi/oneway/export/f/a/a;->e:Lmobi/oneway/export/b/b/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmobi/oneway/export/f/a/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lmobi/oneway/export/b/b/d;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lmobi/oneway/export/f/a/a;->a(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/f/a/a;->e:Lmobi/oneway/export/b/b/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmobi/oneway/export/f/a/a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lmobi/oneway/export/b/b/d;->a(Ljava/lang/String;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
