.class public Lz2/dw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/gw;
.implements Lz2/d90;
.implements Lz2/e90;
.implements Lz2/w80;


# instance fields
.field private final OooO00o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final OooO0O0:Lz2/b90;

.field private final OooO0OO:Ljunit/framework/JUnit4TestAdapterCache;


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

    invoke-static {}, Ljunit/framework/JUnit4TestAdapterCache;->getDefault()Ljunit/framework/JUnit4TestAdapterCache;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lz2/dw;-><init>(Ljava/lang/Class;Ljunit/framework/JUnit4TestAdapterCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljunit/framework/JUnit4TestAdapterCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljunit/framework/JUnit4TestAdapterCache;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/dw;->OooO0OO:Ljunit/framework/JUnit4TestAdapterCache;

    iput-object p1, p0, Lz2/dw;->OooO00o:Ljava/lang/Class;

    invoke-static {p1}, Lz2/z80;->OooO0O0(Ljava/lang/Class;)Lz2/z80;

    move-result-object p1

    invoke-virtual {p1}, Lz2/z80;->OooO0oo()Lz2/b90;

    move-result-object p1

    iput-object p1, p0, Lz2/dw;->OooO0O0:Lz2/b90;

    return-void
.end method

.method private OooO0oO(Lorg/junit/runner/Description;)Z
    .locals 1

    const-class v0, Lz2/l50;

    invoke-virtual {p1, v0}, Lorg/junit/runner/Description;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private OooO0oo(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;
    .locals 3

    invoke-direct {p0, p1}, Lz2/dw;->OooO0oO(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lorg/junit/runner/Description;->EMPTY:Lorg/junit/runner/Description;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/junit/runner/Description;->childlessCopy()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-virtual {p1}, Lorg/junit/runner/Description;->getChildren()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runner/Description;

    invoke-direct {p0, v1}, Lz2/dw;->OooO0oo(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {v1}, Lorg/junit/runner/Description;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/junit/runner/Description;->addChild(Lorg/junit/runner/Description;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget-object v0, p0, Lz2/dw;->OooO0O0:Lz2/b90;

    invoke-virtual {v0}, Lz2/b90;->OooO0O0()I

    move-result v0

    return v0
.end method

.method public OooO0O0(Lz2/kw;)V
    .locals 2

    iget-object v0, p0, Lz2/dw;->OooO0O0:Lz2/b90;

    iget-object v1, p0, Lz2/dw;->OooO0OO:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {v1, p1, p0}, Ljunit/framework/JUnit4TestAdapterCache;->getNotifier(Lz2/kw;Lz2/dw;)Lz2/h90;

    move-result-object p1

    invoke-virtual {v0, p1}, Lz2/b90;->OooO00o(Lz2/h90;)V

    return-void
.end method

.method public OooO0OO(Lz2/c90;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    iget-object v0, p0, Lz2/dw;->OooO0O0:Lz2/b90;

    invoke-virtual {p1, v0}, Lz2/c90;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0Oo(Lz2/f90;)V
    .locals 1

    iget-object v0, p0, Lz2/dw;->OooO0O0:Lz2/b90;

    invoke-virtual {p1, v0}, Lz2/f90;->OooO00o(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/gw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/dw;->OooO0OO:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {p0}, Lz2/dw;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/JUnit4TestAdapterCache;->asTestList(Lorg/junit/runner/Description;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o0()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/dw;->OooO00o:Ljava/lang/Class;

    return-object v0
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    iget-object v0, p0, Lz2/dw;->OooO0O0:Lz2/b90;

    invoke-virtual {v0}, Lz2/b90;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/dw;->OooO0oo(Lorg/junit/runner/Description;)Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/dw;->OooO00o:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
