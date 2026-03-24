.class public Lz2/h90;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/h90$OooOOO0;
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/g90;",
            ">;"
        }
    .end annotation
.end field

.field private volatile OooO0O0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lz2/h90;->OooO00o:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/h90;->OooO0O0:Z

    return-void
.end method

.method public static synthetic OooO00o(Lz2/h90;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lz2/h90;->OooO00o:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/h90;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/h90;->OooO0oO(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private OooO0oO(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/g90;",
            ">;",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lz2/h90$OooO0o;

    invoke-direct {v0, p0, p1, p2}, Lz2/h90$OooO0o;-><init>(Lz2/h90;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lz2/h90$OooOOO0;->OooO0O0()V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO(Lorg/junit/runner/Description;)V
    .locals 1

    new-instance v0, Lz2/h90$OooOO0;

    invoke-direct {v0, p0, p1}, Lz2/h90$OooOO0;-><init>(Lz2/h90;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lz2/h90$OooOOO0;->OooO0O0()V

    return-void
.end method

.method public OooO0OO(Lz2/g90;)V
    .locals 2

    const-string v0, "Cannot add a null listener"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lz2/h90;->OooO00o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lz2/h90;->OooOOOO(Lz2/g90;)Lz2/g90;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public OooO0Oo(Lz2/g90;)V
    .locals 1

    const-string v0, "Cannot add a null listener"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lz2/h90;->OooO00o:Ljava/util/List;

    invoke-virtual {p0, p1}, Lz2/h90;->OooOOOO(Lz2/g90;)Lz2/g90;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0o(Lorg/junit/runner/notification/Failure;)V
    .locals 3

    iget-object v0, p0, Lz2/h90;->OooO00o:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/junit/runner/notification/Failure;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lz2/h90;->OooO0oO(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public OooO0o0(Lorg/junit/runner/notification/Failure;)V
    .locals 1

    new-instance v0, Lz2/h90$OooO;

    invoke-direct {v0, p0, p1}, Lz2/h90$OooO;-><init>(Lz2/h90;Lorg/junit/runner/notification/Failure;)V

    invoke-virtual {v0}, Lz2/h90$OooOOO0;->OooO0O0()V

    return-void
.end method

.method public OooO0oo(Lorg/junit/runner/Description;)V
    .locals 1

    new-instance v0, Lz2/h90$OooOO0O;

    invoke-direct {v0, p0, p1}, Lz2/h90$OooOO0O;-><init>(Lz2/h90;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lz2/h90$OooOOO0;->OooO0O0()V

    return-void
.end method

.method public OooOO0(Lorg/junit/runner/Result;)V
    .locals 1

    new-instance v0, Lz2/h90$OooO0O0;

    invoke-direct {v0, p0, p1}, Lz2/h90$OooO0O0;-><init>(Lz2/h90;Lorg/junit/runner/Result;)V

    invoke-virtual {v0}, Lz2/h90$OooOOO0;->OooO0O0()V

    return-void
.end method

.method public OooOO0O(Lorg/junit/runner/Description;)V
    .locals 1

    new-instance v0, Lz2/h90$OooO00o;

    invoke-direct {v0, p0, p1}, Lz2/h90$OooO00o;-><init>(Lz2/h90;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lz2/h90$OooOOO0;->OooO0O0()V

    return-void
.end method

.method public OooOO0o(Lorg/junit/runner/Description;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/notification/StoppedByUserException;
        }
    .end annotation

    iget-boolean v0, p0, Lz2/h90;->OooO0O0:Z

    if-nez v0, :cond_0

    new-instance v0, Lz2/h90$OooO0OO;

    invoke-direct {v0, p0, p1}, Lz2/h90$OooO0OO;-><init>(Lz2/h90;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lz2/h90$OooOOO0;->OooO0O0()V

    return-void

    :cond_0
    new-instance p1, Lorg/junit/runner/notification/StoppedByUserException;

    invoke-direct {p1}, Lorg/junit/runner/notification/StoppedByUserException;-><init>()V

    throw p1
.end method

.method public OooOOO(Lz2/g90;)V
    .locals 1

    const-string v0, "Cannot remove a null listener"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lz2/h90;->OooO00o:Ljava/util/List;

    invoke-virtual {p0, p1}, Lz2/h90;->OooOOOO(Lz2/g90;)Lz2/g90;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooOOO0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/h90;->OooO0O0:Z

    return-void
.end method

.method public OooOOOO(Lz2/g90;)Lz2/g90;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lz2/g90$OooO00o;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lz2/i90;

    invoke-direct {v0, p1, p0}, Lz2/i90;-><init>(Lz2/g90;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
