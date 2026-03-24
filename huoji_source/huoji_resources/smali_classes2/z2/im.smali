.class public final Lz2/im;
.super Lz2/io;
.source ""


# instance fields
.field private final OooO0OO:Z

.field private final OooO0Oo:I

.field private final OooO0o0:I


# direct methods
.method public constructor <init>(Lz2/eo;[Lz2/fm;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/io;-><init>(Lz2/eo;[Lz2/fm;)V

    iput-boolean p3, p0, Lz2/im;->OooO0OO:Z

    iput p4, p0, Lz2/im;->OooO0Oo:I

    iput p5, p0, Lz2/im;->OooO0o0:I

    return-void
.end method


# virtual methods
.method public final OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/im;->OooO0Oo:I

    return v0
.end method

.method public final OooO0Oo()I
    .locals 1

    iget v0, p0, Lz2/im;->OooO0o0:I

    return v0
.end method

.method public final OooO0o0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/im;->OooO0OO:Z

    return v0
.end method
