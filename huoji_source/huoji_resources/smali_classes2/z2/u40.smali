.class public Lz2/u40;
.super Lz2/s40;
.source ""

# interfaces
.implements Lorg/jdeferred/Promise;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/u40$OooOO0;,
        Lz2/u40$OooO;,
        Lz2/u40$OooO0o;
    }
.end annotation

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


# static fields
.field public static final OooOO0o:Lz2/u40$OooO0o;

.field public static final OooOOO:Lz2/u40$OooOO0;

.field public static final OooOOO0:Lz2/u40$OooO;


# instance fields
.field private final OooO:Lz2/z30;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/z30<",
            "TD;TD_OUT;>;"
        }
    .end annotation
.end field

.field private final OooOO0:Lz2/c40;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/c40<",
            "TF;TF_OUT;>;"
        }
    .end annotation
.end field

.field private final OooOO0O:Lz2/f40;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/f40<",
            "TP;TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz2/u40$OooO0o;

    invoke-direct {v0}, Lz2/u40$OooO0o;-><init>()V

    sput-object v0, Lz2/u40;->OooOO0o:Lz2/u40$OooO0o;

    new-instance v0, Lz2/u40$OooO;

    invoke-direct {v0}, Lz2/u40$OooO;-><init>()V

    sput-object v0, Lz2/u40;->OooOOO0:Lz2/u40$OooO;

    new-instance v0, Lz2/u40$OooOO0;

    invoke-direct {v0}, Lz2/u40$OooOO0;-><init>()V

    sput-object v0, Lz2/u40;->OooOOO:Lz2/u40$OooOO0;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/Promise;Lz2/z30;Lz2/c40;Lz2/f40;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;",
            "Lz2/z30<",
            "TD;TD_OUT;>;",
            "Lz2/c40<",
            "TF;TF_OUT;>;",
            "Lz2/f40<",
            "TP;TP_OUT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz2/s40;-><init>()V

    if-nez p2, :cond_0

    sget-object p2, Lz2/u40;->OooOO0o:Lz2/u40$OooO0o;

    :cond_0
    iput-object p2, p0, Lz2/u40;->OooO:Lz2/z30;

    if-nez p3, :cond_1

    sget-object p3, Lz2/u40;->OooOOO0:Lz2/u40$OooO;

    :cond_1
    iput-object p3, p0, Lz2/u40;->OooOO0:Lz2/c40;

    if-nez p4, :cond_2

    sget-object p4, Lz2/u40;->OooOOO:Lz2/u40$OooOO0;

    :cond_2
    iput-object p4, p0, Lz2/u40;->OooOO0O:Lz2/f40;

    new-instance p2, Lz2/u40$OooO0OO;

    invoke-direct {p2, p0}, Lz2/u40$OooO0OO;-><init>(Lz2/u40;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lz2/u40$OooO0O0;

    invoke-direct {p2, p0}, Lz2/u40$OooO0O0;-><init>(Lz2/u40;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    move-result-object p1

    new-instance p2, Lz2/u40$OooO00o;

    invoke-direct {p2, p0}, Lz2/u40$OooO00o;-><init>(Lz2/u40;)V

    invoke-interface {p1, p2}, Lorg/jdeferred/Promise;->OooO00o(Lz2/e40;)Lorg/jdeferred/Promise;

    return-void
.end method

.method public static synthetic Oooo000(Lz2/u40;)Lz2/f40;
    .locals 0

    iget-object p0, p0, Lz2/u40;->OooOO0O:Lz2/f40;

    return-object p0
.end method

.method public static synthetic Oooo00O(Lz2/u40;)Lz2/c40;
    .locals 0

    iget-object p0, p0, Lz2/u40;->OooOO0:Lz2/c40;

    return-object p0
.end method

.method public static synthetic Oooo00o(Lz2/u40;)Lz2/z30;
    .locals 0

    iget-object p0, p0, Lz2/u40;->OooO:Lz2/z30;

    return-object p0
.end method
