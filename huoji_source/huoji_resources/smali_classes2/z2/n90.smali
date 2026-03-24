.class public abstract Lz2/n90;
.super Lz2/b90;
.source ""

# interfaces
.implements Lz2/d90;
.implements Lz2/e90;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/b90;",
        "Lz2/d90;",
        "Lz2/e90;"
    }
.end annotation


# static fields
.field private static final OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/ga0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final OooO00o:Ljava/lang/Object;

.field private final OooO0O0:Lz2/x90;

.field private volatile OooO0OO:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile OooO0Oo:Lz2/v90;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lz2/ga0;

    new-instance v1, Lz2/ea0;

    invoke-direct {v1}, Lz2/ea0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lz2/fa0;

    invoke-direct {v1}, Lz2/fa0;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz2/n90;->OooO0o0:Ljava/util/List;

    return-void
.end method

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
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    invoke-direct {p0}, Lz2/b90;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz2/n90;->OooO00o:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/n90;->OooO0OO:Ljava/util/Collection;

    new-instance v0, Lz2/n90$OooO00o;

    invoke-direct {v0, p0}, Lz2/n90$OooO00o;-><init>(Lz2/n90;)V

    iput-object v0, p0, Lz2/n90;->OooO0Oo:Lz2/v90;

    invoke-virtual {p0, p1}, Lz2/n90;->OooOOO0(Ljava/lang/Class;)Lz2/x90;

    move-result-object p1

    iput-object p1, p0, Lz2/n90;->OooO0O0:Lz2/x90;

    invoke-direct {p0}, Lz2/n90;->OooOoO()V

    return-void
.end method

.method private OooO0o(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    invoke-virtual {v0}, Lz2/x90;->OooOO0o()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lz2/n90;->OooO0o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/ga0;

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v2

    invoke-interface {v1, v2}, Lz2/ga0;->OooO00o(Lz2/x90;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic OooO0o0(Lz2/n90;Lz2/h90;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/n90;->OooOo0O(Lz2/h90;)V

    return-void
.end method

.method private OooO0oO()Z
    .locals 2

    invoke-direct {p0}, Lz2/n90;->OooOOOo()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lz2/n90;->OooOo00(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private OooOO0o(Lz2/f90;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/f90;",
            ")",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/n90$OooO0o;

    invoke-direct {v0, p0, p1}, Lz2/n90$OooO0o;-><init>(Lz2/n90;Lz2/f90;)V

    return-object v0
.end method

.method private OooOOOo()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/n90;->OooO0OO:Ljava/util/Collection;

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/n90;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz2/n90;->OooO0OO:Ljava/util/Collection;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lz2/n90;->OooOOOO()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lz2/n90;->OooO0OO:Ljava/util/Collection;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lz2/n90;->OooO0OO:Ljava/util/Collection;

    return-object v0
.end method

.method private OooOo0O(Lz2/h90;)V
    .locals 4

    iget-object v0, p0, Lz2/n90;->OooO0Oo:Lz2/v90;

    :try_start_0
    invoke-direct {p0}, Lz2/n90;->OooOOOo()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lz2/n90$OooO0OO;

    invoke-direct {v3, p0, v2, p1}, Lz2/n90$OooO0OO;-><init>(Lz2/n90;Ljava/lang/Object;Lz2/h90;)V

    invoke-interface {v0, v3}, Lz2/v90;->OooO00o(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lz2/v90;->OooO0O0()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lz2/v90;->OooO0O0()V

    throw p1
.end method

.method private OooOoO()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lz2/n90;->OooOO0O(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/junit/runners/model/InitializationError;

    invoke-direct {v1, v0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/util/List;)V

    throw v1
.end method

.method private OooOoO0(Lz2/c90;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/c90;",
            "TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lz2/n90;->OooOOO(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/c90;->OooO0o0(Lorg/junit/runner/Description;)Z

    move-result p1

    return p1
.end method

.method private OooOoOO(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lz2/x70;->OooO0Oo:Lz2/x70;

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lz2/x70;->OooO(Lz2/x90;Ljava/util/List;)V

    sget-object v0, Lz2/x70;->OooO0o:Lz2/x70;

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lz2/x70;->OooO(Lz2/x90;Ljava/util/List;)V

    return-void
.end method

.method private OooOooo(Lz2/w90;)Lz2/w90;
    .locals 3

    invoke-virtual {p0}, Lz2/n90;->OooOO0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lz2/m80;

    invoke-virtual {p0}, Lz2/n90;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lz2/m80;-><init>(Lz2/w90;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public OooO(Lz2/h90;)Lz2/w90;
    .locals 1

    invoke-virtual {p0, p1}, Lz2/n90;->OooO0oo(Lz2/h90;)Lz2/w90;

    move-result-object p1

    invoke-direct {p0}, Lz2/n90;->OooO0oO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/n90;->OooOooO(Lz2/w90;)Lz2/w90;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/n90;->OooOoo(Lz2/w90;)Lz2/w90;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/n90;->OooOooo(Lz2/w90;)Lz2/w90;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public OooO00o(Lz2/h90;)V
    .locals 2

    new-instance v0, Lz2/v70;

    invoke-virtual {p0}, Lz2/n90;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lz2/v70;-><init>(Lz2/h90;Lorg/junit/runner/Description;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lz2/n90;->OooO(Lz2/h90;)Lz2/w90;

    move-result-object p1

    invoke-virtual {p1}, Lz2/w90;->OooO00o()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/junit/runner/notification/StoppedByUserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0, p1}, Lz2/v70;->OooO0O0(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Lz2/v70;->OooO00o(Lorg/junit/internal/AssumptionViolatedException;)V

    :goto_0
    return-void
.end method

.method public OooO0OO(Lz2/c90;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    iget-object v0, p0, Lz2/n90;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lz2/n90;->OooOOOo()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lz2/n90;->OooOoO0(Lz2/c90;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {p1, v3}, Lz2/c90;->OooO00o(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lz2/n90;->OooO0OO:Ljava/util/Collection;

    iget-object p1, p0, Lz2/n90;->OooO0OO:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    new-instance p1, Lorg/junit/runner/manipulation/NoTestsRemainException;

    invoke-direct {p1}, Lorg/junit/runner/manipulation/NoTestsRemainException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public OooO0Oo(Lz2/f90;)V
    .locals 3

    iget-object v0, p0, Lz2/n90;->OooO00o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lz2/n90;->OooOOOo()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lz2/f90;->OooO00o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lz2/n90;->OooOOOo()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1}, Lz2/n90;->OooOO0o(Lz2/f90;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lz2/n90;->OooO0OO:Ljava/util/Collection;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO0oo(Lz2/h90;)Lz2/w90;
    .locals 1

    new-instance v0, Lz2/n90$OooO0O0;

    invoke-direct {v0, p0, p1}, Lz2/n90$OooO0O0;-><init>(Lz2/n90;Lz2/h90;)V

    return-object v0
.end method

.method public OooOO0()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/q80;",
            ">;"
        }
    .end annotation

    const-class v0, Lz2/q80;

    iget-object v1, p0, Lz2/n90;->OooO0O0:Lz2/x90;

    const-class v2, Lz2/j50;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lz2/x90;->OooO(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lz2/n90;->OooO0O0:Lz2/x90;

    const-class v4, Lz2/j50;

    invoke-virtual {v2, v3, v4, v0}, Lz2/x90;->OooO0o0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public OooOO0O(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lz2/i50;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lz2/n90;->OooOoo0(Ljava/lang/Class;ZLjava/util/List;)V

    const-class v0, Lz2/e50;

    invoke-virtual {p0, v0, v1, p1}, Lz2/n90;->OooOoo0(Ljava/lang/Class;ZLjava/util/List;)V

    invoke-direct {p0, p1}, Lz2/n90;->OooOoOO(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lz2/n90;->OooO0o(Ljava/util/List;)V

    return-void
.end method

.method public abstract OooOOO(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/junit/runner/Description;"
        }
    .end annotation
.end method

.method public OooOOO0(Ljava/lang/Class;)Lz2/x90;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/x90;"
        }
    .end annotation

    new-instance v0, Lz2/x90;

    invoke-direct {v0, p1}, Lz2/x90;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public abstract OooOOOO()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public OooOOo()[Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lz2/n90;->OooO0O0:Lz2/x90;

    invoke-virtual {v0}, Lz2/x90;->OooO0O0()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public OooOOo0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/n90;->OooO0O0:Lz2/x90;

    invoke-virtual {v0}, Lz2/x90;->OooOOO0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooOOoo()Lz2/x90;
    .locals 1

    iget-object v0, p0, Lz2/n90;->OooO0O0:Lz2/x90;

    return-object v0
.end method

.method public OooOo(Lz2/v90;)V
    .locals 0

    iput-object p1, p0, Lz2/n90;->OooO0Oo:Lz2/v90;

    return-void
.end method

.method public abstract OooOo0(Ljava/lang/Object;Lz2/h90;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz2/h90;",
            ")V"
        }
    .end annotation
.end method

.method public OooOo00(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final OooOo0o(Lz2/w90;Lorg/junit/runner/Description;Lz2/h90;)V
    .locals 1

    new-instance v0, Lz2/v70;

    invoke-direct {v0, p3, p2}, Lz2/v70;-><init>(Lz2/h90;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lz2/v70;->OooO0o()V

    :try_start_0
    invoke-virtual {p1}, Lz2/w90;->OooO00o()V
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Lz2/v70;->OooO0Oo()V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0, p1}, Lz2/v70;->OooO0O0(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {v0, p1}, Lz2/v70;->OooO00o(Lorg/junit/internal/AssumptionViolatedException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lz2/v70;->OooO0Oo()V

    throw p1
.end method

.method public OooOoo(Lz2/w90;)Lz2/w90;
    .locals 3

    iget-object v0, p0, Lz2/n90;->OooO0O0:Lz2/x90;

    const-class v1, Lz2/e50;

    invoke-virtual {v0, v1}, Lz2/x90;->OooOO0O(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lz2/c80;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lz2/c80;-><init>(Lz2/w90;Ljava/util/List;Ljava/lang/Object;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public OooOoo0(Ljava/lang/Class;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;Z",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/x90;->OooOO0O(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/s90;

    invoke-virtual {v0, p2, p3}, Lz2/s90;->OooOo00(ZLjava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public OooOooO(Lz2/w90;)Lz2/w90;
    .locals 3

    iget-object v0, p0, Lz2/n90;->OooO0O0:Lz2/x90;

    const-class v1, Lz2/i50;

    invoke-virtual {v0, v1}, Lz2/x90;->OooOO0O(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lz2/d80;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lz2/d80;-><init>(Lz2/w90;Ljava/util/List;Ljava/lang/Object;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 3

    invoke-virtual {p0}, Lz2/n90;->OooOOo0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lz2/n90;->OooOOo()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    invoke-direct {p0}, Lz2/n90;->OooOOOo()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lz2/n90;->OooOOO(Ljava/lang/Object;)Lorg/junit/runner/Description;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
