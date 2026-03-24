.class public Lz2/q70;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final OooO00o:Ljava/lang/Object;

.field private final OooO0O0:Lz2/h90;

.field private final OooO0OO:Lorg/junit/runner/Description;

.field private OooO0Oo:Lz2/u70;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lz2/u70;Lz2/h90;Lorg/junit/runner/Description;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/q70;->OooO00o:Ljava/lang/Object;

    iput-object p3, p0, Lz2/q70;->OooO0O0:Lz2/h90;

    iput-object p4, p0, Lz2/q70;->OooO0OO:Lorg/junit/runner/Description;

    iput-object p2, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    return-void
.end method

.method private OooO0OO()V
    .locals 4

    iget-object v0, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    invoke-virtual {v0}, Lz2/u70;->OooO0O0()Ljava/util/List;

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

    :try_start_0
    iget-object v2, p0, Lz2/q70;->OooO00o:Ljava/lang/Object;

    const/4 v3, 0x0

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
    invoke-virtual {p0, v1}, Lz2/q70;->OooO00o(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private OooO0Oo()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/FailedBefore;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    invoke-virtual {v0}, Lz2/u70;->OooO0OO()Ljava/util/List;

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

    iget-object v2, p0, Lz2/q70;->OooO00o:Ljava/lang/Object;

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
    invoke-virtual {p0, v0}, Lz2/q70;->OooO00o(Ljava/lang/Throwable;)V

    new-instance v0, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v0}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v0

    :catch_1
    new-instance v0, Lorg/junit/internal/runners/FailedBefore;

    invoke-direct {v0}, Lorg/junit/internal/runners/FailedBefore;-><init>()V

    throw v0
.end method

.method private OooO0oo(J)V
    .locals 1

    new-instance v0, Lz2/q70$OooO00o;

    invoke-direct {v0, p0, p1, p2}, Lz2/q70$OooO00o;-><init>(Lz2/q70;J)V

    invoke-virtual {p0, v0}, Lz2/q70;->OooO0o0(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lz2/q70;->OooO0O0:Lz2/h90;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lz2/q70;->OooO0OO:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lz2/h90;->OooO0o(Lorg/junit/runner/notification/Failure;)V

    return-void
.end method

.method public OooO0O0()V
    .locals 5

    iget-object v0, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    invoke-virtual {v0}, Lz2/u70;->OooO0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/q70;->OooO0O0:Lz2/h90;

    iget-object v1, p0, Lz2/q70;->OooO0OO:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lz2/h90;->OooO(Lorg/junit/runner/Description;)V

    return-void

    :cond_0
    iget-object v0, p0, Lz2/q70;->OooO0O0:Lz2/h90;

    iget-object v1, p0, Lz2/q70;->OooO0OO:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lz2/h90;->OooOO0o(Lorg/junit/runner/Description;)V

    :try_start_0
    iget-object v0, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    invoke-virtual {v0}, Lz2/u70;->OooO0o0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-direct {p0, v0, v1}, Lz2/q70;->OooO0oo(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lz2/q70;->OooO0o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lz2/q70;->OooO0O0:Lz2/h90;

    iget-object v1, p0, Lz2/q70;->OooO0OO:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lz2/h90;->OooO0oo(Lorg/junit/runner/Description;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lz2/q70;->OooO0O0:Lz2/h90;

    iget-object v2, p0, Lz2/q70;->OooO0OO:Lorg/junit/runner/Description;

    invoke-virtual {v1, v2}, Lz2/h90;->OooO0oo(Lorg/junit/runner/Description;)V

    throw v0
.end method

.method public OooO0o()V
    .locals 1

    new-instance v0, Lz2/q70$OooO0O0;

    invoke-direct {v0, p0}, Lz2/q70$OooO0O0;-><init>(Lz2/q70;)V

    invoke-virtual {p0, v0}, Lz2/q70;->OooO0o0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OooO0o0(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lz2/q70;->OooO0Oo()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lorg/junit/internal/runners/FailedBefore; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "test should never throw an exception to this level"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lz2/q70;->OooO0OO()V

    throw p1

    :catch_1
    :goto_1
    invoke-direct {p0}, Lz2/q70;->OooO0OO()V

    return-void
.end method

.method public OooO0oO()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    iget-object v1, p0, Lz2/q70;->OooO00o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lz2/u70;->OooO0o(Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    invoke-virtual {v0}, Lz2/u70;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    invoke-virtual {v2}, Lz2/u70;->OooO0Oo()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lz2/q70;->OooO00o(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    invoke-virtual {p0, v0}, Lz2/q70;->OooO00o(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Lorg/junit/internal/AssumptionViolatedException;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    invoke-virtual {v1}, Lz2/u70;->OooO00o()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    invoke-virtual {v1, v0}, Lz2/u70;->OooO0oo(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception, expected<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/q70;->OooO0Oo:Lz2/u70;

    invoke-virtual {v2}, Lz2/u70;->OooO0Oo()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> but was<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lz2/q70;->OooO00o(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
