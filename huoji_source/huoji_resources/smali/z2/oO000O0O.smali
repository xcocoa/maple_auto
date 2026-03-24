.class public final Lz2/oO000O0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/oO0Ooooo;
.implements Lz2/v2$OooOO0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/oO0Ooooo<",
        "TZ;>;",
        "Lz2/v2$OooOO0;"
    }
.end annotation


# static fields
.field private static final OooooO0:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lz2/oO000O0O<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final OoooOoO:Lz2/x2;

.field private OoooOoo:Lz2/oO0Ooooo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0Ooooo<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private Ooooo00:Z

.field private Ooooo0o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/oO000O0O$OooO00o;

    invoke-direct {v0}, Lz2/oO000O0O$OooO00o;-><init>()V

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lz2/v2;->OooO0o0(ILz2/v2$OooO0o;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    sput-object v0, Lz2/oO000O0O;->OooooO0:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lz2/x2;->OooO00o()Lz2/x2;

    move-result-object v0

    iput-object v0, p0, Lz2/oO000O0O;->OoooOoO:Lz2/x2;

    return-void
.end method

.method private OooO00o(Lz2/oO0Ooooo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/oO000O0O;->Ooooo0o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/oO000O0O;->Ooooo00:Z

    iput-object p1, p0, Lz2/oO000O0O;->OoooOoo:Lz2/oO0Ooooo;

    return-void
.end method

.method public static OooO0OO(Lz2/oO0Ooooo;)Lz2/oO000O0O;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/oO0Ooooo<",
            "TZ;>;)",
            "Lz2/oO000O0O<",
            "TZ;>;"
        }
    .end annotation

    sget-object v0, Lz2/oO000O0O;->OooooO0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oO000O0O;

    invoke-static {v0}, Lz2/r2;->OooO0Oo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/oO000O0O;

    invoke-direct {v0, p0}, Lz2/oO000O0O;->OooO00o(Lz2/oO0Ooooo;)V

    return-object v0
.end method

.method private OooO0Oo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/oO000O0O;->OoooOoo:Lz2/oO0Ooooo;

    sget-object v0, Lz2/oO000O0O;->OooooO0:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public OooO0O0()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO000O0O;->OoooOoo:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->OooO0O0()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized OooO0o0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/oO000O0O;->OoooOoO:Lz2/x2;

    invoke-virtual {v0}, Lz2/x2;->OooO0OO()V

    iget-boolean v0, p0, Lz2/oO000O0O;->Ooooo00:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/oO000O0O;->Ooooo00:Z

    iget-boolean v0, p0, Lz2/oO000O0O;->Ooooo0o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/oO000O0O;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public OooO0oO()Lz2/x2;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/oO000O0O;->OoooOoO:Lz2/x2;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO000O0O;->OoooOoo:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lz2/oO000O0O;->OoooOoo:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->getSize()I

    move-result v0

    return v0
.end method

.method public declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/oO000O0O;->OoooOoO:Lz2/x2;

    invoke-virtual {v0}, Lz2/x2;->OooO0OO()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/oO000O0O;->Ooooo0o:Z

    iget-boolean v0, p0, Lz2/oO000O0O;->Ooooo00:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/oO000O0O;->OoooOoo:Lz2/oO0Ooooo;

    invoke-interface {v0}, Lz2/oO0Ooooo;->recycle()V

    invoke-direct {p0}, Lz2/oO000O0O;->OooO0Oo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
