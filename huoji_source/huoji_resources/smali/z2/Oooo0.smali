.class public Lz2/Oooo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0ooOOo;


# static fields
.field public static final OooO0o:I = 0x1

.field public static final OooO0o0:I = 0x9c4

.field public static final OooO0oO:F = 1.0f


# instance fields
.field private OooO00o:I

.field private OooO0O0:I

.field private final OooO0OO:I

.field private final OooO0Oo:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lz2/Oooo0;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz2/Oooo0;->OooO00o:I

    iput p2, p0, Lz2/Oooo0;->OooO0OO:I

    iput p3, p0, Lz2/Oooo0;->OooO0Oo:F

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/android/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    iget v0, p0, Lz2/Oooo0;->OooO0O0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz2/Oooo0;->OooO0O0:I

    iget v0, p0, Lz2/Oooo0;->OooO00o:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lz2/Oooo0;->OooO0Oo:F

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lz2/Oooo0;->OooO00o:I

    invoke-virtual {p0}, Lz2/Oooo0;->OooO0o0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    throw p1
.end method

.method public OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/Oooo0;->OooO00o:I

    return v0
.end method

.method public OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/Oooo0;->OooO0O0:I

    return v0
.end method

.method public OooO0Oo()F
    .locals 1

    iget v0, p0, Lz2/Oooo0;->OooO0Oo:F

    return v0
.end method

.method public OooO0o0()Z
    .locals 2

    iget v0, p0, Lz2/Oooo0;->OooO0O0:I

    iget v1, p0, Lz2/Oooo0;->OooO0OO:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
