.class public Lmobi/oneway/export/b/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lmobi/oneway/export/enums/AdType;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    iput-object v0, p0, Lmobi/oneway/export/b/a/b;->a:Lmobi/oneway/export/enums/AdType;

    iput-object p2, p0, Lmobi/oneway/export/b/a/b;->b:Ljava/lang/String;

    iput-object p1, p0, Lmobi/oneway/export/b/a/b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V
    .locals 8

    iget-object v0, p0, Lmobi/oneway/export/b/a/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lmobi/oneway/export/b/a/b;->a:Lmobi/oneway/export/enums/AdType;

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->a(Ljava/lang/String;Lmobi/oneway/export/enums/AdType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lmobi/oneway/export/enums/OnewaySdkError;->INITIALIZE_FAILED:Lmobi/oneway/export/enums/OnewaySdkError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/oneway/export/b/a/b;->a:Lmobi/oneway/export/enums/AdType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;->onError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lmobi/oneway/export/f/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance v1, Lmobi/oneway/export/b/b/c;

    iget-object v3, p0, Lmobi/oneway/export/b/a/b;->a:Lmobi/oneway/export/enums/AdType;

    invoke-static {}, Lmobi/oneway/export/b/a;->a()Lmobi/oneway/export/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/oneway/export/b/a;->c()J

    move-result-wide v6

    move-object v2, v1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lmobi/oneway/export/b/b/c;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;Ljava/util/List;J)V

    invoke-virtual {v1, p1}, Lmobi/oneway/export/b/b/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lmobi/oneway/export/b/b/c;->c()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/f/a;

    iget-object v2, p0, Lmobi/oneway/export/b/a/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lmobi/oneway/export/f/a;->a(Landroid/content/Context;Lmobi/oneway/export/b/b/c;)V

    goto :goto_0

    :cond_2
    return-void
.end method
