.class public Lz2/pl;
.super Lz2/jl;
.source ""


# annotations
.annotation build Lz2/rk;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final OooO00o:F

.field private final OooO0O0:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    invoke-direct {p0}, Lz2/jl;-><init>()V

    iput p1, p0, Lz2/pl;->OooO00o:F

    iput-boolean p2, p0, Lz2/pl;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public OooO00o(FFLz2/nl;)V
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    iget v1, p0, Lz2/pl;->OooO00o:F

    mul-float v1, v1, p2

    sub-float v1, v0, v1

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lz2/nl;->OooO0OO(FF)V

    iget-boolean v1, p0, Lz2/pl;->OooO0O0:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lz2/pl;->OooO00o:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lz2/pl;->OooO00o:F

    neg-float v1, v1

    :goto_0
    mul-float v1, v1, p2

    invoke-virtual {p3, v0, v1}, Lz2/nl;->OooO0OO(FF)V

    iget v1, p0, Lz2/pl;->OooO00o:F

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p3, v0, v2}, Lz2/nl;->OooO0OO(FF)V

    invoke-virtual {p3, p1, v2}, Lz2/nl;->OooO0OO(FF)V

    return-void
.end method
