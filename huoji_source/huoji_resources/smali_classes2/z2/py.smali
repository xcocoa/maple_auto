.class public final Lz2/py;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/py$OooO00o;
    }
.end annotation


# static fields
.field public static final synthetic OooOOOO:Z


# instance fields
.field private OooO:I

.field public final OooO00o:Lz2/pw;

.field private OooO0O0:Lz2/oy$OooO00o;

.field private OooO0OO:Lz2/ux;

.field private final OooO0Oo:Lz2/zw;

.field public final OooO0o:Lz2/gx;

.field public final OooO0o0:Lz2/tw;

.field private final OooO0oO:Ljava/lang/Object;

.field private final OooO0oo:Lz2/oy;

.field private OooOO0:Lz2/my;

.field private OooOO0O:Z

.field private OooOO0o:Z

.field private OooOOO:Lz2/sy;

.field private OooOOO0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lz2/zw;Lz2/pw;Lz2/tw;Lz2/gx;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    iput-object p2, p0, Lz2/py;->OooO00o:Lz2/pw;

    iput-object p3, p0, Lz2/py;->OooO0o0:Lz2/tw;

    iput-object p4, p0, Lz2/py;->OooO0o:Lz2/gx;

    new-instance p1, Lz2/oy;

    invoke-direct {p0}, Lz2/py;->OooOOOo()Lz2/ny;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3, p4}, Lz2/oy;-><init>(Lz2/pw;Lz2/ny;Lz2/tw;Lz2/gx;)V

    iput-object p1, p0, Lz2/py;->OooO0oo:Lz2/oy;

    iput-object p5, p0, Lz2/py;->OooO0oO:Ljava/lang/Object;

    return-void
.end method

.method private OooO0o(IIIIZ)Lz2/my;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lz2/py;->OooOO0o:Z

    if-nez v0, :cond_12

    iget-object v0, v1, Lz2/py;->OooOOO:Lz2/sy;

    if-nez v0, :cond_11

    iget-boolean v0, v1, Lz2/py;->OooOOO0:Z

    if-nez v0, :cond_10

    iget-object v0, v1, Lz2/py;->OooOO0:Lz2/my;

    invoke-direct/range {p0 .. p0}, Lz2/py;->OooOOO()Ljava/net/Socket;

    move-result-object v3

    iget-object v4, v1, Lz2/py;->OooOO0:Lz2/my;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    iget-boolean v6, v1, Lz2/py;->OooOO0O:Z

    if-nez v6, :cond_1

    move-object v0, v5

    :cond_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_3

    sget-object v8, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object v9, v1, Lz2/py;->OooO0Oo:Lz2/zw;

    iget-object v10, v1, Lz2/py;->OooO00o:Lz2/pw;

    invoke-virtual {v8, v9, v10, v1, v5}, Lz2/xx;->OooO0oo(Lz2/zw;Lz2/pw;Lz2/py;Lz2/ux;)Lz2/my;

    iget-object v8, v1, Lz2/py;->OooOO0:Lz2/my;

    if-eqz v8, :cond_2

    move-object v4, v8

    const/4 v9, 0x1

    move-object v8, v5

    goto :goto_2

    :cond_2
    iget-object v8, v1, Lz2/py;->OooO0OO:Lz2/ux;

    goto :goto_1

    :cond_3
    move-object v8, v5

    :goto_1
    const/4 v9, 0x0

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v3}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    if-eqz v0, :cond_4

    iget-object v2, v1, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v3, v1, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v2, v3, v0}, Lz2/gx;->OooO0oo(Lz2/tw;Lz2/yw;)V

    :cond_4
    if-eqz v9, :cond_5

    iget-object v0, v1, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v2, v1, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v0, v2, v4}, Lz2/gx;->OooO0oO(Lz2/tw;Lz2/yw;)V

    :cond_5
    if-eqz v4, :cond_6

    return-object v4

    :cond_6
    if-nez v8, :cond_8

    iget-object v0, v1, Lz2/py;->OooO0O0:Lz2/oy$OooO00o;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lz2/oy$OooO00o;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, v1, Lz2/py;->OooO0oo:Lz2/oy;

    invoke-virtual {v0}, Lz2/oy;->OooO0o0()Lz2/oy$OooO00o;

    move-result-object v0

    iput-object v0, v1, Lz2/py;->OooO0O0:Lz2/oy$OooO00o;

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    iget-object v3, v1, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter v3

    :try_start_1
    iget-boolean v2, v1, Lz2/py;->OooOOO0:Z

    if-nez v2, :cond_f

    if-eqz v0, :cond_a

    iget-object v0, v1, Lz2/py;->OooO0O0:Lz2/oy$OooO00o;

    invoke-virtual {v0}, Lz2/oy$OooO00o;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_a

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lz2/ux;

    sget-object v12, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object v13, v1, Lz2/py;->OooO0Oo:Lz2/zw;

    iget-object v14, v1, Lz2/py;->OooO00o:Lz2/pw;

    invoke-virtual {v12, v13, v14, v1, v11}, Lz2/xx;->OooO0oo(Lz2/zw;Lz2/pw;Lz2/py;Lz2/ux;)Lz2/my;

    iget-object v12, v1, Lz2/py;->OooOO0:Lz2/my;

    if-eqz v12, :cond_9

    iput-object v11, v1, Lz2/py;->OooO0OO:Lz2/ux;

    move-object v4, v12

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-nez v9, :cond_c

    if-nez v8, :cond_b

    iget-object v0, v1, Lz2/py;->OooO0O0:Lz2/oy$OooO00o;

    invoke-virtual {v0}, Lz2/oy$OooO00o;->OooO0OO()Lz2/ux;

    move-result-object v8

    :cond_b
    iput-object v8, v1, Lz2/py;->OooO0OO:Lz2/ux;

    iput v7, v1, Lz2/py;->OooO:I

    new-instance v4, Lz2/my;

    iget-object v0, v1, Lz2/py;->OooO0Oo:Lz2/zw;

    invoke-direct {v4, v0, v8}, Lz2/my;-><init>(Lz2/zw;Lz2/ux;)V

    invoke-virtual {v1, v4, v7}, Lz2/py;->OooO00o(Lz2/my;Z)V

    :cond_c
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v9, :cond_d

    :goto_6
    iget-object v0, v1, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v2, v1, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v0, v2, v4}, Lz2/gx;->OooO0oO(Lz2/tw;Lz2/yw;)V

    return-object v4

    :cond_d
    iget-object v0, v1, Lz2/py;->OooO0o0:Lz2/tw;

    iget-object v2, v1, Lz2/py;->OooO0o:Lz2/gx;

    move-object v10, v4

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Lz2/my;->OooO0oo(IIIIZLz2/tw;Lz2/gx;)V

    invoke-direct/range {p0 .. p0}, Lz2/py;->OooOOOo()Lz2/ny;

    move-result-object v0

    invoke-virtual {v4}, Lz2/my;->OooO0O0()Lz2/ux;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/ny;->OooO00o(Lz2/ux;)V

    iget-object v2, v1, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter v2

    :try_start_2
    iput-boolean v6, v1, Lz2/py;->OooOO0O:Z

    sget-object v0, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object v3, v1, Lz2/py;->OooO0Oo:Lz2/zw;

    invoke-virtual {v0, v3, v4}, Lz2/xx;->OooOO0o(Lz2/zw;Lz2/my;)V

    invoke-virtual {v4}, Lz2/my;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object v3, v1, Lz2/py;->OooO0Oo:Lz2/zw;

    iget-object v4, v1, Lz2/py;->OooO00o:Lz2/pw;

    invoke-virtual {v0, v3, v4, v1}, Lz2/xx;->OooO0o(Lz2/zw;Lz2/pw;Lz2/py;)Ljava/net/Socket;

    move-result-object v5

    iget-object v4, v1, Lz2/py;->OooOO0:Lz2/my;

    :cond_e
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v5}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_f
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_10
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "codec != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private OooO0o0(ZZZ)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iput-object v0, p0, Lz2/py;->OooOOO:Lz2/sy;

    :cond_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iput-boolean p3, p0, Lz2/py;->OooOO0o:Z

    :cond_1
    iget-object p2, p0, Lz2/py;->OooOO0:Lz2/my;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_2

    iput-boolean p3, p2, Lz2/my;->OooOO0O:Z

    :cond_2
    iget-object p1, p0, Lz2/py;->OooOOO:Lz2/sy;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lz2/py;->OooOO0o:Z

    if-nez p1, :cond_3

    iget-boolean p1, p2, Lz2/my;->OooOO0O:Z

    if-eqz p1, :cond_5

    :cond_3
    invoke-direct {p0, p2}, Lz2/py;->OooOO0o(Lz2/my;)V

    iget-object p1, p0, Lz2/py;->OooOO0:Lz2/my;

    iget-object p1, p1, Lz2/my;->OooOOO:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lz2/py;->OooOO0:Lz2/my;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lz2/my;->OooOOOO:J

    sget-object p1, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object p2, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    iget-object p3, p0, Lz2/py;->OooOO0:Lz2/my;

    invoke-virtual {p1, p2, p3}, Lz2/xx;->OooO0o0(Lz2/zw;Lz2/my;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lz2/py;->OooOO0:Lz2/my;

    invoke-virtual {p1}, Lz2/my;->OooO0Oo()Ljava/net/Socket;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    iput-object v0, p0, Lz2/py;->OooOO0:Lz2/my;

    move-object v0, p1

    :cond_5
    return-object v0
.end method

.method private OooO0oO(IIIIZZ)Lz2/my;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-direct/range {p0 .. p5}, Lz2/py;->OooO0o(IIIIZ)Lz2/my;

    move-result-object v0

    iget-object v1, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lz2/my;->OooOO0o:I

    if-nez v2, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p6}, Lz2/my;->OooOOOo(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lz2/py;->OooOO0()V

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private OooOO0o(Lz2/my;)V
    .locals 3

    iget-object v0, p1, Lz2/my;->OooOOO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lz2/my;->OooOOO:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    iget-object p1, p1, Lz2/my;->OooOOO:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private OooOOO()Ljava/net/Socket;
    .locals 2

    iget-object v0, p0, Lz2/py;->OooOO0:Lz2/my;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lz2/my;->OooOO0O:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lz2/py;->OooO0o0(ZZZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private OooOOOo()Lz2/ny;
    .locals 2

    sget-object v0, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object v1, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    invoke-virtual {v0, v1}, Lz2/xx;->OooOOO0(Lz2/zw;)Lz2/ny;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OooO(Lz2/ox;Lz2/lx$OooO00o;Z)Lz2/sy;
    .locals 7

    invoke-interface {p2}, Lz2/lx$OooO00o;->OooO0oo()I

    move-result v1

    invoke-interface {p2}, Lz2/lx$OooO00o;->OooO0O0()I

    move-result v2

    invoke-interface {p2}, Lz2/lx$OooO00o;->OooO0OO()I

    move-result v3

    invoke-virtual {p1}, Lz2/ox;->OooOo0o()I

    move-result v4

    invoke-virtual {p1}, Lz2/ox;->OooOoo()Z

    move-result v5

    move-object v0, p0

    move v6, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lz2/py;->OooO0oO(IIIIZZ)Lz2/my;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p0}, Lz2/my;->OooOOo(Lz2/ox;Lz2/lx$OooO00o;Lz2/py;)Lz2/sy;

    move-result-object p1

    iget-object p2, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object p1, p0, Lz2/py;->OooOOO:Lz2/sy;

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public OooO00o(Lz2/my;Z)V
    .locals 1

    iget-object v0, p0, Lz2/py;->OooOO0:Lz2/my;

    if-nez v0, :cond_0

    iput-object p1, p0, Lz2/py;->OooOO0:Lz2/my;

    iput-boolean p2, p0, Lz2/py;->OooOO0O:Z

    iget-object p1, p1, Lz2/my;->OooOOO:Ljava/util/List;

    new-instance p2, Lz2/py$OooO00o;

    iget-object v0, p0, Lz2/py;->OooO0oO:Ljava/lang/Object;

    invoke-direct {p2, p0, v0}, Lz2/py$OooO00o;-><init>(Lz2/py;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public OooO0O0()V
    .locals 3

    iget-object v0, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lz2/py;->OooOOO0:Z

    iget-object v1, p0, Lz2/py;->OooOOO:Lz2/sy;

    iget-object v2, p0, Lz2/py;->OooOO0:Lz2/my;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lz2/sy;->cancel()V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lz2/my;->OooO0oO()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public OooO0OO()Lz2/sy;
    .locals 2

    iget-object v0, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/py;->OooOOO:Lz2/sy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized OooO0Oo()Lz2/my;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/py;->OooOO0:Lz2/my;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooO0oo()Z
    .locals 1

    iget-object v0, p0, Lz2/py;->OooO0OO:Lz2/ux;

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/py;->OooO0O0:Lz2/oy$OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/oy$OooO00o;->OooO0O0()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lz2/py;->OooO0oo:Lz2/oy;

    invoke-virtual {v0}, Lz2/oy;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public OooOO0()V
    .locals 4

    iget-object v0, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/py;->OooOO0:Lz2/my;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lz2/py;->OooO0o0(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lz2/py;->OooOO0:Lz2/my;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v2, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v0, v2, v1}, Lz2/gx;->OooO0oo(Lz2/tw;Lz2/yw;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public OooOO0O()V
    .locals 5

    iget-object v0, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/py;->OooOO0:Lz2/my;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2, v3}, Lz2/py;->OooO0o0(ZZZ)Ljava/net/Socket;

    move-result-object v2

    iget-object v3, p0, Lz2/py;->OooOO0:Lz2/my;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v1, v4

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    if-eqz v1, :cond_1

    sget-object v0, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object v2, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v0, v2, v4}, Lz2/xx;->OooOOOo(Lz2/tw;Ljava/io/IOException;)Ljava/io/IOException;

    iget-object v0, p0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v2, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v0, v2, v1}, Lz2/gx;->OooO0oo(Lz2/tw;Lz2/yw;)V

    iget-object v0, p0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v1, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v0, v1}, Lz2/gx;->OooO00o(Lz2/tw;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public OooOOO0(Lz2/my;)Ljava/net/Socket;
    .locals 3

    iget-object v0, p0, Lz2/py;->OooOOO:Lz2/sy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/py;->OooOO0:Lz2/my;

    iget-object v0, v0, Lz2/my;->OooOOO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz2/py;->OooOO0:Lz2/my;

    iget-object v0, v0, Lz2/my;->OooOOO:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-direct {p0, v1, v2, v2}, Lz2/py;->OooO0o0(ZZZ)Ljava/net/Socket;

    move-result-object v1

    iput-object p1, p0, Lz2/py;->OooOO0:Lz2/my;

    iget-object p1, p1, Lz2/my;->OooOOO:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public OooOOOO()Lz2/ux;
    .locals 1

    iget-object v0, p0, Lz2/py;->OooO0OO:Lz2/ux;

    return-object v0
.end method

.method public OooOOo(ZLz2/sy;JLjava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v1, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {v0, v1, p3, p4}, Lz2/gx;->OooOOOo(Lz2/tw;J)V

    iget-object p3, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter p3

    if-eqz p2, :cond_5

    :try_start_0
    iget-object p4, p0, Lz2/py;->OooOOO:Lz2/sy;

    if-ne p2, p4, :cond_5

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p4, p0, Lz2/py;->OooOO0:Lz2/my;

    iget v0, p4, Lz2/my;->OooOO0o:I

    add-int/2addr v0, p2

    iput v0, p4, Lz2/my;->OooOO0o:I

    :cond_0
    iget-object p4, p0, Lz2/py;->OooOO0:Lz2/my;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lz2/py;->OooO0o0(ZZZ)Ljava/net/Socket;

    move-result-object p1

    iget-object p2, p0, Lz2/py;->OooOO0:Lz2/my;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object p4, v0

    :cond_1
    iget-boolean p2, p0, Lz2/py;->OooOO0o:Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    if-eqz p4, :cond_2

    iget-object p1, p0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object p3, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {p1, p3, p4}, Lz2/gx;->OooO0oo(Lz2/tw;Lz2/yw;)V

    :cond_2
    if-eqz p5, :cond_3

    sget-object p1, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object p2, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {p1, p2, p5}, Lz2/xx;->OooOOOo(Lz2/tw;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    iget-object p2, p0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object p3, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {p2, p3, p1}, Lz2/gx;->OooO0O0(Lz2/tw;Ljava/io/IOException;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    sget-object p1, Lz2/xx;->OooO00o:Lz2/xx;

    iget-object p2, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {p1, p2, v0}, Lz2/xx;->OooOOOo(Lz2/tw;Ljava/io/IOException;)Ljava/io/IOException;

    iget-object p1, p0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object p2, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {p1, p2}, Lz2/gx;->OooO00o(Lz2/tw;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "expected "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lz2/py;->OooOOO:Lz2/sy;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " but was "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public OooOOo0(Ljava/io/IOException;)V
    .locals 6

    iget-object v0, p0, Lz2/py;->OooO0Oo:Lz2/zw;

    monitor-enter v0

    :try_start_0
    instance-of v1, p1, Lokhttp3/internal/http2/StreamResetException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    check-cast p1, Lokhttp3/internal/http2/StreamResetException;

    iget-object p1, p1, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne p1, v1, :cond_0

    iget p1, p0, Lz2/py;->OooO:I

    add-int/2addr p1, v4

    iput p1, p0, Lz2/py;->OooO:I

    if-le p1, v4, :cond_5

    goto :goto_0

    :cond_0
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    if-eq p1, v1, :cond_5

    :cond_1
    :goto_0
    iput-object v3, p0, Lz2/py;->OooO0OO:Lz2/ux;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lz2/py;->OooOO0:Lz2/my;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lz2/my;->OooOOo0()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lz2/py;->OooOO0:Lz2/my;

    iget v1, v1, Lz2/my;->OooOO0o:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lz2/py;->OooO0OO:Lz2/ux;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v5, p0, Lz2/py;->OooO0oo:Lz2/oy;

    invoke-virtual {v5, v1, p1}, Lz2/oy;->OooO00o(Lz2/ux;Ljava/io/IOException;)V

    goto :goto_0

    :cond_4
    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    iget-object v1, p0, Lz2/py;->OooOO0:Lz2/my;

    invoke-direct {p0, p1, v2, v4}, Lz2/py;->OooO0o0(ZZZ)Ljava/net/Socket;

    move-result-object p1

    iget-object v2, p0, Lz2/py;->OooOO0:Lz2/my;

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lz2/py;->OooOO0O:Z

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v1

    :cond_7
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lz2/zx;->OooO(Ljava/net/Socket;)V

    if-eqz v3, :cond_8

    iget-object p1, p0, Lz2/py;->OooO0o:Lz2/gx;

    iget-object v0, p0, Lz2/py;->OooO0o0:Lz2/tw;

    invoke-virtual {p1, v0, v3}, Lz2/gx;->OooO0oo(Lz2/tw;Lz2/yw;)V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/py;->OooO0Oo()Lz2/my;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/my;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/py;->OooO00o:Lz2/pw;

    invoke-virtual {v0}, Lz2/pw;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
