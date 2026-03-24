.class public Lz2/v70;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Lz2/h90;

.field private final OooO0O0:Lorg/junit/runner/Description;


# direct methods
.method public constructor <init>(Lz2/h90;Lorg/junit/runner/Description;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/v70;->OooO00o:Lz2/h90;

    iput-object p2, p0, Lz2/v70;->OooO0O0:Lorg/junit/runner/Description;

    return-void
.end method

.method private OooO0OO(Lorg/junit/runners/model/MultipleFailureException;)V
    .locals 1

    invoke-virtual {p1}, Lorg/junit/runners/model/MultipleFailureException;->getFailures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lz2/v70;->OooO0O0(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o(Lorg/junit/internal/AssumptionViolatedException;)V
    .locals 3

    iget-object v0, p0, Lz2/v70;->OooO00o:Lz2/h90;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lz2/v70;->OooO0O0:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lz2/h90;->OooO0o0(Lorg/junit/runner/notification/Failure;)V

    return-void
.end method

.method public OooO0O0(Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p1, Lorg/junit/runners/model/MultipleFailureException;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/junit/runners/model/MultipleFailureException;

    invoke-direct {p0, p1}, Lz2/v70;->OooO0OO(Lorg/junit/runners/model/MultipleFailureException;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/v70;->OooO00o:Lz2/h90;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lz2/v70;->OooO0O0:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lz2/h90;->OooO0o(Lorg/junit/runner/notification/Failure;)V

    :goto_0
    return-void
.end method

.method public OooO0Oo()V
    .locals 2

    iget-object v0, p0, Lz2/v70;->OooO00o:Lz2/h90;

    iget-object v1, p0, Lz2/v70;->OooO0O0:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lz2/h90;->OooO0oo(Lorg/junit/runner/Description;)V

    return-void
.end method

.method public OooO0o()V
    .locals 2

    iget-object v0, p0, Lz2/v70;->OooO00o:Lz2/h90;

    iget-object v1, p0, Lz2/v70;->OooO0O0:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lz2/h90;->OooOO0o(Lorg/junit/runner/Description;)V

    return-void
.end method

.method public OooO0o0()V
    .locals 2

    iget-object v0, p0, Lz2/v70;->OooO00o:Lz2/h90;

    iget-object v1, p0, Lz2/v70;->OooO0O0:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lz2/h90;->OooO(Lorg/junit/runner/Description;)V

    return-void
.end method
