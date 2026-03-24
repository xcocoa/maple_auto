.class public abstract Lz2/p40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/jdeferred/DeferredManager;


# instance fields
.field public final OooO00o:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lz2/p40;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lz2/p40;->OooO00o:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public OooO(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    return-object p1
.end method

.method public varargs OooO00o([Ljava/lang/Runnable;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Lz2/z40;",
            "Lz2/b50;",
            "Lz2/y40;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/p40;->OooOOOO([Ljava/lang/Object;)V

    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v2, v2, Lz2/x30;

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Lz2/x30;

    invoke-virtual {p0, v2}, Lz2/p40;->OooOO0O(Lz2/x30;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lz2/p40;->OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lz2/p40;->OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/Promise;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Lz2/z40;",
            "Lz2/b50;",
            "Lz2/y40;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/p40;->OooOOOO([Ljava/lang/Object;)V

    new-instance v0, Lz2/x40;

    invoke-direct {v0, p1}, Lz2/x40;-><init>([Lorg/jdeferred/Promise;)V

    invoke-virtual {v0}, Lz2/s40;->OooOO0o()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs OooO0OO([Lz2/x30;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz2/x30<",
            "*>;)",
            "Lorg/jdeferred/Promise<",
            "Lz2/z40;",
            "Lz2/b50;",
            "Lz2/y40;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/p40;->OooOOOO([Ljava/lang/Object;)V

    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lz2/p40;->OooOO0O(Lz2/x30;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz2/p40;->OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz2/p40$OooO00o;

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->AUTO:Lorg/jdeferred/DeferredManager$StartPolicy;

    invoke-direct {v0, p0, v1, p1}, Lz2/p40$OooO00o;-><init>(Lz2/p40;Lorg/jdeferred/DeferredManager$StartPolicy;Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Lz2/p40;->OooOOO(Lz2/v30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz2/w30;

    invoke-direct {v0, p1}, Lz2/w30;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lz2/p40;->OooOO0(Lz2/w30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs OooO0o0([Lz2/v30;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz2/v30<",
            "**>;)",
            "Lorg/jdeferred/Promise<",
            "Lz2/z40;",
            "Lz2/b50;",
            "Lz2/y40;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/p40;->OooOOOO([Ljava/lang/Object;)V

    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lz2/p40;->OooOOO(Lz2/v30;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz2/p40;->OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz2/w30;

    invoke-direct {v0, p1}, Lz2/w30;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0}, Lz2/p40;->OooOO0(Lz2/w30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs OooO0oo([Lz2/w30;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz2/w30<",
            "**>;)",
            "Lorg/jdeferred/Promise<",
            "Lz2/z40;",
            "Lz2/b50;",
            "Lz2/y40;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/p40;->OooOOOO([Ljava/lang/Object;)V

    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lz2/p40;->OooOO0(Lz2/w30;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz2/p40;->OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0(Lz2/w30;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/w30<",
            "TD;TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/w30;->OooO00o()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->AUTO:Lorg/jdeferred/DeferredManager$StartPolicy;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lz2/w30;->OooO00o()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lz2/p40;->OooOOOo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lz2/p40;->OooOOo0(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p1}, Lz2/w30;->OooO0O0()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0O(Lz2/x30;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/x30<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    new-instance v0, Lz2/w30;

    invoke-direct {v0, p1}, Lz2/w30;-><init>(Lz2/x30;)V

    invoke-virtual {p0, v0}, Lz2/p40;->OooOO0(Lz2/w30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs OooOO0o([Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lorg/jdeferred/Promise<",
            "Lz2/z40;",
            "Lz2/b50;",
            "Lz2/y40;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/p40;->OooOOOO([Ljava/lang/Object;)V

    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v2, v2, Lz2/v30;

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Lz2/v30;

    invoke-virtual {p0, v2}, Lz2/p40;->OooOOO(Lz2/v30;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lz2/p40;->OooO0oO(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lz2/p40;->OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOOO(Lz2/v30;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/v30<",
            "TD;TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    new-instance v0, Lz2/w30;

    invoke-direct {v0, p1}, Lz2/w30;-><init>(Lz2/v30;)V

    invoke-virtual {p0, v0}, Lz2/p40;->OooOO0(Lz2/w30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs OooOOO0([Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lorg/jdeferred/Promise<",
            "Lz2/z40;",
            "Lz2/b50;",
            "Lz2/y40;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/p40;->OooOOOO([Ljava/lang/Object;)V

    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lz2/p40;->OooO0Oo(Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz2/p40;->OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOO([Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    array-length p1, p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arguments is null or its length is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract OooOOOo()Z
.end method

.method public abstract OooOOo(Ljava/util/concurrent/Callable;)V
.end method

.method public abstract OooOOo0(Ljava/lang/Runnable;)V
.end method
