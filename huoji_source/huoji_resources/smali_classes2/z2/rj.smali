.class public Lz2/rj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Landroid/view/View;

.field private OooO0O0:I

.field private OooO0OO:I

.field private OooO0Oo:I

.field private OooO0o0:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/rj;->OooO00o:Landroid/view/View;

    return-void
.end method

.method private OooO0oo()V
    .locals 4

    iget-object v0, p0, Lz2/rj;->OooO00o:Landroid/view/View;

    iget v1, p0, Lz2/rj;->OooO0Oo:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lz2/rj;->OooO0O0:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    iget-object v0, p0, Lz2/rj;->OooO00o:Landroid/view/View;

    iget v1, p0, Lz2/rj;->OooO0o0:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lz2/rj;->OooO0OO:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget v0, p0, Lz2/rj;->OooO0OO:I

    return v0
.end method

.method public OooO0O0()I
    .locals 1

    iget v0, p0, Lz2/rj;->OooO0O0:I

    return v0
.end method

.method public OooO0OO()I
    .locals 1

    iget v0, p0, Lz2/rj;->OooO0o0:I

    return v0
.end method

.method public OooO0Oo()I
    .locals 1

    iget v0, p0, Lz2/rj;->OooO0Oo:I

    return v0
.end method

.method public OooO0o(I)Z
    .locals 1

    iget v0, p0, Lz2/rj;->OooO0o0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lz2/rj;->OooO0o0:I

    invoke-direct {p0}, Lz2/rj;->OooO0oo()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public OooO0o0()V
    .locals 1

    iget-object v0, p0, Lz2/rj;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lz2/rj;->OooO0O0:I

    iget-object v0, p0, Lz2/rj;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lz2/rj;->OooO0OO:I

    invoke-direct {p0}, Lz2/rj;->OooO0oo()V

    return-void
.end method

.method public OooO0oO(I)Z
    .locals 1

    iget v0, p0, Lz2/rj;->OooO0Oo:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lz2/rj;->OooO0Oo:I

    invoke-direct {p0}, Lz2/rj;->OooO0oo()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
