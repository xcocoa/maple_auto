.class public Lz2/oOo000o0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oOo000o0$OooO0O0;
    }
.end annotation


# instance fields
.field private final OooO00o:Lz2/o2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o2<",
            "Lz2/o0O0O0Oo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0O0:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lz2/oOo000o0$OooO0O0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/o2;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lz2/o2;-><init>(J)V

    iput-object v0, p0, Lz2/oOo000o0;->OooO00o:Lz2/o2;

    new-instance v0, Lz2/oOo000o0$OooO00o;

    invoke-direct {v0, p0}, Lz2/oOo000o0$OooO00o;-><init>(Lz2/oOo000o0;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lz2/v2;->OooO0o0(ILz2/v2$OooO0o;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lz2/oOo000o0;->OooO0O0:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private OooO00o(Lz2/o0O0O0Oo;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lz2/oOo000o0;->OooO0O0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oOo000o0$OooO0O0;

    :try_start_0
    iget-object v1, v0, Lz2/oOo000o0$OooO0O0;->OoooOoO:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lz2/o0O0O0Oo;->OooO00o(Ljava/security/MessageDigest;)V

    iget-object p1, v0, Lz2/oOo000o0$OooO0O0;->OoooOoO:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lz2/t2;->OooOo0o([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lz2/oOo000o0;->OooO0O0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lz2/oOo000o0;->OooO0O0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw p1
.end method


# virtual methods
.method public OooO0O0(Lz2/o0O0O0Oo;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lz2/oOo000o0;->OooO00o:Lz2/o2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/oOo000o0;->OooO00o:Lz2/o2;

    invoke-virtual {v1, p1}, Lz2/o2;->OooOO0O(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lz2/oOo000o0;->OooO00o(Lz2/o0O0O0Oo;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lz2/oOo000o0;->OooO00o:Lz2/o2;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, Lz2/oOo000o0;->OooO00o:Lz2/o2;

    invoke-virtual {v0, p1, v1}, Lz2/o2;->OooOOOO(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
