.class public Lz2/d80;
.super Lz2/w90;
.source ""


# instance fields
.field private final OooO00o:Lz2/w90;

.field private final OooO0O0:Ljava/lang/Object;

.field private final OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/s90;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/w90;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/w90;",
            "Ljava/util/List<",
            "Lz2/s90;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/w90;-><init>()V

    iput-object p1, p0, Lz2/d80;->OooO00o:Lz2/w90;

    iput-object p2, p0, Lz2/d80;->OooO0OO:Ljava/util/List;

    iput-object p3, p0, Lz2/d80;->OooO0O0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lz2/d80;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/s90;

    iget-object v2, p0, Lz2/d80;->OooO0O0:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lz2/s90;->OooOOOO(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/d80;->OooO00o:Lz2/w90;

    invoke-virtual {v0}, Lz2/w90;->OooO00o()V

    return-void
.end method
