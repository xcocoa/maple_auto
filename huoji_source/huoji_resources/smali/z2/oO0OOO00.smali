.class public Lz2/oO0OOO00;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO00Oo0;


# static fields
.field private static OooO:Lz2/oO0OOO00; = null

.field private static final OooO0o:Ljava/lang/String; = "DiskLruCacheWrapper"

.field private static final OooO0oO:I = 0x1

.field private static final OooO0oo:I = 0x1


# instance fields
.field private final OooO00o:Lz2/oOo000o0;

.field private final OooO0O0:Ljava/io/File;

.field private final OooO0OO:J

.field private final OooO0Oo:Lz2/oO00o000;

.field private OooO0o0:Lz2/o0O00;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/oO00o000;

    invoke-direct {v0}, Lz2/oO00o000;-><init>()V

    iput-object v0, p0, Lz2/oO0OOO00;->OooO0Oo:Lz2/oO00o000;

    iput-object p1, p0, Lz2/oO0OOO00;->OooO0O0:Ljava/io/File;

    iput-wide p2, p0, Lz2/oO0OOO00;->OooO0OO:J

    new-instance p1, Lz2/oOo000o0;

    invoke-direct {p1}, Lz2/oOo000o0;-><init>()V

    iput-object p1, p0, Lz2/oO0OOO00;->OooO00o:Lz2/oOo000o0;

    return-void
.end method

.method public static OooO0Oo(Ljava/io/File;J)Lz2/oO00Oo0;
    .locals 1

    new-instance v0, Lz2/oO0OOO00;

    invoke-direct {v0, p0, p1, p2}, Lz2/oO0OOO00;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method private declared-synchronized OooO0o()Lz2/o0O00;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/oO0OOO00;->OooO0o0:Lz2/o0O00;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/oO0OOO00;->OooO0O0:Ljava/io/File;

    iget-wide v1, p0, Lz2/oO0OOO00;->OooO0OO:J

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lz2/o0O00;->oo0o0Oo(Ljava/io/File;IIJ)Lz2/o0O00;

    move-result-object v0

    iput-object v0, p0, Lz2/oO0OOO00;->OooO0o0:Lz2/o0O00;

    :cond_0
    iget-object v0, p0, Lz2/oO0OOO00;->OooO0o0:Lz2/o0O00;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized OooO0o0(Ljava/io/File;J)Lz2/oO00Oo0;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lz2/oO0OOO00;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/oO0OOO00;->OooO:Lz2/oO0OOO00;

    if-nez v1, :cond_0

    new-instance v1, Lz2/oO0OOO00;

    invoke-direct {v1, p0, p1, p2}, Lz2/oO0OOO00;-><init>(Ljava/io/File;J)V

    sput-object v1, Lz2/oO0OOO00;->OooO:Lz2/oO0OOO00;

    :cond_0
    sget-object p0, Lz2/oO0OOO00;->OooO:Lz2/oO0OOO00;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized OooO0oO()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lz2/oO0OOO00;->OooO0o0:Lz2/o0O00;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public OooO00o(Lz2/o0O0O0Oo;Lz2/oO00Oo0$OooO0O0;)V
    .locals 4

    const-string v0, "DiskLruCacheWrapper"

    iget-object v1, p0, Lz2/oO0OOO00;->OooO00o:Lz2/oOo000o0;

    invoke-virtual {v1, p1}, Lz2/oOo000o0;->OooO0O0(Lz2/o0O0O0Oo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lz2/oO0OOO00;->OooO0Oo:Lz2/oO00o000;

    invoke-virtual {v2, v1}, Lz2/oO00o000;->OooO00o(Ljava/lang/String;)V

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lz2/oO0OOO00;->OooO0o()Lz2/o0O00;

    move-result-object p1

    invoke-virtual {p1, v1}, Lz2/o0O00;->o0ooOO0(Ljava/lang/String;)Lz2/o0O00$OooO;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    iget-object p1, p0, Lz2/oO0OOO00;->OooO0Oo:Lz2/oO00o000;

    invoke-virtual {p1, v1}, Lz2/oO00o000;->OooO0O0(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1, v1}, Lz2/o0O00;->o00oO0o(Ljava/lang/String;)Lz2/o0O00$OooO0OO;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p1, v2}, Lz2/o0O00$OooO0OO;->OooO0o(I)Ljava/io/File;

    move-result-object v2

    invoke-interface {p2, v2}, Lz2/oO00Oo0$OooO0O0;->OooO00o(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lz2/o0O00$OooO0OO;->OooO0o0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lz2/o0O00$OooO0OO;->OooO0O0()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lz2/o0O00$OooO0OO;->OooO0O0()V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had two simultaneous puts for: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    :try_start_5
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Unable to put to disk cache"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lz2/oO0OOO00;->OooO0Oo:Lz2/oO00o000;

    invoke-virtual {p1, v1}, Lz2/oO00o000;->OooO0O0(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lz2/oO0OOO00;->OooO0Oo:Lz2/oO00o000;

    invoke-virtual {p2, v1}, Lz2/oO00o000;->OooO0O0(Ljava/lang/String;)V

    throw p1
.end method

.method public OooO0O0(Lz2/o0O0O0Oo;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lz2/oO0OOO00;->OooO00o:Lz2/oOo000o0;

    invoke-virtual {v0, p1}, Lz2/oOo000o0;->OooO0O0(Lz2/o0O0O0Oo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0}, Lz2/oO0OOO00;->OooO0o()Lz2/o0O00;

    move-result-object v2

    invoke-virtual {v2, v0}, Lz2/o0O00;->o0ooOO0(Ljava/lang/String;)Lz2/o0O00$OooO;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lz2/o0O00$OooO;->OooO0O0(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Unable to get from disk cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public OooO0OO(Lz2/o0O0O0Oo;)V
    .locals 2

    iget-object v0, p0, Lz2/oO0OOO00;->OooO00o:Lz2/oOo000o0;

    invoke-virtual {v0, p1}, Lz2/oOo000o0;->OooO0O0(Lz2/o0O0O0Oo;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-direct {p0}, Lz2/oO0OOO00;->OooO0o()Lz2/o0O00;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/o0O00;->o000000o(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "DiskLruCacheWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to delete from disk cache"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lz2/oO0OOO00;->OooO0o()Lz2/o0O00;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o0O00;->o00ooo()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lz2/oO0OOO00;->OooO0oO()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache or disk cache cleared externally"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    invoke-direct {p0}, Lz2/oO0OOO00;->OooO0oO()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
