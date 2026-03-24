.class public Lz2/ml;
.super Lz2/hl;
.source ""


# annotations
.annotation build Lz2/rk;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private final OooO00o:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lz2/hl;-><init>()V

    iput p1, p0, Lz2/ml;->OooO00o:F

    return-void
.end method


# virtual methods
.method public OooO00o(FFLz2/nl;)V
    .locals 10

    iget v0, p0, Lz2/ml;->OooO00o:F

    mul-float v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Lz2/nl;->OooO0o0(FF)V

    iget v0, p0, Lz2/ml;->OooO00o:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    mul-float v6, v2, p2

    mul-float v0, v0, v1

    mul-float v7, v0, p2

    const/high16 p2, 0x43340000    # 180.0f

    add-float v8, p1, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v9, 0x42b40000    # 90.0f

    move-object v3, p3

    invoke-virtual/range {v3 .. v9}, Lz2/nl;->OooO00o(FFFFFF)V

    return-void
.end method
