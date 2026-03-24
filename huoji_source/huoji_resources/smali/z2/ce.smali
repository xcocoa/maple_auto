.class public Lz2/ce;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ce$OooO0OO;
    }
.end annotation


# static fields
.field private static OooO0o:Lz2/ce; = null

.field private static OooO0o0:Ljava/lang/String; = "ce"


# instance fields
.field private final OooO00o:Lz2/ox;

.field private OooO0O0:Lz2/tw;

.field private OooO0OO:Ljava/io/RandomAccessFile;

.field private OooO0Oo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/ox$OooO0O0;

    invoke-direct {v0}, Lz2/ox$OooO0O0;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->OooO(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->OooOoo(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lz2/ox$OooO0O0;->Oooo0O0(JLjava/util/concurrent/TimeUnit;)Lz2/ox$OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, Lz2/ox$OooO0O0;->OooO0Oo()Lz2/ox;

    move-result-object v0

    iput-object v0, p0, Lz2/ce;->OooO00o:Lz2/ox;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/ce;)I
    .locals 0

    iget p0, p0, Lz2/ce;->OooO0Oo:I

    return p0
.end method

.method public static synthetic OooO0O0(Lz2/ce;I)I
    .locals 0

    iput p1, p0, Lz2/ce;->OooO0Oo:I

    return p1
.end method

.method public static synthetic OooO0OO(Lz2/ce;I)I
    .locals 1

    iget v0, p0, Lz2/ce;->OooO0Oo:I

    add-int/2addr v0, p1

    iput v0, p0, Lz2/ce;->OooO0Oo:I

    return v0
.end method

.method public static synthetic OooO0Oo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lz2/ce;->OooO0o0:Ljava/lang/String;

    return-object v0
.end method

.method public static OooO0oo()Lz2/ce;
    .locals 1

    sget-object v0, Lz2/ce;->OooO0o:Lz2/ce;

    if-nez v0, :cond_0

    new-instance v0, Lz2/ce;

    invoke-direct {v0}, Lz2/ce;-><init>()V

    sput-object v0, Lz2/ce;->OooO0o:Lz2/ce;

    :cond_0
    sget-object v0, Lz2/ce;->OooO0o:Lz2/ce;

    return-object v0
.end method


# virtual methods
.method public OooO0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILz2/ce$OooO0OO;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download --> downLoadLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lz2/ce;->OooO0Oo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance p4, Lz2/qx$OooO00o;

    invoke-direct {p4}, Lz2/qx$OooO00o;-><init>()V

    invoke-virtual {p4, p1}, Lz2/qx$OooO00o;->OooOOo0(Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object p1

    iget-object p4, p0, Lz2/ce;->OooO00o:Lz2/ox;

    invoke-virtual {p4, p1}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object p1

    iput-object p1, p0, Lz2/ce;->OooO0O0:Lz2/tw;

    new-instance p4, Lz2/ce$OooO0O0;

    invoke-direct {p4, p0, p5, p2, p3}, Lz2/ce$OooO0O0;-><init>(Lz2/ce;Lz2/ce$OooO0OO;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p4}, Lz2/tw;->OooOO0(Lz2/uw;)V

    return-void
.end method

.method public OooO0o0()V
    .locals 1

    iget-object v0, p0, Lz2/ce;->OooO0O0:Lz2/tw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/tw;->cancel()V

    :cond_0
    return-void
.end method

.method public OooO0oO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lz2/ce$OooO0OO;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download 1 --> destFileDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",destFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lz2/qx$OooO00o;

    invoke-direct {v0}, Lz2/qx$OooO00o;-><init>()V

    invoke-virtual {v0, p1}, Lz2/qx$OooO00o;->OooOOo0(Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object p1

    invoke-virtual {p1}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object p1

    iget-object v0, p0, Lz2/ce;->OooO00o:Lz2/ox;

    invoke-virtual {v0, p1}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object p1

    iput-object p1, p0, Lz2/ce;->OooO0O0:Lz2/tw;

    new-instance v0, Lz2/ce$OooO00o;

    invoke-direct {v0, p0, p4, p2, p3}, Lz2/ce$OooO00o;-><init>(Lz2/ce;Lz2/ce$OooO0OO;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lz2/tw;->OooOO0(Lz2/uw;)V

    return-void
.end method
