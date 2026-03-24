.class public final Lz2/ur;
.super Lz2/xr;
.source ""


# static fields
.field public static final OooO0OO:C = '$'


# instance fields
.field private final OooO0O0:C


# direct methods
.method public constructor <init>(IC)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/xr;-><init>(I)V

    iput-char p2, p0, Lz2/ur;->OooO0O0:C

    return-void
.end method


# virtual methods
.method public final OooO0O0()C
    .locals 1

    iget-char v0, p0, Lz2/ur;->OooO0O0:C

    return v0
.end method

.method public final OooO0OO()Z
    .locals 2

    iget-char v0, p0, Lz2/ur;->OooO0O0:C

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
