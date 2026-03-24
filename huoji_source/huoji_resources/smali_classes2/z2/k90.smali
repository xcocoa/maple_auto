.class public Lz2/k90;
.super Lz2/n90;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/n90<",
        "Lz2/s90;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO0o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lz2/s90;",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
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

    invoke-direct {p0, p1}, Lz2/n90;-><init>(Ljava/lang/Class;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lz2/k90;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private Oooo0(Lorg/junit/Test;)Z
    .locals 0

    invoke-direct {p0, p1}, Lz2/k90;->Oooo0O0(Lorg/junit/Test;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private Oooo0O0(Lorg/junit/Test;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/Test;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/junit/Test$None;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/junit/Test;->expected()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private Oooo0OO(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lz2/k80;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/k90;->OoooO0O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private Oooo0o(Lorg/junit/Test;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {p1}, Lorg/junit/Test;->timeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private Oooo0oO()Z
    .locals 2

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    invoke-virtual {v0}, Lz2/x90;->OooOO0o()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private OoooOo0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lz2/x70;->OooO0oO:Lz2/x70;

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lz2/x70;->OooO(Lz2/x90;Ljava/util/List;)V

    return-void
.end method

.method private OooooOo(Lz2/s90;Ljava/util/List;Ljava/lang/Object;Lz2/w90;)Lz2/w90;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/s90;",
            "Ljava/util/List<",
            "Lz2/q80;",
            ">;",
            "Ljava/lang/Object;",
            "Lz2/w90;",
            ")",
            "Lz2/w90;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lz2/k90;->Oooo0OO(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/k80;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p4, p1, p3}, Lz2/k80;->OooO00o(Lz2/w90;Lz2/s90;Ljava/lang/Object;)Lz2/w90;

    move-result-object p4

    goto :goto_0

    :cond_1
    return-object p4
.end method

.method private Oooooo(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;
    .locals 1

    invoke-virtual {p0, p2}, Lz2/k90;->Oooo0o0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lz2/k90;->OooooOo(Lz2/s90;Ljava/util/List;Ljava/lang/Object;Lz2/w90;)Lz2/w90;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lz2/k90;->OoooooO(Lz2/s90;Ljava/util/List;Lz2/w90;)Lz2/w90;

    move-result-object p1

    return-object p1
.end method

.method private OoooooO(Lz2/s90;Ljava/util/List;Lz2/w90;)Lz2/w90;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/s90;",
            "Ljava/util/List<",
            "Lz2/q80;",
            ">;",
            "Lz2/w90;",
            ")",
            "Lz2/w90;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lz2/m80;

    invoke-virtual {p0, p1}, Lz2/k90;->Oooo00o(Lz2/s90;)Lorg/junit/runner/Description;

    move-result-object p1

    invoke-direct {v0, p3, p2, p1}, Lz2/m80;-><init>(Lz2/w90;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V

    move-object p3, v0

    :goto_0
    return-object p3
.end method


# virtual methods
.method public OooOO0O(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lz2/n90;->OooOO0O(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lz2/k90;->OoooOoO(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lz2/k90;->o000oOoO(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lz2/k90;->OoooOOo(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lz2/k90;->OoooOOO(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lz2/k90;->OoooOo0(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic OooOOO(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .locals 0

    check-cast p1, Lz2/s90;

    invoke-virtual {p0, p1}, Lz2/k90;->Oooo00o(Lz2/s90;)Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1
.end method

.method public OooOOOO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/s90;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/k90;->Oooo000()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic OooOo0(Ljava/lang/Object;Lz2/h90;)V
    .locals 0

    check-cast p1, Lz2/s90;

    invoke-virtual {p0, p1, p2}, Lz2/k90;->OoooO(Lz2/s90;Lz2/h90;)V

    return-void
.end method

.method public bridge synthetic OooOo00(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lz2/s90;

    invoke-virtual {p0, p1}, Lz2/k90;->Oooo0oo(Lz2/s90;)Z

    move-result p1

    return p1
.end method

.method public Oooo(Lz2/s90;)Lz2/w90;
    .locals 2

    :try_start_0
    new-instance v0, Lz2/k90$OooO00o;

    invoke-direct {v0, p0}, Lz2/k90$OooO00o;-><init>(Lz2/k90;)V

    invoke-virtual {v0}, Lz2/w70;->OooO00o()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, v0}, Lz2/k90;->OoooO00(Lz2/s90;Ljava/lang/Object;)Lz2/w90;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lz2/k90;->OoooO0(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lz2/k90;->Oooooo0(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lz2/k90;->OooooOO(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lz2/k90;->OooooO0(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lz2/k90;->Oooooo(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, Lz2/z70;

    invoke-direct {v0, p1}, Lz2/z70;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public Oooo000()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/s90;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    const-class v1, Lorg/junit/Test;

    invoke-virtual {v0, v1}, Lz2/x90;->OooOO0O(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Oooo00O()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    invoke-virtual {v0}, Lz2/x90;->OooOOO()Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public Oooo00o(Lz2/s90;)Lorg/junit/runner/Description;
    .locals 3

    iget-object v0, p0, Lz2/k90;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/junit/runner/Description;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    invoke-virtual {v0}, Lz2/x90;->OooOO0o()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1}, Lz2/k90;->OoooOO0(Lz2/s90;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lz2/s90;->OooO0O0()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)Lorg/junit/runner/Description;

    move-result-object v0

    iget-object v1, p0, Lz2/k90;->OooO0o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public Oooo0o0(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lz2/q80;",
            ">;"
        }
    .end annotation

    const-class v0, Lz2/q80;

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v1

    const-class v2, Lz2/m50;

    invoke-virtual {v1, p1, v2, v0}, Lz2/x90;->OooO(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v2

    const-class v3, Lz2/m50;

    invoke-virtual {v2, p1, v3, v0}, Lz2/x90;->OooO0o0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public Oooo0oo(Lz2/s90;)Z
    .locals 1

    const-class v0, Lz2/l50;

    invoke-virtual {p1, v0}, Lz2/s90;->OooO00o(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OoooO(Lz2/s90;Lz2/h90;)V
    .locals 2

    invoke-virtual {p0, p1}, Lz2/k90;->Oooo00o(Lz2/s90;)Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {p0, p1}, Lz2/k90;->Oooo0oo(Lz2/s90;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lz2/h90;->OooO(Lorg/junit/runner/Description;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lz2/k90;->Oooo(Lz2/s90;)Lz2/w90;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2}, Lz2/n90;->OooOo0o(Lz2/w90;Lorg/junit/runner/Description;Lz2/h90;)V

    :goto_0
    return-void
.end method

.method public OoooO0(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;
    .locals 0

    const-class p2, Lorg/junit/Test;

    invoke-virtual {p1, p2}, Lz2/s90;->OooO00o(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/junit/Test;

    invoke-direct {p0, p1}, Lz2/k90;->Oooo0(Lorg/junit/Test;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lz2/y70;

    invoke-direct {p0, p1}, Lz2/k90;->Oooo0O0(Lorg/junit/Test;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lz2/y70;-><init>(Lz2/w90;Ljava/lang/Class;)V

    move-object p3, p2

    :cond_0
    return-object p3
.end method

.method public OoooO00(Lz2/s90;Ljava/lang/Object;)Lz2/w90;
    .locals 1

    new-instance v0, Lz2/b80;

    invoke-direct {v0, p1, p2}, Lz2/b80;-><init>(Lz2/s90;Ljava/lang/Object;)V

    return-object v0
.end method

.method public OoooO0O(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lz2/k80;",
            ">;"
        }
    .end annotation

    const-class v0, Lz2/k80;

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v1

    const-class v2, Lz2/m50;

    invoke-virtual {v1, p1, v2, v0}, Lz2/x90;->OooO(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v2

    const-class v3, Lz2/m50;

    invoke-virtual {v2, p1, v3, v0}, Lz2/x90;->OooO0o0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public OoooOO0(Lz2/s90;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lz2/s90;->OooO0o0()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OoooOOO(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lz2/x70;->OooO0o0:Lz2/x70;

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lz2/x70;->OooO(Lz2/x90;Ljava/util/List;)V

    return-void
.end method

.method public OoooOOo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lz2/d50;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lz2/n90;->OooOoo0(Ljava/lang/Class;ZLjava/util/List;)V

    const-class v0, Lz2/h50;

    invoke-virtual {p0, v0, v1, p1}, Lz2/n90;->OooOoo0(Ljava/lang/Class;ZLjava/util/List;)V

    invoke-virtual {p0, p1}, Lz2/k90;->Ooooo00(Ljava/util/List;)V

    invoke-virtual {p0}, Lz2/k90;->Oooo000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No runnable methods"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public OoooOoO(Ljava/util/List;)V
    .locals 2
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

    invoke-virtual {v0}, Lz2/x90;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The inner class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v1

    invoke-virtual {v1}, Lz2/x90;->OooOOO0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not static."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public OoooOoo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/k90;->Oooo0oO()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Test class should have exactly one public constructor"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public Ooooo00(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lorg/junit/Test;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lz2/n90;->OooOoo0(Ljava/lang/Class;ZLjava/util/List;)V

    return-void
.end method

.method public Ooooo0o(Ljava/util/List;)V
    .locals 2
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

    invoke-virtual {v0}, Lz2/x90;->OooOOo0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lz2/k90;->Oooo0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object v0

    invoke-virtual {v0}, Lz2/x90;->OooOOO()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Test class should have exactly one public zero-argument constructor"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public OooooO0(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;
    .locals 1

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object p1

    const-class v0, Lz2/d50;

    invoke-virtual {p1, v0}, Lz2/x90;->OooOO0O(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lz2/c80;

    invoke-direct {v0, p3, p1, p2}, Lz2/c80;-><init>(Lz2/w90;Ljava/util/List;Ljava/lang/Object;)V

    move-object p3, v0

    :goto_0
    return-object p3
.end method

.method public OooooOO(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;
    .locals 1

    invoke-virtual {p0}, Lz2/n90;->OooOOoo()Lz2/x90;

    move-result-object p1

    const-class v0, Lz2/h50;

    invoke-virtual {p1, v0}, Lz2/x90;->OooOO0O(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lz2/d80;

    invoke-direct {v0, p3, p1, p2}, Lz2/d80;-><init>(Lz2/w90;Ljava/util/List;Ljava/lang/Object;)V

    move-object p3, v0

    :goto_0
    return-object p3
.end method

.method public Oooooo0(Lz2/s90;Ljava/lang/Object;Lz2/w90;)Lz2/w90;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class p2, Lorg/junit/Test;

    invoke-virtual {p1, p2}, Lz2/s90;->OooO00o(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/junit/Test;

    invoke-direct {p0, p1}, Lz2/k90;->Oooo0o(Lorg/junit/Test;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-object p3

    :cond_0
    invoke-static {}, Lz2/a80;->OooO0OO()Lz2/a80$OooO0O0;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Lz2/a80$OooO0O0;->OooO0o(JLjava/util/concurrent/TimeUnit;)Lz2/a80$OooO0O0;

    move-result-object p1

    invoke-virtual {p1, p3}, Lz2/a80$OooO0O0;->OooO0Oo(Lz2/w90;)Lz2/a80;

    move-result-object p1

    return-object p1
.end method

.method public o000oOoO(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/k90;->OoooOoo(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lz2/k90;->Ooooo0o(Ljava/util/List;)V

    return-void
.end method
