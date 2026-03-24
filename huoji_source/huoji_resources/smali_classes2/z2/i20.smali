.class public abstract Lz2/i20;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/r20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz2/r20<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;Lz2/n20;)V
    .locals 1

    const-string v0, "was "

    invoke-interface {p2, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p2

    invoke-interface {p2, p1}, Lz2/n20;->OooO0o0(Ljava/lang/Object;)Lz2/n20;

    return-void
.end method

.method public final OooO0OO()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lz2/u20;->OooOOOO(Lz2/t20;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
