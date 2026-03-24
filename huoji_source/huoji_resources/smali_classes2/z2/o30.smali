.class public abstract Lz2/o30;
.super Lz2/w20;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/w20<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final Ooooo00:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lz2/w20;-><init>()V

    iput-object p1, p0, Lz2/o30;->Ooooo00:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract OooO()Ljava/lang/String;
.end method

.method public bridge synthetic OooO0Oo(Ljava/lang/Object;Lz2/n20;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lz2/o30;->OooO0o(Ljava/lang/String;Lz2/n20;)V

    return-void
.end method

.method public OooO0o(Ljava/lang/String;Lz2/n20;)V
    .locals 1

    const-string v0, "was \""

    invoke-interface {p2, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p2

    invoke-interface {p2, p1}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    const-string p2, "\""

    invoke-interface {p1, p2}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    return-void
.end method

.method public bridge synthetic OooO0o0(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lz2/o30;->OooO0oo(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract OooO0oO(Ljava/lang/String;)Z
.end method

.method public OooO0oo(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lz2/o30;->OooO0oO(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public describeTo(Lz2/n20;)V
    .locals 1

    const-string v0, "a string "

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    invoke-virtual {p0}, Lz2/o30;->OooO()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    const-string v0, " "

    invoke-interface {p1, v0}, Lz2/n20;->OooO0Oo(Ljava/lang/String;)Lz2/n20;

    move-result-object p1

    iget-object v0, p0, Lz2/o30;->Ooooo00:Ljava/lang/String;

    invoke-interface {p1, v0}, Lz2/n20;->OooO0o0(Ljava/lang/Object;)Lz2/n20;

    return-void
.end method
