.class public Lz2/p40$OooO00o;
.super Lz2/v30;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/p40;->OooO0Oo(Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/v30<",
        "TD;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic Ooooo00:Ljava/util/concurrent/Future;

.field public final synthetic Ooooo0o:Lz2/p40;


# direct methods
.method public constructor <init>(Lz2/p40;Lorg/jdeferred/DeferredManager$StartPolicy;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p1, p0, Lz2/p40$OooO00o;->Ooooo0o:Lz2/p40;

    iput-object p3, p0, Lz2/p40$OooO00o;->Ooooo00:Ljava/util/concurrent/Future;

    invoke-direct {p0, p2}, Lz2/v30;-><init>(Lorg/jdeferred/DeferredManager$StartPolicy;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lz2/p40$OooO00o;->Ooooo00:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    throw v0

    :cond_0
    throw v0

    :catch_1
    move-exception v0

    throw v0
.end method
