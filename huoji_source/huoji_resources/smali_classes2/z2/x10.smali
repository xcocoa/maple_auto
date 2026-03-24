.class public Lz2/x10;
.super Lz2/w10;
.source ""


# instance fields
.field private final OooO0Oo:[Lz2/a20;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Z[Lz2/a20;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lz2/w10;-><init>(Ljava/lang/Class;Ljava/lang/Class;Z)V

    iput-object p3, p0, Lz2/x10;->OooO0Oo:[Lz2/a20;

    return-void
.end method


# virtual methods
.method public declared-synchronized OooO00o()[Lz2/t10;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/x10;->OooO0Oo:[Lz2/a20;

    array-length v0, v0

    new-array v1, v0, [Lz2/t10;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lz2/x10;->OooO0Oo:[Lz2/a20;

    aget-object v3, v3, v2

    iget-object v5, v3, Lz2/a20;->OooO00o:Ljava/lang/String;

    iget-object v6, v3, Lz2/a20;->OooO0OO:Ljava/lang/Class;

    iget-object v7, v3, Lz2/a20;->OooO0O0:Lorg/greenrobot/eventbus/ThreadMode;

    iget v8, v3, Lz2/a20;->OooO0Oo:I

    iget-boolean v9, v3, Lz2/a20;->OooO0o0:Z

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lz2/w10;->OooO0oO(Ljava/lang/String;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)Lz2/t10;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
