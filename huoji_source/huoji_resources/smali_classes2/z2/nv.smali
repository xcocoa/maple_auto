.class public final Lz2/nv;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public OoooOoO:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

.field private OoooOoo:Landroid/os/Handler;

.field private final Ooooo00:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lz2/nv;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lz2/nv;->Ooooo00:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public OooO00o()Landroid/os/Handler;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lz2/nv;->Ooooo00:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lz2/nv;->OoooOoo:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lz2/mv;

    iget-object v1, p0, Lz2/nv;->OoooOoO:Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;

    invoke-direct {v0, v1}, Lz2/mv;-><init>(Lcom/cyjh/elfin/ui/activity/SweepCodeActivity;)V

    iput-object v0, p0, Lz2/nv;->OoooOoo:Landroid/os/Handler;

    iget-object v0, p0, Lz2/nv;->Ooooo00:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
