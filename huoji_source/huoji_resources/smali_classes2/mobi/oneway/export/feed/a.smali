.class public Lmobi/oneway/export/feed/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmobi/oneway/export/feed/IFeedAd;


# instance fields
.field private a:Lmobi/oneway/export/feed/IFeedAd;

.field private b:Lmobi/oneway/export/f/a;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/feed/IFeedAd;Lmobi/oneway/export/f/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/feed/a;->a:Lmobi/oneway/export/feed/IFeedAd;

    iput-object p2, p0, Lmobi/oneway/export/feed/a;->b:Lmobi/oneway/export/f/a;

    return-void
.end method


# virtual methods
.method public getIconImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/feed/a;->a:Lmobi/oneway/export/feed/IFeedAd;

    invoke-interface {v0}, Lmobi/oneway/export/feed/IFeedAd;->getIconImage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmobi/oneway/export/feed/a;->a:Lmobi/oneway/export/feed/IFeedAd;

    invoke-interface {v0}, Lmobi/oneway/export/feed/IFeedAd;->getImages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/feed/a;->a:Lmobi/oneway/export/feed/IFeedAd;

    invoke-interface {v0}, Lmobi/oneway/export/feed/IFeedAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/feed/a;->a:Lmobi/oneway/export/feed/IFeedAd;

    invoke-interface {v0}, Lmobi/oneway/export/feed/IFeedAd;->getType()I

    move-result v0

    return v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/feed/a;->a:Lmobi/oneway/export/feed/IFeedAd;

    invoke-interface {v0}, Lmobi/oneway/export/feed/IFeedAd;->getVideoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public handleAdEvent(Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;)V
    .locals 2

    new-instance v0, Lmobi/oneway/export/f/a/b;

    iget-object v1, p0, Lmobi/oneway/export/feed/a;->b:Lmobi/oneway/export/f/a;

    invoke-direct {v0, v1, p2}, Lmobi/oneway/export/f/a/b;-><init>(Lmobi/oneway/export/f/a;Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;)V

    iget-object p2, p0, Lmobi/oneway/export/feed/a;->a:Lmobi/oneway/export/feed/IFeedAd;

    invoke-interface {p2, p1, v0}, Lmobi/oneway/export/feed/IFeedAd;->handleAdEvent(Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;)V

    return-void
.end method

.method public setVideoAdListener(Lmobi/oneway/export/AdListener/feed/OWFeedVideoAdListener;)V
    .locals 0

    return-void
.end method
