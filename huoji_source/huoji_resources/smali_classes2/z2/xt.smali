.class public Lz2/xt;
.super Ljava/util/Timer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/xt$OooO0O0;
    }
.end annotation


# static fields
.field public static final OooO0o0:Ljava/lang/String;


# instance fields
.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:I

.field private OooO0OO:Lz2/xt$OooO0O0;

.field private OooO0Oo:Lcom/hlzn/socketclient/service/SocketService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lz2/xt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/xt;->OooO0o0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hlzn/socketclient/service/SocketService;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lz2/xt;->OooO0Oo:Lcom/hlzn/socketclient/service/SocketService;

    iput-object p2, p0, Lz2/xt;->OooO00o:Ljava/lang/String;

    new-instance v1, Lz2/xt$OooO0O0;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lz2/xt$OooO0O0;-><init>(Lz2/xt;Lz2/xt$OooO00o;)V

    iput-object v1, p0, Lz2/xt;->OooO0OO:Lz2/xt$OooO0O0;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x1388

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/xt;)Lcom/hlzn/socketclient/service/SocketService;
    .locals 0

    iget-object p0, p0, Lz2/xt;->OooO0Oo:Lcom/hlzn/socketclient/service/SocketService;

    return-object p0
.end method

.method public static synthetic OooO0O0(Lz2/xt;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/xt;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/xt;)I
    .locals 0

    iget p0, p0, Lz2/xt;->OooO0O0:I

    return p0
.end method

.method public static synthetic OooO0Oo(Lz2/xt;I)I
    .locals 0

    iput p1, p0, Lz2/xt;->OooO0O0:I

    return p1
.end method

.method public static synthetic OooO0o0(Lz2/xt;)I
    .locals 2

    iget v0, p0, Lz2/xt;->OooO0O0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lz2/xt;->OooO0O0:I

    return v0
.end method
