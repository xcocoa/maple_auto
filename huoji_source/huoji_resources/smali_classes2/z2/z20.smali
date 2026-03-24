.class public Lz2/z20;
.super Lz2/v20;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/z20$OooO0O0;,
        Lz2/z20$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/v20<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final Ooooo00:Lz2/r20;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/r20<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/r20;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/v20;-><init>()V

    iput-object p1, p0, Lz2/z20;->Ooooo00:Lz2/r20;

    return-void
.end method

.method private OooO(Lz2/r20;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "-TT;>;)",
            "Ljava/util/ArrayList<",
            "Lz2/r20<",
            "-TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz2/z20;->Ooooo00:Lz2/r20;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static OooO0o(Lz2/r20;)Lz2/z20$OooO00o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LHS:Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "-T",
            "LHS;",
            ">;)",
            "Lz2/z20$OooO00o<",
            "T",
            "LHS;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/z20$OooO00o;

    invoke-direct {v0, p0}, Lz2/z20$OooO00o;-><init>(Lz2/r20;)V

    return-object v0
.end method

.method public static OooO0oO(Lz2/r20;)Lz2/z20$OooO0O0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "LHS:Ljava/lang/Object;",
            ">(",
            "Lz2/r20<",
            "-T",
            "LHS;",
            ">;)",
            "Lz2/z20$OooO0O0<",
            "T",
            "LHS;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/z20$OooO0O0;

    invoke-direct {v0, p0}, Lz2/z20$OooO0O0;-><init>(Lz2/r20;)V

    return-object v0
.end method


# virtual methods
.method public OooO0Oo(Ljava/lang/Object;Lz2/n20;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lz2/n20;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lz2/z20;->Ooooo00:Lz2/r20;

    invoke-interface {v0, p1}, Lz2/r20;->OooO0O0(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/z20;->Ooooo00:Lz2/r20;

    invoke-interface {v0, p1, p2}, Lz2/r20;->OooO00o(Ljava/lang/Object;Lz2/n20;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public OooO0o0(Lz2/r20;)Lz2/z20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/z20<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/z20;

    new-instance v1, Lz2/x20;

    invoke-direct {p0, p1}, Lz2/z20;->OooO(Lz2/r20;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v1, p1}, Lz2/x20;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {v0, v1}, Lz2/z20;-><init>(Lz2/r20;)V

    return-object v0
.end method

.method public OooO0oo(Lz2/r20;)Lz2/z20;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/r20<",
            "-TT;>;)",
            "Lz2/z20<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lz2/z20;

    new-instance v1, Lz2/y20;

    invoke-direct {p0, p1}, Lz2/z20;->OooO(Lz2/r20;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v1, p1}, Lz2/y20;-><init>(Ljava/lang/Iterable;)V

    invoke-direct {v0, v1}, Lz2/z20;-><init>(Lz2/r20;)V

    return-object v0
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    iget-object v0, p0, Lz2/z20;->Ooooo00:Lz2/r20;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0O0(Lz2/t20;)Lz2/n20;

    return-void
.end method
