.class public abstract Lz2/r80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/q80;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/r80;Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/r80;->OooOOOO(Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic OooO0OO(Lz2/r80;Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/r80;->OooOOo0(Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic OooO0Oo(Lz2/r80;Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz2/r80;->OooOOO0(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic OooO0o(Lz2/r80;Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/r80;->OooOO0(Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic OooO0o0(Lz2/r80;Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz2/r80;->OooO0oo(Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V

    return-void
.end method

.method private OooO0oo(Ljava/lang/Throwable;Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lz2/r80;->OooO0oO(Ljava/lang/Throwable;Lorg/junit/runner/Description;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private OooOO0(Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lz2/r80;->OooO(Lorg/junit/runner/Description;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private OooOOO0(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/internal/AssumptionViolatedException;",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    instance-of v0, p1, Lorg/junit/AssumptionViolatedException;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/junit/AssumptionViolatedException;

    invoke-virtual {p0, p1, p2}, Lz2/r80;->OooOO0O(Lorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lz2/r80;->OooOO0o(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private OooOOOO(Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lz2/r80;->OooOOO(Lorg/junit/runner/Description;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private OooOOo0(Lorg/junit/runner/Description;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lz2/r80;->OooOOOo(Lorg/junit/runner/Description;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public OooO(Lorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method

.method public OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
    .locals 1

    new-instance v0, Lz2/r80$OooO00o;

    invoke-direct {v0, p0, p2, p1}, Lz2/r80$OooO00o;-><init>(Lz2/r80;Lorg/junit/runner/Description;Lz2/w90;)V

    return-object v0
.end method

.method public OooO0oO(Ljava/lang/Throwable;Lorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method

.method public OooOO0O(Lorg/junit/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/r80;->OooOO0o(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;)V

    return-void
.end method

.method public OooOO0o(Lorg/junit/internal/AssumptionViolatedException;Lorg/junit/runner/Description;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public OooOOO(Lorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method

.method public OooOOOo(Lorg/junit/runner/Description;)V
    .locals 0

    return-void
.end method
