.class public Lz2/zv;
.super Lz2/bw;
.source ""

# interfaces
.implements Lz2/gw;


# instance fields
.field public OooO00o:Lz2/gw;


# direct methods
.method public constructor <init>(Lz2/gw;)V
    .locals 0

    invoke-direct {p0}, Lz2/bw;-><init>()V

    iput-object p1, p0, Lz2/zv;->OooO00o:Lz2/gw;

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget-object v0, p0, Lz2/zv;->OooO00o:Lz2/gw;

    invoke-interface {v0}, Lz2/gw;->OooO00o()I

    move-result v0

    return v0
.end method

.method public OooO0O0(Lz2/kw;)V
    .locals 0

    invoke-virtual {p0, p1}, Lz2/zv;->Oooo0oo(Lz2/kw;)V

    return-void
.end method

.method public Oooo()Lz2/gw;
    .locals 1

    iget-object v0, p0, Lz2/zv;->OooO00o:Lz2/gw;

    return-object v0
.end method

.method public Oooo0oo(Lz2/kw;)V
    .locals 1

    iget-object v0, p0, Lz2/zv;->OooO00o:Lz2/gw;

    invoke-interface {v0, p1}, Lz2/gw;->OooO0O0(Lz2/kw;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zv;->OooO00o:Lz2/gw;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
