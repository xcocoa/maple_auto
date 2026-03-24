.class public Lz2/o90;
.super Lz2/n90;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o90$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/n90<",
        "Lz2/b90;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/b90;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lz2/b90;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    invoke-direct {p0, p1}, Lz2/n90;-><init>(Ljava/lang/Class;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz2/o90;->OooO0o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lz2/u90;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lz2/u90;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    invoke-static {p1}, Lz2/o90;->Oooo00o(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lz2/o90;-><init>(Lz2/u90;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    new-instance v0, Lz2/x60;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz2/x60;-><init>(Z)V

    invoke-direct {p0, v0, p1, p2}, Lz2/o90;-><init>(Lz2/u90;Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lz2/u90;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/u90;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lz2/u90;->OooO0o0(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lz2/o90;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lz2/u90;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/u90;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lz2/u90;->OooO0o0(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lz2/o90;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method

.method public static Oooo00O()Lz2/b90;
    .locals 3

    :try_start_0
    new-instance v0, Lz2/o90;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lz2/o90;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    :try_end_0
    .catch Lorg/junit/runners/model/InitializationError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This shouldn\'t be possible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static Oooo00o(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runners/model/InitializationError;
        }
    .end annotation

    const-class v0, Lz2/o90$OooO00o;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lz2/o90$OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/o90$OooO00o;->value()[Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/junit/runners/model/InitializationError;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "class \'%s\' must have a SuiteClasses annotation"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/junit/runners/model/InitializationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic OooOOO(Ljava/lang/Object;)Lorg/junit/runner/Description;
    .locals 0

    check-cast p1, Lz2/b90;

    invoke-virtual {p0, p1}, Lz2/o90;->Oooo000(Lz2/b90;)Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1
.end method

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

    iget-object v0, p0, Lz2/o90;->OooO0o:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic OooOo0(Ljava/lang/Object;Lz2/h90;)V
    .locals 0

    check-cast p1, Lz2/b90;

    invoke-virtual {p0, p1, p2}, Lz2/o90;->Oooo0(Lz2/b90;Lz2/h90;)V

    return-void
.end method

.method public Oooo0(Lz2/b90;Lz2/h90;)V
    .locals 0

    invoke-virtual {p1, p2}, Lz2/b90;->OooO00o(Lz2/h90;)V

    return-void
.end method

.method public Oooo000(Lz2/b90;)Lorg/junit/runner/Description;
    .locals 0

    invoke-virtual {p1}, Lz2/b90;->getDescription()Lorg/junit/runner/Description;

    move-result-object p1

    return-object p1
.end method
