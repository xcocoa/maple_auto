.class public Lz2/b20;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/b20$OooO0OO;,
        Lz2/b20$OooO0O0;
    }
.end annotation


# instance fields
.field private final OooO00o:Ljava/util/concurrent/Executor;

.field private final OooO0O0:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final OooO0OO:Lz2/l10;

.field private final OooO0Oo:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lz2/l10;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lz2/l10;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/b20;->OooO00o:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lz2/b20;->OooO0OO:Lz2/l10;

    iput-object p4, p0, Lz2/b20;->OooO0Oo:Ljava/lang/Object;

    const/4 p1, 0x1

    :try_start_0
    new-array p1, p1, [Ljava/lang/Class;

    const/4 p2, 0x0

    const-class p4, Ljava/lang/Throwable;

    aput-object p4, p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lz2/b20;->OooO0O0:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failure event class must have a constructor with one parameter of type Throwable"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lz2/l10;Ljava/lang/Class;Ljava/lang/Object;Lz2/b20$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lz2/b20;-><init>(Ljava/util/concurrent/Executor;Lz2/l10;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/b20;)Ljava/lang/reflect/Constructor;
    .locals 0

    iget-object p0, p0, Lz2/b20;->OooO0O0:Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/b20;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lz2/b20;->OooO0Oo:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/b20;)Lz2/l10;
    .locals 0

    iget-object p0, p0, Lz2/b20;->OooO0OO:Lz2/l10;

    return-object p0
.end method

.method public static OooO0Oo()Lz2/b20$OooO0O0;
    .locals 2

    new-instance v0, Lz2/b20$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/b20$OooO0O0;-><init>(Lz2/b20$OooO00o;)V

    return-object v0
.end method

.method public static OooO0o0()Lz2/b20;
    .locals 2

    new-instance v0, Lz2/b20$OooO0O0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/b20$OooO0O0;-><init>(Lz2/b20$OooO00o;)V

    invoke-virtual {v0}, Lz2/b20$OooO0O0;->OooO00o()Lz2/b20;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OooO0o(Lz2/b20$OooO0OO;)V
    .locals 2

    iget-object v0, p0, Lz2/b20;->OooO00o:Ljava/util/concurrent/Executor;

    new-instance v1, Lz2/b20$OooO00o;

    invoke-direct {v1, p0, p1}, Lz2/b20$OooO00o;-><init>(Lz2/b20;Lz2/b20$OooO0OO;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
