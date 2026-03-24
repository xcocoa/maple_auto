.class public Lz2/d30;
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
.field private final OoooOoO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ANYTHING"

    invoke-direct {p0, v0}, Lz2/d30;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lz2/i20;-><init>()V

    iput-object p1, p0, Lz2/d30;->OoooOoO:Ljava/lang/String;

    return-void
.end method

.method public static OooO0Oo()Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz2/r20<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/d30;

    invoke-direct {v0}, Lz2/d30;-><init>()V

    return-object v0
.end method

.method public static OooO0o0(Ljava/lang/String;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lz2/r20<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/d30;

    invoke-direct {v0, p0}, Lz2/d30;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    iget-object v0, p0, Lz2/d30;->OoooOoO:Ljava/lang/String;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    return-void
.end method
