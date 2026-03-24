.class public Lz2/ooo0Oo0$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$OooO;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ooo0Oo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0OO"
.end annotation


# instance fields
.field private final OooO00o:Lz2/oO00Oo0$OooO00o;

.field private volatile OooO0O0:Lz2/oO00Oo0;


# direct methods
.method public constructor <init>(Lz2/oO00Oo0$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/ooo0Oo0$OooO0OO;->OooO00o:Lz2/oO00Oo0$OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/oO00Oo0;
    .locals 1

    iget-object v0, p0, Lz2/ooo0Oo0$OooO0OO;->OooO0O0:Lz2/oO00Oo0;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/ooo0Oo0$OooO0OO;->OooO0O0:Lz2/oO00Oo0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/ooo0Oo0$OooO0OO;->OooO00o:Lz2/oO00Oo0$OooO00o;

    invoke-interface {v0}, Lz2/oO00Oo0$OooO00o;->build()Lz2/oO00Oo0;

    move-result-object v0

    iput-object v0, p0, Lz2/ooo0Oo0$OooO0OO;->OooO0O0:Lz2/oO00Oo0;

    :cond_0
    iget-object v0, p0, Lz2/ooo0Oo0$OooO0OO;->OooO0O0:Lz2/oO00Oo0;

    if-nez v0, :cond_1

    new-instance v0, Lz2/oOOoOOO0;

    invoke-direct {v0}, Lz2/oOOoOOO0;-><init>()V

    iput-object v0, p0, Lz2/ooo0Oo0$OooO0OO;->OooO0O0:Lz2/oO00Oo0;

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lz2/ooo0Oo0$OooO0OO;->OooO0O0:Lz2/oO00Oo0;

    return-object v0
.end method

.method public declared-synchronized OooO0O0()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lz2/ooo0Oo0$OooO0OO;->OooO0O0:Lz2/oO00Oo0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lz2/ooo0Oo0$OooO0OO;->OooO0O0:Lz2/oO00Oo0;

    invoke-interface {v0}, Lz2/oO00Oo0;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
