.class public Lz2/i30;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/i20;-><init>()V

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

    invoke-static {}, Lz2/i30;->OooO0o()Lz2/r20;

    move-result-object v0

    invoke-static {v0}, Lz2/h30;->OooO0o0(Lz2/r20;)Lz2/r20;

    move-result-object v0

    return-object v0
.end method

.method public static OooO0o()Lz2/r20;
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

    new-instance v0, Lz2/i30;

    invoke-direct {v0}, Lz2/i30;-><init>()V

    return-object v0
.end method

.method public static OooO0o0(Ljava/lang/Class;)Lz2/r20;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    invoke-static {p0}, Lz2/i30;->OooO0oO(Ljava/lang/Class;)Lz2/r20;

    move-result-object p0

    invoke-static {p0}, Lz2/h30;->OooO0o0(Lz2/r20;)Lz2/r20;

    move-result-object p0

    return-object p0
.end method

.method public static OooO0oO(Ljava/lang/Class;)Lz2/r20;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lz2/r20<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lz2/p20;
    .end annotation

    new-instance p0, Lz2/i30;

    invoke-direct {p0}, Lz2/i30;-><init>()V

    return-object p0
.end method


# virtual methods
.method public OooO0O0(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    const-string v0, "null"

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    return-void
.end method
