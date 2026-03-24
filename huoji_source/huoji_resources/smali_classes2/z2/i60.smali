.class public Lz2/i60;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/c60;",
            ">;"
        }
    .end annotation
.end field

.field private final OooO0OO:Lz2/x90;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Lz2/x90;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lz2/c60;",
            ">;",
            "Lz2/x90;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/i60;->OooO0O0:Ljava/util/List;

    iput-object p1, p0, Lz2/i60;->OooO00o:Ljava/util/List;

    iput-object p3, p0, Lz2/i60;->OooO0OO:Lz2/x90;

    return-void
.end method

.method private OooO()I
    .locals 1

    iget-object v0, p0, Lz2/i60;->OooO0OO:Lz2/x90;

    invoke-virtual {v0}, Lz2/x90;->OooOOO()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lz2/c60;->OooOOOO(Ljava/lang/reflect/Constructor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static OooO00o(Ljava/lang/reflect/Method;Lz2/x90;)Lz2/i60;
    .locals 2

    invoke-virtual {p1}, Lz2/x90;->OooOOO()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lz2/c60;->OooOOOO(Ljava/lang/reflect/Constructor;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0}, Lz2/c60;->OooOOO0(Ljava/lang/reflect/Method;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Lz2/i60;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v1, v0, p1}, Lz2/i60;-><init>(Ljava/util/List;Ljava/util/List;Lz2/x90;)V

    return-object p0
.end method

.method private OooO0OO(Ljava/lang/Class;)Lz2/d60;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lz2/d60;",
            ">;)",
            "Lz2/d60;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v5, v5, v2

    const-class v6, Lz2/x90;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-array p1, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lz2/i60;->OooO0OO:Lz2/x90;

    aput-object v0, p1, v2

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Lz2/d60;

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1
.end method

.method private OooO0Oo(Lz2/c60;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/c60;",
            ")",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lz2/c60;->OooO()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lz2/k60;

    invoke-direct {v1, v0}, Lz2/k60;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Lz2/k60;->OooO00o(Lz2/c60;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    new-instance v0, Lz2/j60;

    invoke-direct {v0}, Lz2/j60;-><init>()V

    invoke-virtual {v0, p1}, Lz2/j60;->OooO00o(Lz2/c60;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private OooOO0O(Lz2/c60;)Lz2/d60;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lz2/e60;

    invoke-virtual {p1, v0}, Lz2/c60;->OooO0o0(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lz2/e60;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lz2/e60;->value()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/i60;->OooO0OO(Ljava/lang/Class;)Lz2/d60;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lz2/h60;

    iget-object v0, p0, Lz2/i60;->OooO0OO:Lz2/x90;

    invoke-direct {p1, v0}, Lz2/h60;-><init>(Lz2/x90;)V

    return-object p1
.end method


# virtual methods
.method public OooO0O0(Lorg/junit/experimental/theories/PotentialAssignment;)Lz2/i60;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lz2/i60;->OooO00o:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lz2/i60;

    iget-object v1, p0, Lz2/i60;->OooO0O0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lz2/i60;->OooO0OO:Lz2/x90;

    invoke-direct {p1, v0, v1, v2}, Lz2/i60;-><init>(Ljava/util/List;Ljava/util/List;Lz2/x90;)V

    return-object p1
.end method

.method public OooO0o()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    iget-object v0, p0, Lz2/i60;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lz2/i60;->OooO0o0(II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o0(II)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    sub-int v0, p2, p1

    new-array v0, v0, [Ljava/lang/Object;

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_0

    sub-int v2, v1, p1

    iget-object v3, p0, Lz2/i60;->OooO00o:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/experimental/theories/PotentialAssignment;

    invoke-virtual {v3}, Lorg/junit/experimental/theories/PotentialAssignment;->OooO0OO()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public OooO0oO(Z)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    iget-object p1, p0, Lz2/i60;->OooO00o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lz2/i60;->OooO00o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/experimental/theories/PotentialAssignment;

    invoke-virtual {v2}, Lorg/junit/experimental/theories/PotentialAssignment;->OooO0O0()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public OooO0oo()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/i60;->OooO()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lz2/i60;->OooO0o0(II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public OooOO0()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/experimental/theories/PotentialAssignment$CouldNotGenerateValueException;
        }
    .end annotation

    invoke-direct {p0}, Lz2/i60;->OooO()I

    move-result v0

    iget-object v1, p0, Lz2/i60;->OooO00o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lz2/i60;->OooO0o0(II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public OooOO0o()Z
    .locals 1

    iget-object v0, p0, Lz2/i60;->OooO0O0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOOO()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/experimental/theories/PotentialAssignment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/i60;->OooOOO0()Lz2/c60;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/i60;->OooOO0O(Lz2/c60;)Lz2/d60;

    move-result-object v1

    invoke-virtual {v1, v0}, Lz2/d60;->OooO00o(Lz2/c60;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lz2/i60;->OooO0Oo(Lz2/c60;)Ljava/util/List;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public OooOOO0()Lz2/c60;
    .locals 2

    iget-object v0, p0, Lz2/i60;->OooO0O0:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/c60;

    return-object v0
.end method
