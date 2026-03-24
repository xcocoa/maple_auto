.class public Lz2/m90;
.super Lz2/o90;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/m90$OooO0OO;,
        Lz2/m90$OooO00o;,
        Lz2/m90$OooO0O0;
    }
.end annotation


# static fields
.field private static final OooO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/b90;",
            ">;"
        }
    .end annotation
.end field

.field private static final OooO0oo:Lz2/aa0;


# instance fields
.field private final OooO0oO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/b90;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/z90;

    invoke-direct {v0}, Lz2/z90;-><init>()V

    sput-object v0, Lz2/m90;->OooO0oo:Lz2/aa0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz2/m90;->OooO:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    sget-object v0, Lz2/m90;->OooO:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lz2/o90;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    invoke-direct {p0, p1}, Lz2/m90;->Oooo(Ljava/lang/Class;)Lz2/aa0;

    move-result-object p1

    invoke-direct {p0}, Lz2/m90;->Oooo0oo()Lz2/s90;

    move-result-object v0

    const-class v1, Lz2/m90$OooO0O0;

    invoke-virtual {v0, v1}, Lz2/s90;->OooO00o(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz2/m90$OooO0O0;

    invoke-direct {p0}, Lz2/m90;->Oooo0O0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v0}, Lz2/m90$OooO0O0;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lz2/m90;->Oooo0OO(Ljava/lang/Iterable;Ljava/lang/String;Lz2/aa0;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/m90;->OooO0oO:Ljava/util/List;

    return-void
.end method

.method private Oooo(Ljava/lang/Class;)Lz2/aa0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lz2/aa0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-class v0, Lz2/m90$OooO0OO;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lz2/m90$OooO0OO;

    if-nez p1, :cond_0

    sget-object p1, Lz2/m90;->OooO0oo:Lz2/aa0;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lz2/m90$OooO0OO;->value()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/aa0;

    return-object p1
.end method

.method private Oooo0O0()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lz2/m90;->Oooo0oo()Lz2/s90;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lz2/s90;->OooOOOO(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Iterable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0

    :cond_0
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lz2/m90;->OoooO00()Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method private Oooo0OO(Ljava/lang/Iterable;Ljava/lang/String;Lz2/aa0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lz2/aa0;",
            ")",
            "Ljava/util/List<",
            "Lz2/b90;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;,
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lz2/m90;->Oooo0oO(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/ba0;

    invoke-interface {p3, v0}, Lz2/aa0;->OooO00o(Lz2/ba0;)Lz2/b90;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object p2

    :catch_0
    invoke-direct {p0}, Lz2/m90;->OoooO00()Ljava/lang/Exception;

    move-result-object p1

    throw p1
.end method

.method private static Oooo0o(Lz2/x90;Ljava/lang/String;I[Ljava/lang/Object;)Lz2/ba0;
    .locals 2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "\\{index\\}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lz2/ba0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p1, p0, p3}, Lz2/ba0;-><init>(Ljava/lang/String;Lz2/x90;Ljava/util/List;)V

    return-object p2
.end method

.method private Oooo0o0(Ljava/lang/String;ILjava/lang/Object;)Lz2/ba0;
    .locals 2

    instance-of v0, p3, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p3, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    move-object p3, v0

    :goto_0
    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lz2/m90;->Oooo0o(Lz2/x90;Ljava/lang/String;I[Ljava/lang/Object;)Lz2/ba0;

    move-result-object p1

    return-object p1
.end method

.method private Oooo0oO(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lz2/ba0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p2, v1, v2}, Lz2/m90;->Oooo0o0(Ljava/lang/String;ILjava/lang/Object;)Lz2/ba0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private Oooo0oo()Lz2/s90;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    const-class v1, Lz2/m90$OooO0O0;

    invoke-virtual {v0, v1}, Lz2/x90;->OooOO0O(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/s90;

    invoke-virtual {v1}, Lz2/r90;->OooOO0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lz2/r90;->OooO0oO()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No public static parameters method on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v2

    invoke-virtual {v2}, Lz2/x90;->OooOOO0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OoooO00()Ljava/lang/Exception;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    invoke-virtual {v0}, Lz2/x90;->OooOOO0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lz2/m90;->Oooo0oo()Lz2/s90;

    move-result-object v1

    invoke-virtual {v1}, Lz2/s90;->OooO0o0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "{0}.{1}() must return an Iterable of arrays."

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public OooOOOO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/b90;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/m90;->OooO0oO:Ljava/util/List;

    return-object v0
.end method
