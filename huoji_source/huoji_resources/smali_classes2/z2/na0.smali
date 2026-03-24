.class public Lz2/na0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO00o:Landroid/os/Handler;

.field private static OooO0O0:Lz2/dc0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lz2/na0;->OooO00o:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lz2/na0;->OooO0O0:Lz2/dc0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO(Ljava/lang/String;)Lz2/db0;
    .locals 2

    new-instance v0, Lz2/db0;

    invoke-direct {v0}, Lz2/db0;-><init>()V

    new-instance v1, Lz2/na0$OooO00o;

    invoke-direct {v1, p0, v0}, Lz2/na0$OooO00o;-><init>(Ljava/lang/String;Lz2/db0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static OooO00o(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/vc0;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public static OooO0O0(Ljava/lang/Class;Ljava/lang/String;)D
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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lz2/na0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static OooO0OO(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ja0;

    invoke-direct {v1}, Lz2/ja0;-><init>()V

    invoke-virtual {v1, p0, p1}, Lz2/ja0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooO0Oo(Ljava/lang/Class;Ljava/lang/String;)Lz2/cb0;
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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lz2/na0;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)Lz2/cb0;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0o(Ljava/lang/Class;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/na0;->OooO0oO(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static OooO0o0(Ljava/lang/String;Ljava/lang/String;)Lz2/cb0;
    .locals 2

    new-instance v0, Lz2/cb0;

    invoke-direct {v0}, Lz2/cb0;-><init>()V

    new-instance v1, Lz2/na0$OooOOO0;

    invoke-direct {v1, p0, p1, v0}, Lz2/na0$OooOOO0;-><init>(Ljava/lang/String;Ljava/lang/String;Lz2/cb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static OooO0oO(Ljava/lang/String;)I
    .locals 2

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ja0;

    invoke-direct {v1}, Lz2/ja0;-><init>()V

    invoke-virtual {v1, p0}, Lz2/ja0;->OooO0o(Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooO0oo(Ljava/lang/Class;)Lz2/db0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/db0;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/na0;->OooO(Ljava/lang/String;)Lz2/db0;

    move-result-object p0

    return-object p0
.end method

.method public static OooOO0(Ljava/lang/Class;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J)I"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lz2/sa0;

    invoke-direct {v2, v1}, Lz2/sa0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2, p0, p1, p2}, Lz2/sa0;->o000OOo(Ljava/lang/Class;J)I

    move-result p0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static varargs OooOO0O(Ljava/lang/Class;[Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/sa0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/sa0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p0, p1}, Lz2/sa0;->o000000O(Ljava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs OooOO0o(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/sa0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/sa0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p0, p1}, Lz2/sa0;->o000000o(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs OooOOO(Ljava/lang/String;[Ljava/lang/String;)Lz2/hb0;
    .locals 2

    new-instance v0, Lz2/hb0;

    invoke-direct {v0}, Lz2/hb0;-><init>()V

    new-instance v1, Lz2/na0$OooO0o;

    invoke-direct {v1, p0, p1, v0}, Lz2/na0$OooO0o;-><init>(Ljava/lang/String;[Ljava/lang/String;Lz2/hb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs OooOOO0(Ljava/lang/Class;[Ljava/lang/String;)Lz2/hb0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Lz2/hb0;"
        }
    .end annotation

    new-instance v0, Lz2/hb0;

    invoke-direct {v0}, Lz2/hb0;-><init>()V

    new-instance v1, Lz2/na0$OooO0OO;

    invoke-direct {v1, p0, p1, v0}, Lz2/na0$OooO0OO;-><init>(Ljava/lang/Class;[Ljava/lang/String;Lz2/hb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static OooOOOO(Ljava/lang/Class;J)Lz2/hb0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;J)",
            "Lz2/hb0;"
        }
    .end annotation

    new-instance v0, Lz2/hb0;

    invoke-direct {v0}, Lz2/hb0;-><init>()V

    new-instance v1, Lz2/na0$OooO0O0;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/na0$OooO0O0;-><init>(Ljava/lang/Class;JLz2/hb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static OooOOOo(Ljava/lang/String;)Z
    .locals 4

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".db"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".db"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {}, Lorg/litepal/LitePalApplication;->OooO00o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lz2/na0;->OoooOoo(Ljava/lang/String;)V

    invoke-static {}, Lz2/xb0;->OooO0O0()V

    :cond_1
    monitor-exit v0

    return v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/litepal/LitePalApplication;->OooO00o()Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/databases/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lz2/na0;->OoooOoo(Ljava/lang/String;)V

    invoke-static {}, Lz2/xb0;->OooO0O0()V

    :cond_3
    monitor-exit v0

    return v1

    :cond_4
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooOOo(Ljava/lang/Class;JZ)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;JZ)TT;"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ya0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ya0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p0, p1, p2, p3}, Lz2/ya0;->o00oO0O(Ljava/lang/Class;JZ)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooOOo0(Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lz2/na0;->OooOOo(Ljava/lang/Class;JZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs OooOOoo(Ljava/lang/Class;Z[J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z[J)",
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

    invoke-virtual {v1, p0, p1, p2}, Lz2/ya0;->o0ooOOo(Ljava/lang/Class;Z[J)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooOo(Ljava/lang/Class;JZ)Lz2/eb0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;JZ)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lz2/eb0;

    invoke-direct {v6}, Lz2/eb0;-><init>()V

    new-instance v7, Lz2/na0$OooOo;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lz2/na0$OooOo;-><init>(Ljava/lang/Class;JZLz2/eb0;)V

    invoke-virtual {v6, v7}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public static varargs OooOo0(Ljava/lang/Class;Z[J)Lz2/fb0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z[J)",
            "Lz2/fb0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/fb0;

    invoke-direct {v0}, Lz2/fb0;-><init>()V

    new-instance v1, Lz2/na0$o000oOoO;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/na0$o000oOoO;-><init>(Ljava/lang/Class;Z[JLz2/fb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs OooOo00(Ljava/lang/Class;[J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lz2/na0;->OooOOoo(Ljava/lang/Class;Z[J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs OooOo0O(Ljava/lang/Class;[J)Lz2/fb0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[J)",
            "Lz2/fb0<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lz2/na0;->OooOo0(Ljava/lang/Class;Z[J)Lz2/fb0;

    move-result-object p0

    return-object p0
.end method

.method public static OooOo0o(Ljava/lang/Class;J)Lz2/eb0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lz2/eb0<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lz2/na0;->OooOo(Ljava/lang/Class;JZ)Lz2/eb0;

    move-result-object p0

    return-object p0
.end method

.method public static OooOoO(Ljava/lang/Class;)Ljava/lang/Object;
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

    invoke-static {p0, v0}, Lz2/na0;->OooOoOO(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs OooOoO0([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lz2/pc0;->OooO0OO([Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    array-length v2, p0

    if-gtz v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    array-length v1, p0

    sub-int/2addr v1, v4

    new-array v1, v1, [Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, v4

    invoke-static {p0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    aget-object p0, p0, v3

    invoke-virtual {v2, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooOoOO(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
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
    new-instance v1, Lz2/ya0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ya0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p0, p1}, Lz2/ya0;->o0ooOoO(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooOoo(Ljava/lang/Class;Z)Lz2/eb0;
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

    new-instance v1, Lz2/na0$Oooo000;

    invoke-direct {v1, p0, p1, v0}, Lz2/na0$Oooo000;-><init>(Ljava/lang/Class;ZLz2/eb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static OooOoo0(Ljava/lang/Class;)Lz2/eb0;
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

    invoke-static {p0, v0}, Lz2/na0;->OooOoo(Ljava/lang/Class;Z)Lz2/eb0;

    move-result-object p0

    return-object p0
.end method

.method public static OooOooO(Ljava/lang/Class;)Ljava/lang/Object;
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

    invoke-static {p0, v0}, Lz2/na0;->OooOooo(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static OooOooo(Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
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
    new-instance v1, Lz2/ya0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ya0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p0, p1}, Lz2/ya0;->o0OOO0o(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static Oooo(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lz2/na0;->OoooO00(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static Oooo0()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static Oooo000(Ljava/lang/Class;)Lz2/eb0;
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

    invoke-static {p0, v0}, Lz2/na0;->Oooo00O(Ljava/lang/Class;Z)Lz2/eb0;

    move-result-object p0

    return-object p0
.end method

.method public static Oooo00O(Ljava/lang/Class;Z)Lz2/eb0;
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

    new-instance v1, Lz2/na0$Oooo0;

    invoke-direct {v1, p0, p1, v0}, Lz2/na0$Oooo0;-><init>(Ljava/lang/Class;ZLz2/eb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static Oooo00o()Lz2/dc0;
    .locals 1

    sget-object v0, Lz2/na0;->OooO0O0:Lz2/dc0;

    return-object v0
.end method

.method public static Oooo0O0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lz2/na0;->OooO00o:Landroid/os/Handler;

    return-object v0
.end method

.method public static Oooo0OO(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lorg/litepal/LitePalApplication;->OoooOoO:Landroid/content/Context;

    return-void
.end method

.method public static varargs Oooo0o(Ljava/lang/Class;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Lz2/na0;->o00ooo([Ljava/lang/String;)Lz2/ja0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lz2/ja0;->OooO0o0(Ljava/lang/Class;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static Oooo0o0(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lz2/pc0;->OooO()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".db"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {}, Lz2/ub0;->OooO0O0()Lz2/sb0;

    move-result-object v1

    invoke-virtual {v1}, Lz2/sb0;->OooO0Oo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static Oooo0oO(I)Lz2/ja0;
    .locals 1

    new-instance v0, Lz2/ja0;

    invoke-direct {v0}, Lz2/ja0;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lz2/ja0;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public static Oooo0oo(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lz2/ua0;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/ua0;

    invoke-virtual {v0}, Lz2/ua0;->clearSavedState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static OoooO(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lz2/na0;->OoooOO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static OoooO0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lz2/na0;->OoooO0O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;

    move-result-object p0

    return-object p0
.end method

.method public static OoooO00(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    new-instance v1, Lz2/ja0;

    invoke-direct {v1}, Lz2/ja0;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lz2/ja0;->OooOo0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OoooO0O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
    .locals 2
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

    new-instance v0, Lz2/eb0;

    invoke-direct {v0}, Lz2/eb0;-><init>()V

    new-instance v1, Lz2/na0$OooOOO;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/na0$OooOOO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lz2/eb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static OoooOO0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    new-instance v1, Lz2/ja0;

    invoke-direct {v1}, Lz2/ja0;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lz2/ja0;->OooOoOO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OoooOOO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
    .locals 2
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

    new-instance v0, Lz2/eb0;

    invoke-direct {v0}, Lz2/eb0;-><init>()V

    new-instance v1, Lz2/na0$OooOOOO;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/na0$OooOOOO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lz2/eb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static OoooOOo(I)Lz2/ja0;
    .locals 1

    new-instance v0, Lz2/ja0;

    invoke-direct {v0}, Lz2/ja0;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lz2/ja0;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public static OoooOo0(Ljava/lang/String;)Lz2/ja0;
    .locals 1

    new-instance v0, Lz2/ja0;

    invoke-direct {v0}, Lz2/ja0;-><init>()V

    iput-object p0, v0, Lz2/ja0;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public static OoooOoO(Lz2/dc0;)V
    .locals 0

    sput-object p0, Lz2/na0;->OooO0O0:Lz2/dc0;

    return-void
.end method

.method private static OoooOoo(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lz2/na0;->Oooo0o0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lz2/tc0;->OooO0O0(Ljava/lang/String;)V

    return-void
.end method

.method public static Ooooo00(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lz2/ua0;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lz2/za0;

    invoke-direct {v2, v1}, Lz2/za0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v2, p0}, Lz2/za0;->o000000O(Ljava/util/Collection;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    new-instance v2, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static Ooooo0o(Ljava/util/Collection;)Lz2/gb0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lz2/ua0;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lz2/gb0;"
        }
    .end annotation

    new-instance v0, Lz2/gb0;

    invoke-direct {v0}, Lz2/gb0;-><init>()V

    new-instance v1, Lz2/na0$OooOO0O;

    invoke-direct {v1, p0, v0}, Lz2/na0$OooOO0O;-><init>(Ljava/util/Collection;Lz2/gb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static varargs OooooO0([Ljava/lang/String;)Lz2/ja0;
    .locals 1

    new-instance v0, Lz2/ja0;

    invoke-direct {v0}, Lz2/ja0;-><init>()V

    iput-object p0, v0, Lz2/ja0;->OooO00o:[Ljava/lang/String;

    return-object v0
.end method

.method public static OooooOO(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lz2/na0;->OooooOo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static OooooOo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    new-instance v1, Lz2/ja0;

    invoke-direct {v1}, Lz2/ja0;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lz2/ja0;->Oooo00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static Oooooo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
    .locals 2
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

    new-instance v0, Lz2/eb0;

    invoke-direct {v0}, Lz2/eb0;-><init>()V

    new-instance v1, Lz2/na0$OooOo00;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/na0$OooOo00;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lz2/eb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static Oooooo0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lz2/na0;->Oooooo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;

    move-result-object p0

    return-object p0
.end method

.method public static OoooooO(Ljava/lang/Class;Landroid/content/ContentValues;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ContentValues;",
            "J)I"
        }
    .end annotation

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ab0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ab0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p0, p2, p3, p1}, Lz2/ab0;->o0ooOOo(Ljava/lang/Class;JLandroid/content/ContentValues;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs Ooooooo(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lz2/na0;->o0OoOo0(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static o000oOoO(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;
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

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lz2/na0;->OoooOOO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lz2/eb0;

    move-result-object p0

    return-object p0
.end method

.method public static varargs o00O0O(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)Lz2/hb0;
    .locals 2

    new-instance v0, Lz2/hb0;

    invoke-direct {v0}, Lz2/hb0;-><init>()V

    new-instance v1, Lz2/na0$OooOO0;

    invoke-direct {v1, p0, p1, p2, v0}, Lz2/na0$OooOO0;-><init>(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;Lz2/hb0;)V

    invoke-virtual {v0, v1}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static o00Oo0(Ljava/lang/Class;Landroid/content/ContentValues;J)Lz2/hb0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ContentValues;",
            "J)",
            "Lz2/hb0;"
        }
    .end annotation

    new-instance v6, Lz2/hb0;

    invoke-direct {v6}, Lz2/hb0;-><init>()V

    new-instance v7, Lz2/na0$OooO;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lz2/na0$OooO;-><init>(Ljava/lang/Class;Landroid/content/ContentValues;JLz2/hb0;)V

    invoke-virtual {v6, v7}, Lz2/bb0;->OooO0O0(Ljava/lang/Runnable;)V

    return-object v6
.end method

.method public static o00Ooo(Lz2/ma0;)V
    .locals 3

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lz2/rb0;->OooO0oo()Lz2/rb0;

    move-result-object v1

    invoke-virtual {p0}, Lz2/ma0;->OooO0Oo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz2/rb0;->OooOOO(Ljava/lang/String;)V

    invoke-virtual {p0}, Lz2/ma0;->OooO0o()I

    move-result v2

    invoke-virtual {v1, v2}, Lz2/rb0;->OooOOo0(I)V

    invoke-virtual {p0}, Lz2/ma0;->OooO0o0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz2/rb0;->OooOOOo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lz2/ma0;->OooO0OO()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz2/rb0;->OooOOO0(Ljava/util/List;)V

    invoke-virtual {p0}, Lz2/ma0;->OooO0Oo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lz2/na0;->Oooo0o0(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lz2/ma0;->OooO0Oo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lz2/rb0;->OooOOOO(Ljava/lang/String;)V

    const-string p0, "lower"

    invoke-virtual {v1, p0}, Lz2/rb0;->OooOO0o(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lz2/xb0;->OooO0O0()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static o00o0O()V
    .locals 2

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lz2/rb0;->OooO0OO()V

    invoke-static {}, Lz2/xb0;->OooO0O0()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs o00ooo([Ljava/lang/String;)Lz2/ja0;
    .locals 1

    new-instance v0, Lz2/ja0;

    invoke-direct {v0}, Lz2/ja0;-><init>()V

    iput-object p0, v0, Lz2/ja0;->OooO0O0:[Ljava/lang/String;

    return-object v0
.end method

.method public static varargs o0OoOo0(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I
    .locals 3

    const-class v0, Lz2/ua0;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lz2/ab0;

    invoke-static {}, Lz2/xb0;->OooO0OO()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lz2/ab0;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, p0, p1, p2}, Lz2/ab0;->o0OOO0o(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static varargs ooOO(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)Lz2/hb0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/ContentValues;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lz2/hb0;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/pc0;->OooO0O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lz2/na0;->o00O0O(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;)Lz2/hb0;

    move-result-object p0

    return-object p0
.end method
