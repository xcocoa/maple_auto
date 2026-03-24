.class public Lz2/o50$OooO00o;
.super Lz2/c90;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation


# instance fields
.field private final OooO0O0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OooO0OO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final OooO0Oo:Z

.field private final OooO0o0:Z


# direct methods
.method public constructor <init>(ZLjava/util/Set;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/c90;-><init>()V

    iput-boolean p1, p0, Lz2/o50$OooO00o;->OooO0Oo:Z

    iput-boolean p3, p0, Lz2/o50$OooO00o;->OooO0o0:Z

    invoke-static {p2}, Lz2/o50$OooO00o;->OooO0oo(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lz2/o50$OooO00o;->OooO0O0:Ljava/util/Set;

    invoke-static {p4}, Lz2/o50$OooO00o;->OooO0oo(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lz2/o50$OooO00o;->OooO0OO:Ljava/util/Set;

    return-void
.end method

.method private static OooO(Lorg/junit/runner/Description;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Class;

    return-object p0

    :cond_0
    const-class v1, Lz2/p50;

    invoke-virtual {p0, v1}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lz2/p50;

    if-nez p0, :cond_1

    new-array p0, v0, [Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lz2/p50;->value()[Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static OooO0o(Lorg/junit/runner/Description;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Description;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Lz2/o50$OooO00o;->OooO(Lorg/junit/runner/Description;)[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {p0}, Lz2/o50$OooO00o;->OooOo00(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;

    move-result-object p0

    invoke-static {p0}, Lz2/o50$OooO00o;->OooO(Lorg/junit/runner/Description;)[Ljava/lang/Class;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static OooO0oO(ZLjava/util/Set;ZLjava/util/Set;)Lz2/o50$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;Z",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lz2/o50$OooO00o;"
        }
    .end annotation

    new-instance v0, Lz2/o50$OooO00o;

    invoke-direct {v0, p0, p1, p2, p3}, Lz2/o50$OooO00o;-><init>(ZLjava/util/Set;ZLjava/util/Set;)V

    return-object v0
.end method

.method private static OooO0oo(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static OooOO0(Ljava/lang/Class;)Lz2/o50$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/o50$OooO00o;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lz2/o50$OooO00o;->OooOO0O(Z[Ljava/lang/Class;)Lz2/o50$OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public static varargs OooOO0O(Z[Ljava/lang/Class;)Lz2/o50$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/o50$OooO00o;"
        }
    .end annotation

    invoke-static {p1}, Lz2/o50$OooO00o;->OooOOO([Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lz2/o50;->Oooo0O0([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, v1, p0, p1}, Lz2/o50$OooO00o;->OooO0oO(ZLjava/util/Set;ZLjava/util/Set;)Lz2/o50$OooO00o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "has null category"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs OooOO0o([Ljava/lang/Class;)Lz2/o50$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/o50$OooO00o;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lz2/o50$OooO00o;->OooOO0O(Z[Ljava/lang/Class;)Lz2/o50$OooO00o;

    move-result-object p0

    return-object p0
.end method

.method private static varargs OooOOO([Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private OooOOO0(Lorg/junit/runner/Description;)Z
    .locals 2

    invoke-static {p1}, Lz2/o50$OooO00o;->OooO0o(Lorg/junit/runner/Description;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lz2/o50$OooO00o;->OooO0O0:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lz2/o50$OooO00o;->OooO0OO:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lz2/o50$OooO00o;->OooO0o0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/o50$OooO00o;->OooO0OO:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lz2/o50$OooO00o;->OooOOoo(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    iget-object v0, p0, Lz2/o50$OooO00o;->OooO0OO:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lz2/o50$OooO00o;->OooOOo(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lz2/o50$OooO00o;->OooO0O0:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    iget-boolean v0, p0, Lz2/o50$OooO00o;->OooO0Oo:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lz2/o50$OooO00o;->OooO0O0:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lz2/o50$OooO00o;->OooOOoo(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    return p1

    :cond_4
    iget-object v0, p0, Lz2/o50$OooO00o;->OooO0O0:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lz2/o50$OooO00o;->OooOOo(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method public static OooOOOO(Ljava/lang/Class;)Lz2/o50$OooO00o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/o50$OooO00o;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lz2/o50$OooO00o;->OooOOOo(Z[Ljava/lang/Class;)Lz2/o50$OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public static varargs OooOOOo(Z[Ljava/lang/Class;)Lz2/o50$OooO00o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/o50$OooO00o;"
        }
    .end annotation

    invoke-static {p1}, Lz2/o50$OooO00o;->OooOOO([Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lz2/o50;->Oooo0O0([Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lz2/o50$OooO00o;->OooO0oO(ZLjava/util/Set;ZLjava/util/Set;)Lz2/o50$OooO00o;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "has null category"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private OooOOo(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p1, v0}, Lz2/o50;->Oooo0OO(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static varargs OooOOo0([Ljava/lang/Class;)Lz2/o50$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/o50$OooO00o;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lz2/o50$OooO00o;->OooOOOo(Z[Ljava/lang/Class;)Lz2/o50$OooO00o;

    move-result-object p0

    return-object p0
.end method

.method private OooOOoo(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {p1, v0}, Lz2/o50;->Oooo0OO(Ljava/util/Set;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static OooOo00(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;
    .locals 0

    invoke-virtual {p0}, Lorg/junit/runner/Description;->getTestClass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/junit/runner/Description;->createSuiteDescription(Ljava/lang/Class;)Lorg/junit/runner/Description;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public OooO0O0()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lz2/o50$OooO00o;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o0(Lorg/junit/runner/Description;)Z
    .locals 2

    invoke-direct {p0, p1}, Lz2/o50$OooO00o;->OooOOO0(Lorg/junit/runner/Description;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    invoke-virtual {p0, v0}, Lz2/o50$OooO00o;->OooO0o0(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "categories "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz2/o50$OooO00o;->OooO0O0:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[all]"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz2/o50$OooO00o;->OooO0O0:Ljava/util/Set;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/o50$OooO00o;->OooO0OO:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/o50$OooO00o;->OooO0OO:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
