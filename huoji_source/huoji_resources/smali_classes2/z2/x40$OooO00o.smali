.class public Lz2/x40$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/y30;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/x40;-><init>([Lorg/jdeferred/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:I

.field public final synthetic OooO0O0:Lorg/jdeferred/Promise;

.field public final synthetic OooO0OO:Lz2/x40;


# direct methods
.method public constructor <init>(Lz2/x40;ILorg/jdeferred/Promise;)V
    .locals 0

    iput-object p1, p0, Lz2/x40$OooO00o;->OooO0OO:Lz2/x40;

    iput p2, p0, Lz2/x40$OooO00o;->OooO00o:I

    iput-object p3, p0, Lz2/x40$OooO00o;->OooO0O0:Lorg/jdeferred/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lz2/x40$OooO00o;->OooO0OO:Lz2/x40;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/x40$OooO00o;->OooO0OO:Lz2/x40;

    invoke-virtual {v1}, Lz2/q40;->OooOo00()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lz2/x40$OooO00o;->OooO0OO:Lz2/x40;

    invoke-static {v1}, Lz2/x40;->Oooo000(Lz2/x40;)Lz2/z40;

    move-result-object v1

    iget v2, p0, Lz2/x40$OooO00o;->OooO00o:I

    new-instance v3, Lz2/c50;

    iget-object v4, p0, Lz2/x40$OooO00o;->OooO0O0:Lorg/jdeferred/Promise;

    invoke-direct {v3, v2, v4, p1}, Lz2/c50;-><init>(ILorg/jdeferred/Promise;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lz2/z40;->OooO0O0(ILz2/c50;)V

    iget-object p1, p0, Lz2/x40$OooO00o;->OooO0OO:Lz2/x40;

    invoke-static {p1}, Lz2/x40;->Oooo00O(Lz2/x40;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v1, p0, Lz2/x40$OooO00o;->OooO0OO:Lz2/x40;

    new-instance v2, Lz2/y40;

    invoke-static {v1}, Lz2/x40;->Oooo00o(Lz2/x40;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, p0, Lz2/x40$OooO00o;->OooO0OO:Lz2/x40;

    invoke-static {v4}, Lz2/x40;->Oooo0(Lz2/x40;)I

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lz2/y40;-><init>(III)V

    invoke-virtual {v1, v2}, Lz2/s40;->OooOO0O(Ljava/lang/Object;)Lz2/u30;

    iget-object v1, p0, Lz2/x40$OooO00o;->OooO0OO:Lz2/x40;

    invoke-static {v1}, Lz2/x40;->Oooo0(Lz2/x40;)I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lz2/x40$OooO00o;->OooO0OO:Lz2/x40;

    invoke-static {p1}, Lz2/x40;->Oooo000(Lz2/x40;)Lz2/z40;

    move-result-object v1

    invoke-virtual {p1, v1}, Lz2/s40;->OooOo0O(Ljava/lang/Object;)Lz2/u30;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
