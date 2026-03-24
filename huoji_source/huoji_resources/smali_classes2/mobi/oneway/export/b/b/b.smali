.class public abstract Lmobi/oneway/export/b/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmobi/oneway/export/b/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmobi/oneway/export/b/b/d;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Lmobi/oneway/export/enums/AdType;

.field private c:J

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private g:Ljava/util/Timer;

.field private h:Ljava/util/TimerTask;

.field private i:Z


# direct methods
.method public constructor <init>(Lmobi/oneway/export/enums/AdType;Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/oneway/export/enums/AdType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lmobi/oneway/export/b/b/b;->c:J

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    iput-wide p3, p0, Lmobi/oneway/export/b/b/b;->c:J

    :cond_0
    iput-object p1, p0, Lmobi/oneway/export/b/b/b;->b:Lmobi/oneway/export/enums/AdType;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/b/b/b;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lmobi/oneway/export/b/b/b;->e:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lmobi/oneway/export/b/b/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lmobi/oneway/export/b/b/b;)Z
    .locals 0

    invoke-direct {p0}, Lmobi/oneway/export/b/b/b;->g()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lmobi/oneway/export/b/b/b;)V
    .locals 0

    invoke-direct {p0}, Lmobi/oneway/export/b/b/b;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "load ad timeout"

    invoke-static {v0}, Lmobi/oneway/export/g/m;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/oneway/export/b/b/b;->f:Z

    invoke-direct {p0}, Lmobi/oneway/export/b/b/b;->i()V

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/b/b/b$1;

    invoke-direct {v1, p0}, Lmobi/oneway/export/b/b/b$1;-><init>(Lmobi/oneway/export/b/b/b;)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->h:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lmobi/oneway/export/b/b/b;->h:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->g:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lmobi/oneway/export/b/b/b;->g:Ljava/util/Timer;

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lmobi/oneway/export/b/b/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lmobi/oneway/export/b/b/b;->d:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmobi/oneway/export/b/b/b;->e:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lmobi/oneway/export/b/b/b;->i:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/b/b/b;->i:Z

    return v0
.end method

.method public c()V
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lmobi/oneway/export/b/b/b;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lmobi/oneway/export/b/b/b;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmobi/oneway/export/b/b/b;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Lmobi/oneway/export/b/b/b;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->g:Ljava/util/Timer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/b/b/b;->f:Z

    new-instance v0, Lmobi/oneway/export/b/b/b$2;

    invoke-direct {v0, p0}, Lmobi/oneway/export/b/b/b$2;-><init>(Lmobi/oneway/export/b/b/b;)V

    iput-object v0, p0, Lmobi/oneway/export/b/b/b;->h:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/b/b/b;->g:Ljava/util/Timer;

    iget-object v1, p0, Lmobi/oneway/export/b/b/b;->h:Ljava/util/TimerTask;

    iget-wide v2, p0, Lmobi/oneway/export/b/b/b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-direct {p0}, Lmobi/oneway/export/b/b/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmobi/oneway/export/b/b/b;->f:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmobi/oneway/export/b/b/b;->i()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmobi/oneway/export/b/b/b;->a(Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 3

    iget-boolean v0, p0, Lmobi/oneway/export/b/b/b;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lmobi/oneway/export/b/b/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lmobi/oneway/export/b/b/b;->i()V

    invoke-direct {p0}, Lmobi/oneway/export/b/b/b;->g()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lmobi/oneway/export/b/b/b;->a(Z)V

    invoke-virtual {p0}, Lmobi/oneway/export/b/b/b;->a()V

    return v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmobi/oneway/export/b/b/b;->e:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
