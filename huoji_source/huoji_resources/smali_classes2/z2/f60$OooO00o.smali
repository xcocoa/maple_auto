.class public Lz2/f60$OooO00o;
.super Lz2/w90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/f60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field private OooO00o:I

.field private final OooO0O0:Lz2/s90;

.field private final OooO0OO:Lz2/x90;

.field private OooO0Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/internal/AssumptionViolatedException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/s90;Lz2/x90;)V
    .locals 1

    invoke-direct {p0}, Lz2/w90;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/f60$OooO00o;->OooO00o:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/f60$OooO00o;->OooO0Oo:Ljava/util/List;

    iput-object p1, p0, Lz2/f60$OooO00o;->OooO0O0:Lz2/s90;

    iput-object p2, p0, Lz2/f60$OooO00o;->OooO0OO:Lz2/x90;

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/f60$OooO00o;)Z
    .locals 0

    invoke-direct {p0}, Lz2/f60$OooO00o;->OooO0oo()Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0OO(Lz2/f60$OooO00o;Lz2/s90;Lz2/i60;Ljava/lang/Object;)Lz2/w90;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz2/f60$OooO00o;->OooO0oO(Lz2/s90;Lz2/i60;Ljava/lang/Object;)Lz2/w90;

    move-result-object p0

    return-object p0
.end method

.method private OooO0Oo()Lz2/x90;
    .locals 1

    iget-object v0, p0, Lz2/f60$OooO00o;->OooO0OO:Lz2/x90;

    return-object v0
.end method

.method private OooO0oO(Lz2/s90;Lz2/i60;Ljava/lang/Object;)Lz2/w90;
    .locals 1

    new-instance v0, Lz2/f60$OooO00o$OooO0O0;

    invoke-direct {v0, p0, p2, p1, p3}, Lz2/f60$OooO00o$OooO0O0;-><init>(Lz2/f60$OooO00o;Lz2/i60;Lz2/s90;Ljava/lang/Object;)V

    return-object v0
.end method

.method private OooO0oo()Z
    .locals 2

    iget-object v0, p0, Lz2/f60$OooO00o;->OooO0O0:Lz2/s90;

    invoke-virtual {v0}, Lz2/s90;->OooOO0o()Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Lz2/g60;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz2/g60;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lz2/g60;->nullsAccepted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs OooO(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    array-length v0, p2

    if-nez v0, :cond_0

    throw p1

    :cond_0
    new-instance v0, Lorg/junit/experimental/theories/internal/ParameterizedAssertionError;

    iget-object v1, p0, Lz2/f60$OooO00o;->OooO0O0:Lz2/s90;

    invoke-virtual {v1}, Lz2/s90;->OooO0o0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/junit/experimental/theories/internal/ParameterizedAssertionError;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public OooO00o()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/f60$OooO00o;->OooO0O0:Lz2/s90;

    invoke-virtual {v0}, Lz2/s90;->OooOO0o()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p0}, Lz2/f60$OooO00o;->OooO0Oo()Lz2/x90;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/i60;->OooO00o(Ljava/lang/reflect/Method;Lz2/x90;)Lz2/i60;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/f60$OooO00o;->OooOO0(Lz2/i60;)V

    iget-object v0, p0, Lz2/f60$OooO00o;->OooO0O0:Lz2/s90;

    const-class v1, Lz2/g60;

    invoke-virtual {v0, v1}, Lz2/s90;->OooO00o(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lz2/f60$OooO00o;->OooO00o:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Never found parameters that satisfied method assumptions.  Violated assumptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/f60$OooO00o;->OooO0Oo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/f50;->OooooO0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public OooO0o()V
    .locals 1

    iget v0, p0, Lz2/f60$OooO00o;->OooO00o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/f60$OooO00o;->OooO00o:I

    return-void
.end method

.method public OooO0o0(Lorg/junit/internal/AssumptionViolatedException;)V
    .locals 1

    iget-object v0, p0, Lz2/f60$OooO00o;->OooO0Oo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooOO0(Lz2/i60;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p1}, Lz2/i60;->OooOO0o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/f60$OooO00o;->OooOO0o(Lz2/i60;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lz2/f60$OooO00o;->OooOO0O(Lz2/i60;)V

    :goto_0
    return-void
.end method

.method public OooOO0O(Lz2/i60;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Lz2/f60$OooO00o$OooO00o;

    invoke-direct {p0}, Lz2/f60$OooO00o;->OooO0Oo()Lz2/x90;

    move-result-object v1

    invoke-virtual {v1}, Lz2/x90;->OooOO0o()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lz2/f60$OooO00o$OooO00o;-><init>(Lz2/f60$OooO00o;Ljava/lang/Class;Lz2/i60;)V

    iget-object p1, p0, Lz2/f60$OooO00o;->OooO0O0:Lz2/s90;

    invoke-virtual {v0, p1}, Lz2/f60$OooO00o$OooO00o;->Oooo(Lz2/s90;)Lz2/w90;

    move-result-object p1

    invoke-virtual {p1}, Lz2/w90;->OooO00o()V

    return-void
.end method

.method public OooOO0o(Lz2/i60;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p1}, Lz2/i60;->OooOOO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/experimental/theories/PotentialAssignment;

    invoke-virtual {p1, v1}, Lz2/i60;->OooO0O0(Lorg/junit/experimental/theories/PotentialAssignment;)Lz2/i60;

    move-result-object v1

    invoke-virtual {p0, v1}, Lz2/f60$OooO00o;->OooOO0(Lz2/i60;)V

    goto :goto_0

    :cond_0
    return-void
.end method
