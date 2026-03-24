.class public Lz2/oO00o000$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/oO00o000;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# static fields
.field private static final OooO0O0:I = 0xa


# instance fields
.field private final OooO00o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lz2/oO00o000$OooO00o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lz2/oO00o000$OooO0O0;->OooO00o:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/oO00o000$OooO00o;
    .locals 2

    iget-object v0, p0, Lz2/oO00o000$OooO0O0;->OooO00o:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/oO00o000$OooO0O0;->OooO00o:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/oO00o000$OooO00o;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    new-instance v1, Lz2/oO00o000$OooO00o;

    invoke-direct {v1}, Lz2/oO00o000$OooO00o;-><init>()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public OooO0O0(Lz2/oO00o000$OooO00o;)V
    .locals 3

    iget-object v0, p0, Lz2/oO00o000$OooO0O0;->OooO00o:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/oO00o000$OooO0O0;->OooO00o:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lz2/oO00o000$OooO0O0;->OooO00o:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
