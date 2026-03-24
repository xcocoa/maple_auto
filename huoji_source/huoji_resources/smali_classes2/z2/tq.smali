.class public final Lz2/tq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OooO0OO:[I


# instance fields
.field private final OooO00o:Lz2/rq;

.field private final OooO0O0:Lz2/sq;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lz2/tq;->OooO0OO:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/rq;

    invoke-direct {v0}, Lz2/rq;-><init>()V

    iput-object v0, p0, Lz2/tq;->OooO00o:Lz2/rq;

    new-instance v0, Lz2/sq;

    invoke-direct {v0}, Lz2/sq;-><init>()V

    iput-object v0, p0, Lz2/tq;->OooO0O0:Lz2/sq;

    return-void
.end method


# virtual methods
.method public final OooO00o(ILz2/do;I)Lz2/em;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    sget-object v0, Lz2/tq;->OooO0OO:[I

    const/4 v1, 0x0

    invoke-static {p2, p3, v1, v0}, Lz2/uq;->OooOOO(Lz2/do;IZ[I)[I

    move-result-object p3

    :try_start_0
    iget-object v0, p0, Lz2/tq;->OooO0O0:Lz2/sq;

    invoke-virtual {v0, p1, p2, p3}, Lz2/sq;->OooO0O0(ILz2/do;[I)Lz2/em;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object v0, p0, Lz2/tq;->OooO00o:Lz2/rq;

    invoke-virtual {v0, p1, p2, p3}, Lz2/rq;->OooO0O0(ILz2/do;[I)Lz2/em;

    move-result-object p1

    return-object p1
.end method
