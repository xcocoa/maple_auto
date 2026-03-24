.class public Lz2/l30;
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

    new-instance v0, Lz2/l30;

    invoke-direct {v0, p0}, Lz2/l30;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public OooO()Ljava/lang/String;
    .locals 1

    const-string v0, "containing"

    return-object v0
.end method

.method public OooO0oO(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lz2/o30;->Ooooo00:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
