.class public Lz2/w40;
.super Lz2/s40;
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
        "D_OUT:",
        "Ljava/lang/Object;",
        "F_OUT:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lz2/s40<",
        "TD_OUT;TF_OUT;TP_OUT;>;",
        "Lorg/jdeferred/Promise<",
        "TD_OUT;TF_OUT;TP_OUT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/jdeferred/Promise;Lz2/a40;Lz2/d40;Lz2/g40;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;",
            "Lz2/a40<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lz2/d40<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lz2/g40<",
            "TP;TD_OUT;TF_OUT;TP_OUT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/s40;-><init>()V

    new-instance v0, Lz2/w40$OooO0OO;

    invoke-direct {v0, p0, p2}, Lz2/w40$OooO0OO;-><init>(Lz2/w40;Lz2/a40;)V

    invoke-interface {p1, v0}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lz2/w40$OooO0O0;

    invoke-direct {p2, p0, p3}, Lz2/w40$OooO0O0;-><init>(Lz2/w40;Lz2/d40;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lz2/w40$OooO00o;

    invoke-direct {p2, p0, p4}, Lz2/w40$OooO00o;-><init>(Lz2/w40;Lz2/g40;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->OooO00o(Lz2/e40;)Lorg/jdeferred/Promise;

    return-void
.end method


# virtual methods
.method public Oooo000(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    new-instance v0, Lz2/w40$OooOO0;

    invoke-direct {v0, p0}, Lz2/w40$OooOO0;-><init>(Lz2/w40;)V

    invoke-interface {p1, v0}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/w40$OooO;

    invoke-direct {v1, p0}, Lz2/w40$OooO;-><init>(Lz2/w40;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lz2/w40$OooO0o;

    invoke-direct {v1, p0}, Lz2/w40$OooO0o;-><init>(Lz2/w40;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->OooO00o(Lz2/e40;)Lorg/jdeferred/Promise;

    return-object p1
.end method
