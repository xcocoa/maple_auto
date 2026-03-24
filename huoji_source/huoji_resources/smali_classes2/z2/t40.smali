.class public Lz2/t40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/jdeferred/Promise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdeferred/Promise<",
        "TD;TF;TP;>;"
    }
.end annotation


# instance fields
.field private final OooO00o:Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation
.end field

.field public final OooO0O0:Lz2/u30;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/u30<",
            "TD;TF;TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/u30;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/u30<",
            "TD;TF;TP;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/t40;->OooO0O0:Lz2/u30;

    invoke-interface {p1}, Lz2/u30;->OooOO0o()Lorg/jdeferred/Promise;

    move-result-object p1

    iput-object p1, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    return-void
.end method


# virtual methods
.method public OooO(Lz2/z30;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/z30<",
            "TD;TD_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->OooO(Lz2/z30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(Lz2/e40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/e40<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->OooO00o(Lz2/e40;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2}, Lorg/jdeferred/Promise;->OooO0O0(J)V

    return-void
.end method

.method public OooO0OO(Lz2/a40;Lz2/d40;Lz2/g40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/a40<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lz2/d40<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lz2/g40<",
            "TP;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdeferred/Promise;->OooO0OO(Lz2/a40;Lz2/d40;Lz2/g40;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooO0Oo(Lz2/a40;Lz2/d40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/a40<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lz2/d40<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2}, Lorg/jdeferred/Promise;->OooO0Oo(Lz2/a40;Lz2/d40;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o()Lorg/jdeferred/Promise$State;
    .locals 1

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->OooO0o()Lorg/jdeferred/Promise$State;

    move-result-object v0

    return-object v0
.end method

.method public OooO0o0(Lz2/a40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/a40<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->OooO0o0(Lz2/a40;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO(Lz2/t30;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/t30<",
            "TD;TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->OooO0oO(Lz2/t30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oo(Lz2/y30;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->OooO0oo(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/b40<",
            "TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOOO0()Z
    .locals 1

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->OooOOO0()Z

    move-result v0

    return v0
.end method

.method public OooOOOO()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->OooOOOO()V

    return-void
.end method

.method public OooOOOo(Lz2/y30;Lz2/b40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;",
            "Lz2/b40<",
            "TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2}, Lorg/jdeferred/Promise;->OooOOOo(Lz2/y30;Lz2/b40;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOOo(Lz2/z30;Lz2/c40;Lz2/f40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/z30<",
            "TD;TD_OUT;>;",
            "Lz2/c40<",
            "TF;TF_OUT;>;",
            "Lz2/f40<",
            "TP;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdeferred/Promise;->OooOOo(Lz2/z30;Lz2/c40;Lz2/f40;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOOo0()Z
    .locals 1

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->OooOOo0()Z

    move-result v0

    return v0
.end method

.method public OooOOoo(Lz2/y30;Lz2/b40;Lz2/e40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/y30<",
            "TD;>;",
            "Lz2/b40<",
            "TF;>;",
            "Lz2/e40<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdeferred/Promise;->OooOOoo(Lz2/y30;Lz2/b40;Lz2/e40;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOo0(Lz2/z30;Lz2/c40;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lz2/z30<",
            "TD;TD_OUT;>;",
            "Lz2/c40<",
            "TF;TF_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0, p1, p2}, Lorg/jdeferred/Promise;->OooOo0(Lz2/z30;Lz2/c40;)Lorg/jdeferred/Promise;

    move-result-object p1

    return-object p1
.end method

.method public OooOo00()Z
    .locals 1

    iget-object v0, p0, Lz2/t40;->OooO00o:Lorg/jdeferred/Promise;

    invoke-interface {v0}, Lorg/jdeferred/Promise;->OooOo00()Z

    move-result v0

    return v0
.end method
