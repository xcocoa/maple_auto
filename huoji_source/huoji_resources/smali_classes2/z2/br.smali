.class public final Lz2/br;
.super Lz2/zq;
.source ""


# instance fields
.field private final OooO0OO:Lz2/ar;

.field private OooO0Oo:I


# direct methods
.method public constructor <init>(IILz2/ar;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/zq;-><init>(II)V

    iput-object p3, p0, Lz2/br;->OooO0OO:Lz2/ar;

    return-void
.end method


# virtual methods
.method public final OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/br;->OooO0Oo:I

    return v0
.end method

.method public final OooO0Oo()Lz2/ar;
    .locals 1

    iget-object v0, p0, Lz2/br;->OooO0OO:Lz2/ar;

    return-object v0
.end method

.method public final OooO0o0()V
    .locals 1

    iget v0, p0, Lz2/br;->OooO0Oo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/br;->OooO0Oo:I

    return-void
.end method
