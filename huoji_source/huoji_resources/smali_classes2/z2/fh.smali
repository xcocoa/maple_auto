.class public Lz2/fh;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO0OO:I = 0x2711

.field public static final OooO0Oo:I = 0x2712

.field public static final OooO0o:I = 0x2714

.field public static final OooO0o0:I = 0x2713


# instance fields
.field private OooO00o:I

.field private OooO0O0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/fh;->OooO00o:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/fh;->OooO00o:I

    iput-object p2, p0, Lz2/fh;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/fh;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/fh;->OooO00o:I

    return v0
.end method

.method public OooO0OO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/fh;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public OooO0Oo(I)V
    .locals 0

    iput p1, p0, Lz2/fh;->OooO00o:I

    return-void
.end method
