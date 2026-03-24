.class public Lz2/f80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/q80;


# instance fields
.field private final OooO00o:Lz2/q80;

.field private final OooO0O0:Z


# direct methods
.method public constructor <init>(Lz2/q80;)V
    .locals 1

    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/management/RuntimeMXBean;->getInputArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lz2/f80;-><init>(Lz2/q80;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lz2/q80;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/q80;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/f80;->OooO00o:Lz2/q80;

    invoke-static {p2}, Lz2/f80;->OooO0OO(Ljava/util/List;)Z

    move-result p1

    iput-boolean p1, p0, Lz2/f80;->OooO0O0:Z

    return-void
.end method

.method private static OooO0OO(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-Xdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "-agentlib:jdwp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
    .locals 1

    iget-boolean v0, p0, Lz2/f80;->OooO0O0:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lz2/f80;->OooO00o:Lz2/q80;

    invoke-interface {v0, p1, p2}, Lz2/q80;->OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/f80;->OooO0O0:Z

    return v0
.end method
