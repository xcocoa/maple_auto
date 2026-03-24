.class public Lz2/i40;
.super Lz2/r40;
.source ""


# static fields
.field private static OooO0o0:[Ljava/lang/Void;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    sput-object v0, Lz2/i40;->OooO0o0:[Ljava/lang/Void;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/r40;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/r40;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public OooO(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 1
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

    instance-of v0, p1, Lz2/j40;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lz2/j40;

    invoke-direct {v0, p1}, Lz2/j40;-><init>(Lorg/jdeferred/Promise;)V

    invoke-virtual {v0}, Lz2/s40;->OooOO0o()Lorg/jdeferred/Promise;

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

    new-instance v0, Lz2/j40;

    invoke-super {p0, p1}, Lz2/p40;->OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    invoke-direct {v0, p1}, Lz2/j40;-><init>(Lorg/jdeferred/Promise;)V

    invoke-virtual {v0}, Lz2/s40;->OooOO0o()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0(Lz2/w30;)Lorg/jdeferred/Promise;
    .locals 1
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

    new-instance v0, Lz2/j40;

    invoke-super {p0, p1}, Lz2/p40;->OooOO0(Lz2/w30;)Lorg/jdeferred/Promise;

    move-result-object p1

    invoke-direct {v0, p1}, Lz2/j40;-><init>(Lorg/jdeferred/Promise;)V

    invoke-virtual {v0}, Lz2/s40;->OooOO0o()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOoO(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)Lorg/jdeferred/Promise;
    .locals 1
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
            "TD;TF;TP;>;",
            "Lorg/jdeferred/android/AndroidExecutionScope;",
            ")",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    instance-of v0, p1, Lz2/j40;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lz2/j40;

    invoke-direct {v0, p1, p2}, Lz2/j40;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V

    invoke-virtual {v0}, Lz2/s40;->OooOO0o()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs OooOoOO(Lorg/jdeferred/android/AndroidExecutionScope;[Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/android/AndroidExecutionScope;",
            "[",
            "Lorg/jdeferred/Promise;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Lz2/z40;",
            "Lz2/b50;",
            "Lz2/y40;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz2/j40;

    invoke-super {p0, p2}, Lz2/p40;->OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lz2/j40;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V

    invoke-virtual {v0}, Lz2/s40;->OooOO0o()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOoo(Lz2/o40;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/o40<",
            "Ljava/lang/Void;",
            "TProgress;TResult;>;)",
            "Lorg/jdeferred/Promise<",
            "TResult;",
            "Ljava/lang/Throwable;",
            "TProgress;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/o40;->OooO0O0()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->AUTO:Lorg/jdeferred/DeferredManager$StartPolicy;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lz2/o40;->OooO0O0()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lz2/r40;->OooOOOo()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lz2/r40;->OooOo00()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sget-object v1, Lz2/i40;->OooO0o0:[Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    sget-object v0, Lz2/i40;->OooO0o0:[Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lz2/o40;->OooO0Oo()Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs OooOoo0(Lorg/jdeferred/android/AndroidExecutionScope;[Lz2/o40;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/android/AndroidExecutionScope;",
            "[",
            "Lz2/o40<",
            "Ljava/lang/Void;",
            "**>;)",
            "Lorg/jdeferred/Promise<",
            "Lz2/z40;",
            "Lz2/b50;",
            "Lz2/y40;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lz2/p40;->OooOOOO([Ljava/lang/Object;)V

    array-length v0, p2

    new-array v0, v0, [Lorg/jdeferred/Promise;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Lz2/i40;->OooOoo(Lz2/o40;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lz2/i40;->OooOoOO(Lorg/jdeferred/android/AndroidExecutionScope;[Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public varargs OooOooO([Lz2/o40;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lz2/o40<",
            "Ljava/lang/Void;",
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

    invoke-virtual {p0, v2}, Lz2/i40;->OooOoo(Lz2/o40;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lz2/i40;->OooO0O0([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method
