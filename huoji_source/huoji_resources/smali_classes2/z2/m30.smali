.class public Lz2/m30;
.super Lz2/o30;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o30;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static OooOO0(Ljava/lang/String;)Lz2/r20;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lz2/r20<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance v0, Lz2/m30;

    invoke-direct {v0, p0}, Lz2/m30;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public OooO()Ljava/lang/String;
    .locals 1

    const-string v0, "ending with"

    return-object v0
.end method

.method public OooO0oO(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lz2/o30;->Ooooo00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
