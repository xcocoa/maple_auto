.class public Lz2/kl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lz2/rk;
    value = "The shapes API is currently experimental and subject to change"
.end annotation


# instance fields
.field private OooO00o:Landroid/view/View;

.field private OooO0O0:Lz2/ll;

.field private OooO0OO:Landroid/widget/ScrollView;

.field private final OooO0Oo:[I

.field private final OooO0o:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final OooO0o0:[I


# direct methods
.method public constructor <init>(Landroid/view/View;Lz2/ll;Landroid/widget/ScrollView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lz2/kl;->OooO0Oo:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lz2/kl;->OooO0o0:[I

    new-instance v0, Lz2/kl$OooO00o;

    invoke-direct {v0, p0}, Lz2/kl$OooO00o;-><init>(Lz2/kl;)V

    iput-object v0, p0, Lz2/kl;->OooO0o:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object p1, p0, Lz2/kl;->OooO00o:Landroid/view/View;

    iput-object p2, p0, Lz2/kl;->OooO0O0:Lz2/ll;

    iput-object p3, p0, Lz2/kl;->OooO0OO:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/widget/ScrollView;)V
    .locals 0

    iput-object p1, p0, Lz2/kl;->OooO0OO:Landroid/widget/ScrollView;

    return-void
.end method

.method public OooO0O0(Lz2/ll;)V
    .locals 0

    iput-object p1, p0, Lz2/kl;->OooO0O0:Lz2/ll;

    return-void
.end method

.method public OooO0OO(Landroid/view/ViewTreeObserver;)V
    .locals 1

    iget-object v0, p0, Lz2/kl;->OooO0o:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public OooO0Oo(Landroid/view/ViewTreeObserver;)V
    .locals 1

    iget-object v0, p0, Lz2/kl;->OooO0o:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public OooO0o0()V
    .locals 5

    iget-object v0, p0, Lz2/kl;->OooO0OO:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lz2/kl;->OooO0OO:Landroid/widget/ScrollView;

    iget-object v1, p0, Lz2/kl;->OooO0Oo:[I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    iget-object v0, p0, Lz2/kl;->OooO0OO:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lz2/kl;->OooO0o0:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lz2/kl;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lz2/kl;->OooO0Oo:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lz2/kl;->OooO0o0:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lz2/kl;->OooO00o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lz2/kl;->OooO0OO:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v0, :cond_1

    iget-object v2, p0, Lz2/kl;->OooO0O0:Lz2/ll;

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    :goto_0
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Lz2/ll;->OooOo0o(F)V

    :goto_1
    iget-object v0, p0, Lz2/kl;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_1
    add-int/2addr v0, v1

    if-le v0, v2, :cond_2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lz2/kl;->OooO0O0:Lz2/ll;

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lz2/kl;->OooO0O0:Lz2/ll;

    invoke-virtual {v0}, Lz2/ll;->OooO0oo()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/kl;->OooO0O0:Lz2/ll;

    invoke-virtual {v0, v4}, Lz2/ll;->OooOo0o(F)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll bar must contain a child to calculate interpolation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
