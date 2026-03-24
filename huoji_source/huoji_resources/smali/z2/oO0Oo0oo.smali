.class public Lz2/oO0Oo0oo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/oO0Oo0oo$OooO00o;
    }
.end annotation


# instance fields
.field private OooO00o:Z

.field private final OooO0O0:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lz2/oO0Oo0oo$OooO00o;

    invoke-direct {v2}, Lz2/oO0Oo0oo$OooO00o;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lz2/oO0Oo0oo;->OooO0O0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public declared-synchronized OooO00o(Lz2/oO0Ooooo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/oO0Ooooo<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lz2/oO0Oo0oo;->OooO00o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/oO0Oo0oo;->OooO0O0:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lz2/oO0Oo0oo;->OooO00o:Z

    invoke-interface {p1}, Lz2/oO0Ooooo;->recycle()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/oO0Oo0oo;->OooO00o:Z
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
