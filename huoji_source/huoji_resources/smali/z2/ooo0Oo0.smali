.class public Lz2/ooo0Oo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO00000;
.implements Lz2/oO0OO00o$OooO00o;
.implements Lz2/oO0000Oo$OooO00o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ooo0Oo0$OooO0O0;,
        Lz2/ooo0Oo0$OooO00o;,
        Lz2/ooo0Oo0$OooO0OO;,
        Lz2/ooo0Oo0$OooO0o;
    }
.end annotation


# static fields
.field private static final OooO:Ljava/lang/String; = "Engine"

.field private static final OooOO0:I = 0x96

.field private static final OooOO0O:Z


# instance fields
.field private final OooO00o:Lz2/oO000;

.field private final OooO0O0:Lz2/oO0000O;

.field private final OooO0OO:Lz2/oO0OO00o;

.field private final OooO0Oo:Lz2/ooo0Oo0$OooO0O0;

.field private final OooO0o:Lz2/ooo0Oo0$OooO0OO;

.field private final OooO0o0:Lz2/oO0Oo0oo;

.field private final OooO0oO:Lz2/ooo0Oo0$OooO00o;

.field private final OooO0oo:Lz2/o0OOO0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lz2/ooo0Oo0;->OooOO0O:Z

    return-void
.end method

.method public constructor <init>(Lz2/oO0OO00o;Lz2/oO00Oo0$OooO00o;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO000;Lz2/oO0000O;Lz2/o0OOO0;Lz2/ooo0Oo0$OooO0O0;Lz2/ooo0Oo0$OooO00o;Lz2/oO0Oo0oo;Z)V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object v6, p0

    move-object v7, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v7, v6, Lz2/ooo0Oo0;->OooO0OO:Lz2/oO0OO00o;

    new-instance v8, Lz2/ooo0Oo0$OooO0OO;

    move-object v0, p2

    invoke-direct {v8, p2}, Lz2/ooo0Oo0$OooO0OO;-><init>(Lz2/oO00Oo0$OooO00o;)V

    iput-object v8, v6, Lz2/ooo0Oo0;->OooO0o:Lz2/ooo0Oo0$OooO0OO;

    if-nez p9, :cond_0

    new-instance v0, Lz2/o0OOO0;

    move/from16 v1, p13

    invoke-direct {v0, v1}, Lz2/o0OOO0;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    :goto_0
    iput-object v0, v6, Lz2/ooo0Oo0;->OooO0oo:Lz2/o0OOO0;

    invoke-virtual {v0, p0}, Lz2/o0OOO0;->OooO0oO(Lz2/oO0000Oo$OooO00o;)V

    if-nez p8, :cond_1

    new-instance v0, Lz2/oO0000O;

    invoke-direct {v0}, Lz2/oO0000O;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v0, p8

    :goto_1
    iput-object v0, v6, Lz2/ooo0Oo0;->OooO0O0:Lz2/oO0000O;

    if-nez p7, :cond_2

    new-instance v0, Lz2/oO000;

    invoke-direct {v0}, Lz2/oO000;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p7

    :goto_2
    iput-object v0, v6, Lz2/ooo0Oo0;->OooO00o:Lz2/oO000;

    if-nez p10, :cond_3

    new-instance v9, Lz2/ooo0Oo0$OooO0O0;

    move-object v0, v9

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lz2/ooo0Oo0$OooO0O0;-><init>(Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO00000;)V

    goto :goto_3

    :cond_3
    move-object/from16 v9, p10

    :goto_3
    iput-object v9, v6, Lz2/ooo0Oo0;->OooO0Oo:Lz2/ooo0Oo0$OooO0O0;

    if-nez p11, :cond_4

    new-instance v0, Lz2/ooo0Oo0$OooO00o;

    invoke-direct {v0, v8}, Lz2/ooo0Oo0$OooO00o;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob$OooO;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p11

    :goto_4
    iput-object v0, v6, Lz2/ooo0Oo0;->OooO0oO:Lz2/ooo0Oo0$OooO00o;

    if-nez p12, :cond_5

    new-instance v0, Lz2/oO0Oo0oo;

    invoke-direct {v0}, Lz2/oO0Oo0oo;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v0, p12

    :goto_5
    iput-object v0, v6, Lz2/ooo0Oo0;->OooO0o0:Lz2/oO0Oo0oo;

    invoke-interface {p1, p0}, Lz2/oO0OO00o;->OooO0oo(Lz2/oO0OO00o$OooO00o;)V

    return-void
.end method

.method public constructor <init>(Lz2/oO0OO00o;Lz2/oO00Oo0$OooO00o;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Z)V
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lz2/ooo0Oo0;-><init>(Lz2/oO0OO00o;Lz2/oO00Oo0$OooO00o;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO0;Lz2/oO000;Lz2/oO0000O;Lz2/o0OOO0;Lz2/ooo0Oo0$OooO0O0;Lz2/ooo0Oo0$OooO00o;Lz2/oO0Oo0oo;Z)V

    return-void
.end method

.method private OooO(Lz2/o0O0O0Oo;Z)Lz2/oO0000Oo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Z)",
            "Lz2/oO0000Oo<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lz2/ooo0Oo0;->OooO0o(Lz2/o0O0O0Oo;)Lz2/oO0000Oo;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lz2/oO0000Oo;->OooO00o()V

    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0oo:Lz2/o0OOO0;

    invoke-virtual {v0, p1, p2}, Lz2/o0OOO0;->OooO00o(Lz2/o0O0O0Oo;Lz2/oO0000Oo;)V

    :cond_1
    return-object p2
.end method

.method private OooO0o(Lz2/o0O0O0Oo;)Lz2/oO0000Oo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            ")",
            "Lz2/oO0000Oo<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0OO:Lz2/oO0OO00o;

    invoke-interface {v0, p1}, Lz2/oO0OO00o;->OooO0oO(Lz2/o0O0O0Oo;)Lz2/oO0Ooooo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lz2/oO0000Oo;

    if-eqz v0, :cond_1

    check-cast p1, Lz2/oO0000Oo;

    goto :goto_0

    :cond_1
    new-instance v0, Lz2/oO0000Oo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lz2/oO0000Oo;-><init>(Lz2/oO0Ooooo;ZZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private OooO0oo(Lz2/o0O0O0Oo;Z)Lz2/oO0000Oo;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Z)",
            "Lz2/oO0000Oo<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lz2/ooo0Oo0;->OooO0oo:Lz2/o0OOO0;

    invoke-virtual {p2, p1}, Lz2/o0OOO0;->OooO0o0(Lz2/o0O0O0Oo;)Lz2/oO0000Oo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lz2/oO0000Oo;->OooO00o()V

    :cond_1
    return-object p1
.end method

.method private static OooOO0(Ljava/lang/String;JLz2/o0O0O0Oo;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lz2/n2;->OooO00o(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/oO0Ooooo;)V
    .locals 1
    .param p1    # Lz2/oO0Ooooo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0o0:Lz2/oO0Oo0oo;

    invoke-virtual {v0, p1}, Lz2/oO0Oo0oo;->OooO00o(Lz2/oO0Ooooo;)V

    return-void
.end method

.method public declared-synchronized OooO0O0(Lz2/o;Lz2/o0O0O0Oo;Lz2/oO0000Oo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o<",
            "*>;",
            "Lz2/o0O0O0Oo;",
            "Lz2/oO0000Oo<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3, p2, p0}, Lz2/oO0000Oo;->OooO0o(Lz2/o0O0O0Oo;Lz2/oO0000Oo$OooO00o;)V

    invoke-virtual {p3}, Lz2/oO0000Oo;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0oo:Lz2/o0OOO0;

    invoke-virtual {v0, p2, p3}, Lz2/o0OOO0;->OooO00o(Lz2/o0O0O0Oo;Lz2/oO0000Oo;)V

    :cond_0
    iget-object p3, p0, Lz2/ooo0Oo0;->OooO00o:Lz2/oO000;

    invoke-virtual {p3, p2, p1}, Lz2/oO000;->OooO0o0(Lz2/o0O0O0Oo;Lz2/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0OO(Lz2/o;Lz2/o0O0O0Oo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o<",
            "*>;",
            "Lz2/o0O0O0Oo;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/ooo0Oo0;->OooO00o:Lz2/oO000;

    invoke-virtual {v0, p2, p1}, Lz2/oO000;->OooO0o0(Lz2/o0O0O0Oo;Lz2/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized OooO0Oo(Lz2/o0O0O0Oo;Lz2/oO0000Oo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Lz2/oO0000Oo<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0oo:Lz2/o0OOO0;

    invoke-virtual {v0, p1}, Lz2/o0OOO0;->OooO0Oo(Lz2/o0O0O0Oo;)V

    invoke-virtual {p2}, Lz2/oO0000Oo;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0OO:Lz2/oO0OO00o;

    invoke-interface {v0, p1, p2}, Lz2/oO0OO00o;->OooO0o(Lz2/o0O0O0Oo;Lz2/oO0Ooooo;)Lz2/oO0Ooooo;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/ooo0Oo0;->OooO0o0:Lz2/oO0Oo0oo;

    invoke-virtual {p1, p2}, Lz2/oO0Oo0oo;->OooO00o(Lz2/oO0Ooooo;)V
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

.method public OooO0o0()V
    .locals 1

    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0o:Lz2/ooo0Oo0$OooO0OO;

    invoke-virtual {v0}, Lz2/ooo0Oo0$OooO0OO;->OooO00o()Lz2/oO00Oo0;

    move-result-object v0

    invoke-interface {v0}, Lz2/oO00Oo0;->clear()V

    return-void
.end method

.method public declared-synchronized OooO0oO(Lz2/o0O00o0;Ljava/lang/Object;Lz2/o0O0O0Oo;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lz2/o0oo0000;Ljava/util/Map;ZZLz2/o0O0OOO0;ZZZZLz2/q1;Ljava/util/concurrent/Executor;)Lz2/ooo0Oo0$OooO0o;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o0O00o0;",
            "Ljava/lang/Object;",
            "Lz2/o0O0O0Oo;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lz2/o0oo0000;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/o0O0o000<",
            "*>;>;ZZ",
            "Lz2/o0O0OOO0;",
            "ZZZZ",
            "Lz2/q1;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lz2/ooo0Oo0$OooO0o;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p14

    move-object/from16 v8, p18

    move-object/from16 v9, p19

    monitor-enter p0

    :try_start_0
    sget-boolean v10, Lz2/ooo0Oo0;->OooOO0O:Z

    if-eqz v10, :cond_0

    invoke-static {}, Lz2/n2;->OooO0O0()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v11, v2

    iget-object v13, v1, Lz2/ooo0Oo0;->OooO0O0:Lz2/oO0000O;

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v18, p10

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move-object/from16 v21, p13

    invoke-virtual/range {v13 .. v21}, Lz2/oO0000O;->OooO00o(Ljava/lang/Object;Lz2/o0O0O0Oo;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lz2/o0O0OOO0;)Lz2/oO00000o;

    move-result-object v13

    invoke-direct {v1, v13, v0}, Lz2/ooo0Oo0;->OooO0oo(Lz2/o0O0O0Oo;Z)Lz2/oO0000Oo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v8, v2, v0}, Lz2/q1;->OooO0O0(Lz2/oO0Ooooo;Lcom/bumptech/glide/load/DataSource;)V

    if-eqz v10, :cond_1

    const-string v0, "Loaded resource from active resources"

    invoke-static {v0, v11, v12, v13}, Lz2/ooo0Oo0;->OooOO0(Ljava/lang/String;JLz2/o0O0O0Oo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v3

    :cond_2
    :try_start_1
    invoke-direct {v1, v13, v0}, Lz2/ooo0Oo0;->OooO(Lz2/o0O0O0Oo;Z)Lz2/oO0000Oo;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v8, v2, v0}, Lz2/q1;->OooO0O0(Lz2/oO0Ooooo;Lcom/bumptech/glide/load/DataSource;)V

    if-eqz v10, :cond_3

    const-string v0, "Loaded resource from cache"

    invoke-static {v0, v11, v12, v13}, Lz2/ooo0Oo0;->OooOO0(Ljava/lang/String;JLz2/o0O0O0Oo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v3

    :cond_4
    :try_start_2
    iget-object v2, v1, Lz2/ooo0Oo0;->OooO00o:Lz2/oO000;

    move/from16 v15, p17

    invoke-virtual {v2, v13, v15}, Lz2/oO000;->OooO00o(Lz2/o0O0O0Oo;Z)Lz2/o;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v8, v9}, Lz2/o;->OooO0Oo(Lz2/q1;Ljava/util/concurrent/Executor;)V

    if-eqz v10, :cond_5

    const-string v0, "Added to existing load"

    invoke-static {v0, v11, v12, v13}, Lz2/ooo0Oo0;->OooOO0(Ljava/lang/String;JLz2/o0O0O0Oo;)V

    :cond_5
    new-instance v0, Lz2/ooo0Oo0$OooO0o;

    invoke-direct {v0, v1, v8, v2}, Lz2/ooo0Oo0$OooO0o;-><init>(Lz2/ooo0Oo0;Lz2/q1;Lz2/o;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_6
    :try_start_3
    iget-object v2, v1, Lz2/ooo0Oo0;->OooO0Oo:Lz2/ooo0Oo0$OooO0O0;

    move-object v3, v13

    move/from16 v4, p14

    move/from16 v5, p15

    move/from16 v6, p16

    move/from16 v7, p17

    invoke-virtual/range {v2 .. v7}, Lz2/ooo0Oo0$OooO0O0;->OooO00o(Lz2/o0O0O0Oo;ZZZZ)Lz2/o;

    move-result-object v0

    iget-object v14, v1, Lz2/ooo0Oo0;->OooO0oO:Lz2/ooo0Oo0$OooO00o;

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, v13

    move-object/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    move-object/from16 v22, p7

    move-object/from16 v23, p8

    move-object/from16 v24, p9

    move-object/from16 v25, p10

    move/from16 v26, p11

    move/from16 v27, p12

    move/from16 v28, p17

    move-object/from16 v29, p13

    move-object/from16 v30, v0

    invoke-virtual/range {v14 .. v30}, Lz2/ooo0Oo0$OooO00o;->OooO00o(Lz2/o0O00o0;Ljava/lang/Object;Lz2/oO00000o;Lz2/o0O0O0Oo;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lz2/o0oo0000;Ljava/util/Map;ZZZLz2/o0O0OOO0;Lcom/bumptech/glide/load/engine/DecodeJob$OooO0O0;)Lcom/bumptech/glide/load/engine/DecodeJob;

    move-result-object v2

    iget-object v3, v1, Lz2/ooo0Oo0;->OooO00o:Lz2/oO000;

    invoke-virtual {v3, v13, v0}, Lz2/oO000;->OooO0Oo(Lz2/o0O0O0Oo;Lz2/o;)V

    invoke-virtual {v0, v8, v9}, Lz2/o;->OooO0Oo(Lz2/q1;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v2}, Lz2/o;->OooOo00(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    if-eqz v10, :cond_7

    const-string v2, "Started new load"

    invoke-static {v2, v11, v12, v13}, Lz2/ooo0Oo0;->OooOO0(Ljava/lang/String;JLz2/o0O0O0Oo;)V

    :cond_7
    new-instance v2, Lz2/ooo0Oo0$OooO0o;

    invoke-direct {v2, v1, v8, v0}, Lz2/ooo0Oo0$OooO0o;-><init>(Lz2/ooo0Oo0;Lz2/q1;Lz2/o;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooOO0O(Lz2/oO0Ooooo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lz2/oO0000Oo;

    if-eqz v0, :cond_0

    check-cast p1, Lz2/oO0000Oo;

    invoke-virtual {p1}, Lz2/oO0000Oo;->OooO0o0()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public OooOO0o()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0Oo:Lz2/ooo0Oo0$OooO0O0;

    invoke-virtual {v0}, Lz2/ooo0Oo0$OooO0O0;->OooO0O0()V

    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0o:Lz2/ooo0Oo0$OooO0OO;

    invoke-virtual {v0}, Lz2/ooo0Oo0$OooO0OO;->OooO0O0()V

    iget-object v0, p0, Lz2/ooo0Oo0;->OooO0oo:Lz2/o0OOO0;

    invoke-virtual {v0}, Lz2/o0OOO0;->OooO0oo()V

    return-void
.end method
