.class public Lz2/l80;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/q80;


# static fields
.field private static final OooO0O0:Lz2/l80;


# instance fields
.field private OooO00o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/q80;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/l80;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lz2/l80;-><init>(Ljava/util/List;)V

    sput-object v0, Lz2/l80;->OooO0O0:Lz2/l80;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/q80;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/l80;->OooO00o:Ljava/util/List;

    return-void
.end method

.method public static OooO0OO()Lz2/l80;
    .locals 1

    sget-object v0, Lz2/l80;->OooO0O0:Lz2/l80;

    return-object v0
.end method

.method public static OooO0Oo(Lz2/q80;)Lz2/l80;
    .locals 1

    invoke-static {}, Lz2/l80;->OooO0OO()Lz2/l80;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l80;->OooO0O0(Lz2/q80;)Lz2/l80;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;
    .locals 2

    iget-object v0, p0, Lz2/l80;->OooO00o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/q80;

    invoke-interface {v1, p1, p2}, Lz2/q80;->OooO00o(Lz2/w90;Lorg/junit/runner/Description;)Lz2/w90;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public OooO0O0(Lz2/q80;)Lz2/l80;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2/l80;->OooO00o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lz2/l80;

    invoke-direct {p1, v0}, Lz2/l80;-><init>(Ljava/util/List;)V

    return-object p1
.end method
