.class public Lz2/m70;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private OooO00o:Lz2/h90;

.field private OooO0O0:Lz2/t70;

.field private OooO0OO:Lorg/junit/runner/Description;

.field private final OooO0Oo:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lz2/h90;Lz2/t70;Lorg/junit/runner/Description;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/m70;->OooO00o:Lz2/h90;

    iput-object p2, p0, Lz2/m70;->OooO0O0:Lz2/t70;

    iput-object p3, p0, Lz2/m70;->OooO0OO:Lorg/junit/runner/Description;

    iput-object p4, p0, Lz2/m70;->OooO0Oo:Ljava/lang/Runnable;

    return-void
.end method

.method private OooO0O0()V
    .locals 4

    iget-object v0, p0, Lz2/m70;->OooO0O0:Lz2/t70;

    invoke-virtual {v0}, Lz2/t70;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lz2/m70;->OooO00o(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private OooO0OO()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/FailedBefore;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lz2/m70;->OooO0O0:Lz2/t70;

    invoke-virtual {v0}, Lz2/t70;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0, v0}, Lz2/m70;->OooO00o(Ljava/lang/Throwable;)V

    new-instance v0, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v0}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v0

    :catch_1
    new-instance v0, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v0}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lz2/m70;->OooO00o:Lz2/h90;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lz2/m70;->OooO0OO:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lz2/h90;->OooO0o(Lorg/junit/runner/notification/Failure;)V

    return-void
.end method

.method public OooO0Oo()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lz2/m70;->OooO0OO()V

    invoke-virtual {p0}, Lz2/m70;->OooO0o0()V
    :try_end_0
    .catch Lorg/junit/internal/runners/FailedBefore; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lz2/m70;->OooO0O0()V

    throw v0

    :catch_0
    :goto_0
    invoke-direct {p0}, Lz2/m70;->OooO0O0()V

    return-void
.end method

.method public OooO0o0()V
    .locals 1

    iget-object v0, p0, Lz2/m70;->OooO0Oo:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
