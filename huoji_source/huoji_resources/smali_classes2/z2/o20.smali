.class public abstract Lz2/o20;
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


# virtual methods
.method public final OooO00o(Ljava/lang/Object;Lz2/n20;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/o20;->OooO0Oo(Ljava/lang/Object;Lz2/n20;)Z

    return-void
.end method

.method public final OooO0O0(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lz2/n20;->OooO00o:Lz2/n20;

    invoke-virtual {p0, p1, v0}, Lz2/o20;->OooO0Oo(Ljava/lang/Object;Lz2/n20;)Z

    move-result p1

    return p1
.end method

.method public abstract OooO0Oo(Ljava/lang/Object;Lz2/n20;)Z
.end method
