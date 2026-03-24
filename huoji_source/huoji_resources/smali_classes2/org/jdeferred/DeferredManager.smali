.class public interface abstract Lorg/jdeferred/DeferredManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdeferred/DeferredManager$StartPolicy;
    }
.end annotation


# virtual methods
.method public abstract OooO(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
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
.end method

.method public varargs abstract OooO00o([Ljava/lang/Runnable;)Lorg/jdeferred/Promise;
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
.end method

.method public varargs abstract OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
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
.end method

.method public varargs abstract OooO0OO([Lz2/x30;)Lorg/jdeferred/Promise;
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
.end method

.method public abstract OooO0Oo(Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
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
.end method

.method public abstract OooO0o(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;
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
.end method

.method public varargs abstract OooO0o0([Lz2/v30;)Lorg/jdeferred/Promise;
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
.end method

.method public abstract OooO0oO(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;
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
.end method

.method public varargs abstract OooO0oo([Lz2/w30;)Lorg/jdeferred/Promise;
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
.end method

.method public abstract OooOO0(Lz2/w30;)Lorg/jdeferred/Promise;
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
.end method

.method public abstract OooOO0O(Lz2/x30;)Lorg/jdeferred/Promise;
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
.end method

.method public varargs abstract OooOO0o([Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;
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
.end method

.method public abstract OooOOO(Lz2/v30;)Lorg/jdeferred/Promise;
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
.end method

.method public varargs abstract OooOOO0([Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
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
.end method
