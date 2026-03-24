.class public Lz2/m80;
.super Lz2/w90;
.source ""


# instance fields
.field private final OooO00o:Lz2/w90;


# direct methods
.method public constructor <init>(Lz2/w90;Ljava/lang/Iterable;Lorg/junit/runner/Description;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/w90;",
            "Ljava/lang/Iterable<",
            "Lz2/q80;",
            ">;",
            "Lorg/junit/runner/Description;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/w90;-><init>()V

    invoke-static {p1, p2, p3}, Lz2/m80;->OooO0O0(Lz2/w90;Ljava/lang/Iterable;Lorg/junit/runner/Description;)Lz2/w90;

    move-result-object p1

    iput-object p1, p0, Lz2/m80;->OooO00o:Lz2/w90;

    return-void
.end method

.method private static OooO0O0(Lz2/w90;Ljava/lang/Iterable;Lorg/junit/runner/Description;)Lz2/w90;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/w90;",
            "Ljava/lang/Iterable<",
            "Lz2/q80;",
            ">;",
            "Lorg/junit/runner/Description;",
            ")",
            "Lz2/w90;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/q80;

    invoke-interface {v0, p0, p2}, Lz2/q80;->OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public OooO00o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/m80;->OooO00o:Lz2/w90;

    invoke-virtual {v0}, Lz2/w90;->OooO00o()V

    return-void
.end method
