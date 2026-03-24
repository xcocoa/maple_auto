.class public Lmobi/oneway/export/f/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lmobi/oneway/export/f/e;

.field private d:Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmobi/oneway/export/f/a/b;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmobi/oneway/export/f/a/b;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lmobi/oneway/export/f/a;Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    invoke-direct {v0, v1, p1}, Lmobi/oneway/export/f/e;-><init>(Lmobi/oneway/export/enums/AdType;Lmobi/oneway/export/f/a;)V

    iput-object v0, p0, Lmobi/oneway/export/f/a/b;->c:Lmobi/oneway/export/f/e;

    iput-object p2, p0, Lmobi/oneway/export/f/a/b;->d:Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;

    invoke-virtual {p1}, Lmobi/oneway/export/f/a;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lmobi/oneway/export/f/a/b;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lmobi/oneway/export/f/a;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/oneway/export/f/a/b;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClicked(Lmobi/oneway/export/feed/IFeedAd;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmobi/oneway/export/f/a/b;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmobi/oneway/export/f/a/b;->c:Lmobi/oneway/export/f/e;

    sget-object v2, Lmobi/oneway/export/enums/EventType;->click:Lmobi/oneway/export/enums/EventType;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    sget-object v1, Lmobi/oneway/export/f/a/b;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/f/a/b;->d:Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;->onClicked(Lmobi/oneway/export/feed/IFeedAd;)V

    :cond_1
    return-void
.end method

.method public onExposured(Lmobi/oneway/export/feed/IFeedAd;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmobi/oneway/export/f/a/b;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lmobi/oneway/export/b/a;->a()Lmobi/oneway/export/b/a;

    move-result-object v1

    sget-object v2, Lmobi/oneway/export/b/a$a;->b:Lmobi/oneway/export/b/a$a;

    iget-object v3, p0, Lmobi/oneway/export/f/a/b;->e:Ljava/lang/String;

    iget-object v4, p0, Lmobi/oneway/export/f/a/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lmobi/oneway/export/b/a;->a(Lmobi/oneway/export/b/a$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/oneway/export/f/a/b;->c:Lmobi/oneway/export/f/e;

    sget-object v2, Lmobi/oneway/export/enums/EventType;->show:Lmobi/oneway/export/enums/EventType;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    sget-object v1, Lmobi/oneway/export/f/a/b;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/f/a/b;->d:Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lmobi/oneway/export/AdListener/feed/OWFeedAdEventListener;->onExposured(Lmobi/oneway/export/feed/IFeedAd;)V

    :cond_1
    return-void
.end method
