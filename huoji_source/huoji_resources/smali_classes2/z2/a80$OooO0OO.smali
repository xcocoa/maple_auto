.class public Lz2/a80$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/a80;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic OoooOoo:Lz2/a80;


# direct methods
.method private constructor <init>(Lz2/a80;)V
    .locals 1

    iput-object p1, p0, Lz2/a80$OooO0OO;->OoooOoo:Lz2/a80;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lz2/a80$OooO0OO;->OoooOoO:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Lz2/a80;Lz2/a80$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/a80$OooO0OO;-><init>(Lz2/a80;)V

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lz2/a80$OooO0OO;->OoooOoO:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public OooO0O0()Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lz2/a80$OooO0OO;->OoooOoO:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lz2/a80$OooO0OO;->OoooOoo:Lz2/a80;

    invoke-static {v0}, Lz2/a80;->OooO0O0(Lz2/a80;)Lz2/w90;

    move-result-object v0

    invoke-virtual {v0}, Lz2/w90;->OooO00o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/a80$OooO0OO;->OooO0O0()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
