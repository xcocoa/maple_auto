.class public Lz2/ja0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public OooO00o:[Ljava/lang/String;

.field public OooO0O0:[Ljava/lang/String;

.field public OooO0OO:Ljava/lang/String;

.field public OooO0Oo:Ljava/lang/String;

.field public OooO0o0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/ja0;->OooOO0(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(Ljava/lang/Class;Ljava/lang/String;)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")D"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lz2/ja0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p1

    return-wide p1
.end method

.method public OooO0O0(Ljava/lang/String;Ljava/lang/String;)D
    .locals 3

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ya0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ya0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lz2/ja0;->OooO0O0:[Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lz2/ya0;->oo000o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)D

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0OO(Ljava/lang/Class;Ljava/lang/String;)Lz2/cb0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lz2/cb0;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lz2/ja0;->OooO0Oo(Ljava/lang/String;Ljava/lang/String;)Lz2/cb0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Ljava/lang/String;Ljava/lang/String;)Lz2/cb0;
    .locals 2

    new-instance v0, Lz2/cb0;

    invoke-direct {v0}, Lz2/cb0;-><init>()V

    new-instance v1, Lz2/ja0$OooO;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/ja0$OooO;-><init>(Lz2/ja0;Ljava/lang/String;Ljava/lang/String;Lz2/cb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public OooO0o(Ljava/lang/String;)I
    .locals 3

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ya0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ya0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lz2/ja0;->OooO0O0:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lz2/ya0;->o00oO0o(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0o0(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/ja0;->OooO0o(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public OooO0oO(Ljava/lang/Class;)Lz2/db0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/db0;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/ja0;->OooO0oo(Ljava/lang/String;)Lz2/db0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oo(Ljava/lang/String;)Lz2/db0;
    .locals 2

    new-instance v0, Lz2/db0;

    invoke-direct {v0}, Lz2/db0;-><init>()V

    new-instance v1, Lz2/ja0$OooO0o;

    invoke-direct {v1, p0, p1, v0}, Lz2/ja0$OooO0o;-><init>(Lz2/ja0;Ljava/lang/String;Lz2/db0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public OooOO0(Ljava/lang/Class;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ya0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ya0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lz2/ja0;->OooO0o0:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lz2/ja0;->OooO0Oo:Ljava/lang/String;

    :goto_0
    move-object v6, v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lz2/ja0;->OooO0Oo:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "0"

    iput-object v2, p0, Lz2/ja0;->OooO0Oo:Ljava/lang/String;

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lz2/ja0;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lz2/ja0;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lz2/ja0;->OooO00o:[Ljava/lang/String;

    iget-object v4, p0, Lz2/ja0;->OooO0O0:[Ljava/lang/String;

    iget-object v5, p0, Lz2/ja0;->OooO0OO:Ljava/lang/String;

    move-object v2, p1

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lz2/ya0;->o0ooOO0(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOO0O(Ljava/lang/Class;)Lz2/fb0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/fb0<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/ja0;->OooOO0o(Ljava/lang/Class;Z)Lz2/fb0;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0o(Ljava/lang/Class;Z)Lz2/fb0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lz2/fb0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/fb0;

    invoke-direct {v0}, Lz2/fb0;-><init>()V

    new-instance v1, Lz2/ja0$OooO00o;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/ja0$OooO00o;-><init>(Lz2/ja0;Ljava/lang/Class;ZLz2/fb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public OooOOO(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lz2/ja0;->OooOO0(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOOO0(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/ja0;->OooOOO(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOO(Ljava/lang/Class;)Lz2/eb0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/ja0;->OooOOOo(Ljava/lang/Class;Z)Lz2/eb0;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOo(Ljava/lang/Class;Z)Lz2/eb0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/eb0;

    invoke-direct {v0}, Lz2/eb0;-><init>()V

    new-instance v1, Lz2/ja0$OooO0O0;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/ja0$OooO0O0;-><init>(Lz2/ja0;Ljava/lang/Class;ZLz2/eb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public OooOOo(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lz2/ja0;->OooOO0(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOOo0(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/ja0;->OooOOo(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public OooOOoo(Ljava/lang/Class;)Lz2/eb0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/ja0;->OooOo00(Ljava/lang/Class;Z)Lz2/eb0;

    move-result-object p1

    return-object p1
.end method

.method public OooOo(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lz2/ja0;->OooOoO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;

    move-result-object p1

    return-object p1
.end method

.method public OooOo0(I)Lz2/ja0;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/ja0;->OooO0Oo:Ljava/lang/String;

    return-object p0
.end method

.method public OooOo00(Ljava/lang/Class;Z)Lz2/eb0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/eb0;

    invoke-direct {v0}, Lz2/eb0;-><init>()V

    new-instance v1, Lz2/ja0$OooO0OO;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/ja0$OooO0OO;-><init>(Lz2/ja0;Ljava/lang/Class;ZLz2/eb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public OooOo0O(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lz2/ja0;->OooOo0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public OooOo0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ya0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ya0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lz2/ja0;->OooO0O0:[Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2, p3}, Lz2/ya0;->o0Oo0oo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOoO(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lz2/ja0;->OooOoOO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public OooOoO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lz2/eb0;

    invoke-direct {v6}, Lz2/eb0;-><init>()V

    new-instance v7, Lz2/ja0$OooOO0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lz2/ja0$OooOO0;-><init>(Lz2/ja0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lz2/eb0;)V

    invoke-virtual {v6, v7}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public OooOoOO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ya0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ya0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lz2/ja0;->OooO0O0:[Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2, p3}, Lz2/ya0;->o0OO00O(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOoo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lz2/eb0;

    invoke-direct {v6}, Lz2/eb0;-><init>()V

    new-instance v7, Lz2/ja0$OooOO0O;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lz2/ja0$OooOO0O;-><init>(Lz2/ja0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lz2/eb0;)V

    invoke-virtual {v6, v7}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public OooOoo0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lz2/ja0;->OooOoo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;

    move-result-object p1

    return-object p1
.end method

.method public OooOooO(I)Lz2/ja0;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lz2/ja0;->OooO0o0:Ljava/lang/String;

    return-object p0
.end method

.method public OooOooo(Ljava/lang/String;)Lz2/ja0;
    .locals 0

    iput-object p1, p0, Lz2/ja0;->OooO0OO:Ljava/lang/String;

    return-object p0
.end method

.method public Oooo0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lz2/ja0;->Oooo0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;

    move-result-object p1

    return-object p1
.end method

.method public varargs Oooo000([Ljava/lang/String;)Lz2/ja0;
    .locals 0

    iput-object p1, p0, Lz2/ja0;->OooO00o:[Ljava/lang/String;

    return-object p0
.end method

.method public Oooo00O(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lz2/ja0;->Oooo00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Oooo00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ya0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ya0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v2, p0, Lz2/ja0;->OooO0O0:[Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2, p3}, Lz2/ya0;->oo0o0Oo(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Oooo0O0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lz2/eb0;

    invoke-direct {v6}, Lz2/eb0;-><init>()V

    new-instance v7, Lz2/ja0$OooOOO0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lz2/ja0$OooOOO0;-><init>(Lz2/ja0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lz2/eb0;)V

    invoke-virtual {v6, v7}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public varargs Oooo0OO([Ljava/lang/String;)Lz2/ja0;
    .locals 0

    iput-object p1, p0, Lz2/ja0;->OooO0O0:[Ljava/lang/String;

    return-object p0
.end method
