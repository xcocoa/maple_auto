.class public Lz2/x40$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/b40;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/x40;-><init>([Lorg/jdeferred/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/b40<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:I

.field public final synthetic OooO0O0:Lorg/jdeferred/Promise;

.field public final synthetic OooO0OO:Lz2/x40;


# direct methods
.method public constructor <init>(Lz2/x40;ILorg/jdeferred/Promise;)V
    .locals 0

    iput-object p1, p0, Lz2/x40$OooO0OO;->OooO0OO:Lz2/x40;

    iput p2, p0, Lz2/x40$OooO0OO;->OooO00o:I

    iput-object p3, p0, Lz2/x40$OooO0OO;->OooO0O0:Lorg/jdeferred/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lz2/x40$OooO0OO;->OooO0OO:Lz2/x40;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/x40$OooO0OO;->OooO0OO:Lz2/x40;

    invoke-virtual {v1}, Lz2/q40;->OooOo00()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lz2/x40$OooO0OO;->OooO0OO:Lz2/x40;

    invoke-static {v1}, Lz2/x40;->Oooo00o(Lz2/x40;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    iget-object v2, p0, Lz2/x40$OooO0OO;->OooO0OO:Lz2/x40;

    new-instance v3, Lz2/y40;

    invoke-static {v2}, Lz2/x40;->Oooo00O(Lz2/x40;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lz2/x40$OooO0OO;->OooO0OO:Lz2/x40;

    invoke-static {v5}, Lz2/x40;->Oooo0(Lz2/x40;)I

    move-result v5

    invoke-direct {v3, v4, v1, v5}, Lz2/y40;-><init>(III)V

    invoke-virtual {v2, v3}, Lz2/s40;->OooOO0O(Ljava/lang/Object;)Lz2/u30;

    iget-object v1, p0, Lz2/x40$OooO0OO;->OooO0OO:Lz2/x40;

    new-instance v2, Lz2/b50;

    iget v3, p0, Lz2/x40$OooO0OO;->OooO00o:I

    iget-object v4, p0, Lz2/x40$OooO0OO;->OooO0O0:Lorg/jdeferred/Promise;

    invoke-direct {v2, v3, v4, p1}, Lz2/b50;-><init>(ILorg/jdeferred/Promise;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lz2/s40;->OooOo0o(Ljava/lang/Object;)Lz2/u30;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
