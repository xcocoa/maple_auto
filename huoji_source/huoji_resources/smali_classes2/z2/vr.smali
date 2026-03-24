.class public final Lz2/vr;
.super Lz2/xr;
.source ""


# instance fields
.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:I

.field private final OooO0Oo:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/xr;-><init>(I)V

    iput-object p2, p0, Lz2/vr;->OooO0O0:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz2/vr;->OooO0Oo:Z

    iput p1, p0, Lz2/vr;->OooO0OO:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/xr;-><init>(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/vr;->OooO0Oo:Z

    iput p3, p0, Lz2/vr;->OooO0OO:I

    iput-object p2, p0, Lz2/vr;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final OooO0O0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/vr;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/vr;->OooO0OO:I

    return v0
.end method

.method public final OooO0Oo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/vr;->OooO0Oo:Z

    return v0
.end method
