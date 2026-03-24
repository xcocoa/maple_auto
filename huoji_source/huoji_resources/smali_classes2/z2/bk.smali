.class public Lz2/bk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final OooO0Oo:I = -0x1


# instance fields
.field private final OooO00o:Lcom/google/android/material/card/MaterialCardView;

.field private OooO0O0:I

.field private OooO0OO:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/card/MaterialCardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/bk;->OooO00o:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

.method private OooO00o()V
    .locals 5

    iget-object v0, p0, Lz2/bk;->OooO00o:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    iget v1, p0, Lz2/bk;->OooO0OO:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lz2/bk;->OooO00o:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v1

    iget v2, p0, Lz2/bk;->OooO0OO:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lz2/bk;->OooO00o:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v2

    iget v3, p0, Lz2/bk;->OooO0OO:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lz2/bk;->OooO00o:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v3}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v3

    iget v4, p0, Lz2/bk;->OooO0OO:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lz2/bk;->OooO00o:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    return-void
.end method

.method private OooO0O0()Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget-object v1, p0, Lz2/bk;->OooO00o:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget v1, p0, Lz2/bk;->OooO0O0:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, p0, Lz2/bk;->OooO0OO:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public OooO0OO()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget v0, p0, Lz2/bk;->OooO0O0:I

    return v0
.end method

.method public OooO0Oo()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    iget v0, p0, Lz2/bk;->OooO0OO:I

    return v0
.end method

.method public OooO0o(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lz2/bk;->OooO0O0:I

    invoke-virtual {p0}, Lz2/bk;->OooO0oo()V

    return-void
.end method

.method public OooO0o0(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeColor:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lz2/bk;->OooO0O0:I

    sget v0, Lcom/google/android/material/R$styleable;->MaterialCardView_strokeWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lz2/bk;->OooO0OO:I

    invoke-virtual {p0}, Lz2/bk;->OooO0oo()V

    invoke-direct {p0}, Lz2/bk;->OooO00o()V

    return-void
.end method

.method public OooO0oO(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    iput p1, p0, Lz2/bk;->OooO0OO:I

    invoke-virtual {p0}, Lz2/bk;->OooO0oo()V

    invoke-direct {p0}, Lz2/bk;->OooO00o()V

    return-void
.end method

.method public OooO0oo()V
    .locals 2

    iget-object v0, p0, Lz2/bk;->OooO00o:Lcom/google/android/material/card/MaterialCardView;

    invoke-direct {p0}, Lz2/bk;->OooO0O0()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
