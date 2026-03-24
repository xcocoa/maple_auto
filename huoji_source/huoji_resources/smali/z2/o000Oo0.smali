.class public abstract Lz2/o000Oo0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OoooOoO:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lz2/o000OO0O<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public OooO00o(Lz2/o000OO0O;Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public OooO0O0(Lz2/o000OO0O;Lorg/apache/http/HttpRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public abstract OooO0OO()V
.end method

.method public declared-synchronized OooO0Oo(Lz2/o000OO0O;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o000Oo0;->OoooOoO:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lz2/o000Oo0;->OoooOoO:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lz2/o000Oo0;->OooO0OO()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract OooO0o(Lz2/o000OO0O;Lz2/o000O;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;",
            "Lz2/o000O;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract OooO0o0()Z
.end method

.method public declared-synchronized OooO0oO(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lz2/o000Oo0;->OoooOoO:Ljava/util/LinkedHashSet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/o000Oo0;->OoooOoO:Ljava/util/LinkedHashSet;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o000OO0O;

    invoke-virtual {v0, p2, p3}, Lz2/o000OO0O;->failure(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooO0oo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public abstract OooOO0(Lz2/o000OO0O;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000OO0O<",
            "**>;)Z"
        }
    .end annotation
.end method

.method public declared-synchronized OooOO0O(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/o000Oo0;->OoooOoO:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/o000Oo0;->OoooOoO:Ljava/util/LinkedHashSet;

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/o000OO0O;

    invoke-virtual {v1, p1}, Lz2/o000OO0O;->async(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public OooOO0o()V
    .locals 0

    return-void
.end method
