.class public Lz2/p70;
.super Lz2/b90;
.source ""

# interfaces
.implements Lz2/d90;
.implements Lz2/e90;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0O0:Lz2/t70;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/InitializationError;
        }
    .end annotation

    invoke-direct {p0}, Lz2/b90;-><init>()V

    new-instance v0, Lz2/t70;

    invoke-direct {v0, p1}, Lz2/t70;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lz2/p70;->OooO0O0:Lz2/t70;

    invoke-virtual {p0}, Lz2/p70;->OooO()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/p70;->OooO00o:Ljava/util/List;

    invoke-virtual {p0}, Lz2/p70;->OooOOOo()V

    return-void
.end method

.method private OooOOO0(Lz2/h90;Lorg/junit/runner/Description;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1, p2}, Lz2/h90;->OooOO0o(Lorg/junit/runner/Description;)V

    new-instance v0, Lorg/junit/runner/notification/Failure;

    invoke-direct {v0, p2, p3}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lz2/h90;->OooO0o(Lorg/junit/runner/notification/Failure;)V

    invoke-virtual {p1, p2}, Lz2/h90;->OooO0oo(Lorg/junit/runner/Description;)V

    return-void
.end method


# virtual methods
.method public OooO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/p70;->OooO0O0:Lz2/t70;

    invoke-virtual {v0}, Lz2/t70;->OooO0oo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public OooO00o(Lz2/h90;)V
    .locals 4

    new-instance v0, Lz2/m70;

    iget-object v1, p0, Lz2/p70;->OooO0O0:Lz2/t70;

    invoke-virtual {p0}, Lz2/p70;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    new-instance v3, Lz2/p70$OooO00o;

    invoke-direct {v3, p0, p1}, Lz2/p70$OooO00o;-><init>(Lz2/p70;Lz2/h90;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lz2/m70;-><init>(Lz2/h90;Lz2/t70;Lorg/junit/runner/Description;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lz2/m70;->OooO0Oo()V

    return-void
.end method

.method public OooO0OO(Lz2/c90;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    iget-object v0, p0, Lz2/p70;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1}, Lz2/p70;->OooOO0O(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {p1, v1}, Lz2/c90;->OooO0o0(Lorg/junit/runner/Description;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lz2/p70;->OooO00o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {p1}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    throw p1
.end method

.method public OooO0Oo(Lz2/f90;)V
    .locals 2

    iget-object v0, p0, Lz2/p70;->OooO00o:Ljava/util/List;

    new-instance v1, Lz2/p70$OooO0O0;

    invoke-direct {v1, p0, p1}, Lz2/p70$OooO0O0;-><init>(Lz2/p70;Lz2/f90;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public OooO0o()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/p70;->OooO0oo()Lz2/t70;

    move-result-object v0

    invoke-virtual {v0}, Lz2/t70;->OooO0Oo()Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o0()[Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lz2/p70;->OooO0O0:Lz2/t70;

    invoke-virtual {v0}, Lz2/t70;->OooO0o0()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oO()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/p70;->OooO0oo()Lz2/t70;

    move-result-object v0

    invoke-virtual {v0}, Lz2/t70;->OooO0o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oo()Lz2/t70;
    .locals 1

    iget-object v0, p0, Lz2/p70;->OooO0O0:Lz2/t70;

    return-object v0
.end method

.method public OooOO0(Ljava/lang/reflect/Method;Lz2/h90;)V
    .locals 3

    invoke-virtual {p0, p1}, Lz2/p70;->OooOO0O(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lz2/p70;->OooO0o()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1}, Lz2/p70;->OooOOo0(Ljava/lang/reflect/Method;)Lz2/u70;

    move-result-object p1

    new-instance v2, Lz2/q70;

    invoke-direct {v2, v1, p1, p2, v0}, Lz2/q70;-><init>(Ljava/lang/Object;Lz2/u70;Lz2/h90;Lorg/junit/runner/Description;)V

    invoke-virtual {v2}, Lz2/q70;->OooO0O0()V

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p2, v0, p1}, Lz2/p70;->OooOOO0(Lz2/h90;Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v0, p1}, Lz2/p70;->OooOOO0(Lz2/h90;Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    return-void
.end method

.method public OooOO0O(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;
    .locals 2

    invoke-virtual {p0}, Lz2/p70;->OooO0oo()Lz2/t70;

    move-result-object v0

    invoke-virtual {v0}, Lz2/t70;->OooO0o0()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1}, Lz2/p70;->OooOOOO(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lz2/p70;->OooOOO(Ljava/lang/reflect/Method;)[Ljava/lang/annotation/Annotation;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0o(Lz2/h90;)V
    .locals 2

    iget-object v0, p0, Lz2/p70;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, p1}, Lz2/p70;->OooOO0(Ljava/lang/reflect/Method;Lz2/h90;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooOOO(Ljava/lang/reflect/Method;)[Ljava/lang/annotation/Annotation;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOO(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/runners/InitializationError;
        }
    .end annotation

    new-instance v0, Lz2/r70;

    iget-object v1, p0, Lz2/p70;->OooO0O0:Lz2/t70;

    invoke-direct {v0, v1}, Lz2/r70;-><init>(Lz2/t70;)V

    invoke-virtual {v0}, Lz2/r70;->OooO0OO()Ljava/util/List;

    invoke-virtual {v0}, Lz2/r70;->OooO00o()V

    return-void
.end method

.method public OooOOo0(Ljava/lang/reflect/Method;)Lz2/u70;
    .locals 2

    new-instance v0, Lz2/u70;

    iget-object v1, p0, Lz2/p70;->OooO0O0:Lz2/t70;

    invoke-direct {v0, p1, v1}, Lz2/u70;-><init>(Ljava/lang/reflect/Method;Lz2/t70;)V

    return-object v0
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 3

    invoke-virtual {p0}, Lz2/p70;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lz2/p70;->OooO0o0()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    iget-object v1, p0, Lz2/p70;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v2}, Lz2/p70;->OooOO0O(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
