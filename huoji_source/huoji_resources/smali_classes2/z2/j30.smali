.class public Lz2/j30;
.super Lz2/i20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/i20<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final OoooOoO:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/i20;-><init>()V

    iput-object p1, p0, Lz2/j30;->OoooOoO:Ljava/lang/Object;

    return-void
.end method

.method public static OooO0Oo(Ljava/lang/Object;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/j30;

    invoke-direct {v0, p0}, Lz2/j30;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static OooO0o0(Ljava/lang/Object;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/j30;

    invoke-direct {v0, p0}, Lz2/j30;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lz2/j30;->OoooOoO:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    const-string v0, "sameInstance("

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    iget-object v0, p0, Lz2/j30;->OoooOoO:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0o0(Ljava/lang/Object;)Lz2/n20;

    move-result-object p1

    const-string v0, ")"

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    return-void
.end method
