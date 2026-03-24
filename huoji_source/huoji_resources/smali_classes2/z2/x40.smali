.class public Lz2/x40;
.super Lz2/s40;
.source ""

# interfaces
.implements Lorg/jdeferred/Promise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/s40<",
        "Lz2/z40;",
        "Lz2/b50;",
        "Lz2/y40;",
        ">;",
        "Lorg/jdeferred/Promise<",
        "Lz2/z40;",
        "Lz2/b50;",
        "Lz2/y40;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO:I

.field private final OooOO0:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final OooOO0O:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final OooOO0o:Lz2/z40;


# direct methods
.method public varargs constructor <init>([Lorg/jdeferred/Promise;)V
    .locals 7

    invoke-direct {p0}, Lz2/s40;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lz2/x40;->OooOO0:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lz2/x40;->OooOO0O:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p1

    iput v0, p0, Lz2/x40;->OooO:I

    new-instance v1, Lz2/z40;

    invoke-direct {v1, v0}, Lz2/z40;-><init>(I)V

    iput-object v1, p0, Lz2/x40;->OooOO0o:Lz2/z40;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    add-int/lit8 v4, v2, 0x1

    new-instance v5, Lz2/x40$OooO0OO;

    invoke-direct {v5, p0, v2, v3}, Lz2/x40$OooO0OO;-><init>(Lz2/x40;ILorg/jdeferred/Promise;)V

    invoke-interface {v3, v5}, Lorg/jdeferred/Promise;->OooOO0(Lz2/b40;)Lorg/jdeferred/Promise;

    move-result-object v5

    new-instance v6, Lz2/x40$OooO0O0;

    invoke-direct {v6, p0, v2, v3}, Lz2/x40$OooO0O0;-><init>(Lz2/x40;ILorg/jdeferred/Promise;)V

    invoke-interface {v5, v6}, Lorg/jdeferred/Promise;->OooO00o(Lz2/e40;)Lorg/jdeferred/Promise;

    move-result-object v5

    new-instance v6, Lz2/x40$OooO00o;

    invoke-direct {v6, p0, v2, v3}, Lz2/x40$OooO00o;-><init>(Lz2/x40;ILorg/jdeferred/Promise;)V

    invoke-interface {v5, v6}, Lorg/jdeferred/Promise;->OooOOO(Lz2/y30;)Lorg/jdeferred/Promise;

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Promises is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic Oooo0(Lz2/x40;)I
    .locals 0

    iget p0, p0, Lz2/x40;->OooO:I

    return p0
.end method

.method public static synthetic Oooo000(Lz2/x40;)Lz2/z40;
    .locals 0

    iget-object p0, p0, Lz2/x40;->OooOO0o:Lz2/z40;

    return-object p0
.end method

.method public static synthetic Oooo00O(Lz2/x40;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lz2/x40;->OooOO0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic Oooo00o(Lz2/x40;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lz2/x40;->OooOO0O:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method
