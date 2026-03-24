.class public Lz2/b3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/b3$OooO00o;
    }
.end annotation


# static fields
.field private static OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lz2/b3;",
            ">;"
        }
    .end annotation
.end field

.field private static OooO0Oo:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private OooO00o:Landroid/content/Context;

.field private OooO0O0:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lz2/b3;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lz2/b3;->OooO00o:Landroid/content/Context;

    iput-object p2, p0, Lz2/b3;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/b3;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/b3;->OooO0O0:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/b3;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lz2/b3;->OooO00o:Landroid/content/Context;

    return-object p0
.end method

.method private static OooO0OO(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lz2/b3;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/b3;->OooO0OO:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v1, Lz2/b3;->OooO0OO:Ljava/util/Map;

    :cond_0
    sget-object v1, Lz2/b3;->OooO0OO:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/b3;

    if-nez v1, :cond_1

    new-instance v1, Lz2/b3;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lz2/b3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lz2/b3;->OooO0OO:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static OooO0o(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lz2/b3;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lz2/a3;->OooO0OO:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "method_query_pid"

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v1, "key_result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {p0, p1}, Lz2/b3;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Lz2/b3;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {p0, p1}, Lz2/b3;->OooO0o(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lz2/b3;->OooO0Oo:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p0, p1}, Lz2/b3;->OooO0OO(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0, p1}, Lz2/b3;->OooO0Oo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private OooO0o0(Lz2/z2;)Lz2/z2;
    .locals 4
    .param p1    # Lz2/z2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lz2/b3;->OooO00o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lz2/a3;->OooO0OO:Landroid/net/Uri;

    const-string v2, "method_query_value"

    iget-object v3, p0, Lz2/b3;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p1}, Lz2/z2;->OooO0O0()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Lz2/z2;

    invoke-direct {v0, p1}, Lz2/z2;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lz2/b3;->OooO00o:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lz2/a3;->OooO0OO:Landroid/net/Uri;

    const-string v2, "method_contain_key"

    iget-object v3, p0, Lz2/b3;->OooO0O0:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    new-instance v0, Lz2/b3$OooO00o;

    invoke-direct {v0, p0}, Lz2/b3$OooO00o;-><init>(Lz2/b3;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not support method getAll"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p1}, Lz2/z2;->OooOO0o(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOOOO(Z)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3;->OooO0o0(Lz2/z2;)Lz2/z2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lz2/z2;->OooO00o(Z)Z

    move-result p2

    :goto_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    invoke-static {p1}, Lz2/z2;->OooOO0o(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOOOo(F)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3;->OooO0o0(Lz2/z2;)Lz2/z2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lz2/z2;->OooO0OO(F)F

    move-result p2

    :goto_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p1}, Lz2/z2;->OooOO0o(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOOo0(I)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3;->OooO0o0(Lz2/z2;)Lz2/z2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lz2/z2;->OooO0Oo(I)I

    move-result p2

    :goto_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    invoke-static {p1}, Lz2/z2;->OooOO0o(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lz2/z2;->OooOOoo(J)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3;->OooO0o0(Lz2/z2;)Lz2/z2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lz2/z2;->OooO0o(J)J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lz2/z2;->OooOO0o(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOo0O(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3;->OooO0o0(Lz2/z2;)Lz2/z2;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lz2/z2;->OooO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lz2/z2;->OooOO0o(Ljava/lang/String;)Lz2/z2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/z2;->OooOo0(Ljava/util/Set;)Lz2/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/b3;->OooO0o0(Lz2/z2;)Lz2/z2;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lz2/z2;->OooO0oo()Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    return-object p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
