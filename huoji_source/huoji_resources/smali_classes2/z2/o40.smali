.class public abstract Lz2/o40;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field public final OooO00o:Lorg/slf4j/Logger;

.field private final OooO0O0:Lz2/s40;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/s40<",
            "TResult;",
            "Ljava/lang/Throwable;",
            "TProgress;>;"
        }
    .end annotation
.end field

.field private final OooO0OO:Lorg/jdeferred/DeferredManager$StartPolicy;

.field private OooO0Oo:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-class v0, Lz2/o40;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lz2/o40;->OooO00o:Lorg/slf4j/Logger;

    new-instance v0, Lz2/s40;

    invoke-direct {v0}, Lz2/s40;-><init>()V

    iput-object v0, p0, Lz2/o40;->OooO0O0:Lz2/s40;

    sget-object v0, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object v0, p0, Lz2/o40;->OooO0OO:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/DeferredManager$StartPolicy;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-class v0, Lz2/o40;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lz2/o40;->OooO00o:Lorg/slf4j/Logger;

    new-instance v0, Lz2/s40;

    invoke-direct {v0}, Lz2/s40;-><init>()V

    iput-object v0, p0, Lz2/o40;->OooO0O0:Lz2/s40;

    iput-object p1, p0, Lz2/o40;->OooO0OO:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-void
.end method


# virtual methods
.method public varargs abstract OooO00o([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public OooO0O0()Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    iget-object v0, p0, Lz2/o40;->OooO0OO:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object v0
.end method

.method public final OooO0OO(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0Oo()Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Promise<",
            "TResult;",
            "Ljava/lang/Throwable;",
            "TProgress;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o40;->OooO0O0:Lz2/s40;

    invoke-virtual {v0}, Lz2/s40;->OooOO0o()Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method

.method public final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lz2/o40;->OooO00o([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    iput-object p1, p0, Lz2/o40;->OooO0Oo:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCancelled()V
    .locals 2

    iget-object v0, p0, Lz2/o40;->OooO0O0:Lz2/s40;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {v0, v1}, Lz2/s40;->OooOo0o(Ljava/lang/Object;)Lz2/u30;

    return-void
.end method

.method public final onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object p1, p0, Lz2/o40;->OooO0O0:Lz2/s40;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p1, v0}, Lz2/s40;->OooOo0o(Ljava/lang/Object;)Lz2/u30;

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/o40;->OooO0Oo:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lz2/o40;->OooO0O0:Lz2/s40;

    invoke-virtual {p1, v0}, Lz2/s40;->OooOo0o(Ljava/lang/Object;)Lz2/u30;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/o40;->OooO0O0:Lz2/s40;

    invoke-virtual {v0, p1}, Lz2/s40;->OooOo0O(Ljava/lang/Object;)Lz2/u30;

    :goto_0
    return-void
.end method

.method public final varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lz2/o40;->OooO00o:Lorg/slf4j/Logger;

    const-string v1, "There were multiple progress values.  Only the first one was used!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object v0, p0, Lz2/o40;->OooO0O0:Lz2/s40;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lz2/s40;->OooOO0O(Ljava/lang/Object;)Lz2/u30;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lz2/o40;->OooO0O0:Lz2/s40;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lz2/s40;->OooOO0O(Ljava/lang/Object;)Lz2/u30;

    :cond_2
    :goto_1
    return-void
.end method
