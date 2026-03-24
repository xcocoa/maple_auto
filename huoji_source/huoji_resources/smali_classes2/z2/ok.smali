.class public final Lz2/ok;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final OoooO:Z

.field private static final OoooOO0:Z

.field private static final o000oOoO:Landroid/graphics/Paint;


# instance fields
.field private OooO:F

.field private final OooO00o:Landroid/view/View;

.field private OooO0O0:Z

.field private OooO0OO:F

.field private final OooO0Oo:Landroid/graphics/Rect;

.field private final OooO0o:Landroid/graphics/RectF;

.field private final OooO0o0:Landroid/graphics/Rect;

.field private OooO0oO:I

.field private OooO0oo:I

.field private OooOO0:F

.field private OooOO0O:Landroid/content/res/ColorStateList;

.field private OooOO0o:Landroid/content/res/ColorStateList;

.field private OooOOO:F

.field private OooOOO0:F

.field private OooOOOO:F

.field private OooOOOo:F

.field private OooOOo:F

.field private OooOOo0:F

.field private OooOOoo:Landroid/graphics/Typeface;

.field private OooOo:Z

.field private OooOo0:Landroid/graphics/Typeface;

.field private OooOo00:Landroid/graphics/Typeface;

.field private OooOo0O:Ljava/lang/CharSequence;

.field private OooOo0o:Ljava/lang/CharSequence;

.field private OooOoO:Landroid/graphics/Bitmap;

.field private OooOoO0:Z

.field private OooOoOO:Landroid/graphics/Paint;

.field private OooOoo:F

.field private OooOoo0:F

.field private OooOooO:F

.field private OooOooo:F

.field private Oooo:F

.field private final Oooo0:Landroid/text/TextPaint;

.field private Oooo000:[I

.field private Oooo00O:Z

.field private final Oooo00o:Landroid/text/TextPaint;

.field private Oooo0O0:Landroid/animation/TimeInterpolator;

.field private Oooo0OO:Landroid/animation/TimeInterpolator;

.field private Oooo0o:F

.field private Oooo0o0:F

.field private Oooo0oO:F

.field private Oooo0oo:I

.field private OoooO0:F

.field private OoooO00:F

.field private OoooO0O:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lz2/ok;->OoooO:Z

    const/4 v0, 0x0

    sput-object v0, Lz2/ok;->o000oOoO:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lz2/ok;->OooO0oO:I

    iput v0, p0, Lz2/ok;->OooO0oo:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lz2/ok;->OooO:F

    iput v0, p0, Lz2/ok;->OooOO0:F

    iput-object p1, p0, Lz2/ok;->OooO00o:Landroid/view/View;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lz2/ok;->Oooo0:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lz2/ok;->OooO0o:Landroid/graphics/RectF;

    return-void
.end method

.method private static OooO00o(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private OooO0O0()V
    .locals 11

    iget v0, p0, Lz2/ok;->OooOooo:F

    iget v1, p0, Lz2/ok;->OooOO0:F

    invoke-direct {p0, v1}, Lz2/ok;->OooO0oO(F)V

    iget-object v1, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lz2/ok;->OooO0oo:I

    iget-boolean v5, p0, Lz2/ok;->OooOo:Z

    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    iget-object v9, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    iget-object v9, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, Lz2/ok;->OooOOO:F

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    :goto_1
    iput v5, p0, Lz2/ok;->OooOOO:F

    :goto_2
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_4

    if-eq v4, v9, :cond_3

    iget-object v1, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lz2/ok;->OooOOOo:F

    goto :goto_4

    :cond_3
    iget-object v4, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    :goto_3
    sub-float/2addr v4, v1

    iput v4, p0, Lz2/ok;->OooOOOo:F

    :goto_4
    iget v1, p0, Lz2/ok;->OooO:F

    invoke-direct {p0, v1}, Lz2/ok;->OooO0oO(F)V

    iget-object v1, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-object v3, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    :cond_5
    iget v1, p0, Lz2/ok;->OooO0oO:I

    iget-boolean v2, p0, Lz2/ok;->OooOo:Z

    invoke-static {v1, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v7, :cond_7

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v4, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    iget-object v4, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iput v4, p0, Lz2/ok;->OooOOO0:F

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v4, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    :goto_5
    iput v2, p0, Lz2/ok;->OooOOO0:F

    :goto_6
    and-int/2addr v1, v5

    if-eq v1, v10, :cond_9

    if-eq v1, v9, :cond_8

    iget-object v1, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    goto :goto_7

    :cond_9
    iget-object v1, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v8

    :goto_7
    sub-float/2addr v1, v3

    :goto_8
    iput v1, p0, Lz2/ok;->OooOOOO:F

    invoke-direct {p0}, Lz2/ok;->OooO0oo()V

    invoke-direct {p0, v0}, Lz2/ok;->OoooOO0(F)V

    return-void
.end method

.method private OooO0Oo()V
    .locals 1

    iget v0, p0, Lz2/ok;->OooO0OO:F

    invoke-direct {p0, v0}, Lz2/ok;->OooO0o(F)V

    return-void
.end method

.method private OooO0o(F)V
    .locals 6

    invoke-direct {p0, p1}, Lz2/ok;->OooOoO(F)V

    iget v0, p0, Lz2/ok;->OooOOOO:F

    iget v1, p0, Lz2/ok;->OooOOOo:F

    iget-object v2, p0, Lz2/ok;->Oooo0O0:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lz2/ok;->OooOOo0:F

    iget v0, p0, Lz2/ok;->OooOOO0:F

    iget v1, p0, Lz2/ok;->OooOOO:F

    iget-object v2, p0, Lz2/ok;->Oooo0O0:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lz2/ok;->OooOOo:F

    iget v0, p0, Lz2/ok;->OooO:F

    iget v1, p0, Lz2/ok;->OooOO0:F

    iget-object v2, p0, Lz2/ok;->Oooo0OO:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lz2/ok;->OoooOO0(F)V

    iget-object v0, p0, Lz2/ok;->OooOO0o:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lz2/ok;->OooOO0O:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-direct {p0}, Lz2/ok;->OooOOo()I

    move-result v1

    invoke-virtual {p0}, Lz2/ok;->OooOOo0()I

    move-result v2

    invoke-static {v1, v2, p1}, Lz2/ok;->OooO00o(IIF)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lz2/ok;->OooOOo0()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    iget v1, p0, Lz2/ok;->Oooo:F

    iget v2, p0, Lz2/ok;->Oooo0o0:F

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lz2/ok;->OoooO00:F

    iget v4, p0, Lz2/ok;->Oooo0o:F

    invoke-static {v2, v4, p1, v3}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lz2/ok;->OoooO0:F

    iget v5, p0, Lz2/ok;->Oooo0oO:F

    invoke-static {v4, v5, p1, v3}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget v4, p0, Lz2/ok;->OoooO0O:I

    iget v5, p0, Lz2/ok;->Oooo0oo:I

    invoke-static {v4, v5, p1}, Lz2/ok;->OooO00o(IIF)I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object p1, p0, Lz2/ok;->OooO00o:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private OooO0o0(Ljava/lang/CharSequence;)Z
    .locals 3

    iget-object v0, p0, Lz2/ok;->OooO00o:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_1

    :cond_1
    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroidx/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result p1

    return p1
.end method

.method private OooO0oO(F)V
    .locals 8

    iget-object v0, p0, Lz2/ok;->OooOo0O:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lz2/ok;->OooOO0:F

    invoke-static {p1, v2}, Lz2/ok;->OooOoOO(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget p1, p0, Lz2/ok;->OooOO0:F

    iput v3, p0, Lz2/ok;->OooOooO:F

    iget-object v1, p0, Lz2/ok;->OooOo0:Landroid/graphics/Typeface;

    iget-object v2, p0, Lz2/ok;->OooOOoo:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    iput-object v2, p0, Lz2/ok;->OooOo0:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    iget v2, p0, Lz2/ok;->OooO:F

    iget-object v6, p0, Lz2/ok;->OooOo0:Landroid/graphics/Typeface;

    iget-object v7, p0, Lz2/ok;->OooOo00:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    iput-object v7, p0, Lz2/ok;->OooOo0:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    invoke-static {p1, v2}, Lz2/ok;->OooOoOO(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    iput v3, p0, Lz2/ok;->OooOooO:F

    goto :goto_1

    :cond_4
    iget v7, p0, Lz2/ok;->OooO:F

    div-float/2addr p1, v7

    iput p1, p0, Lz2/ok;->OooOooO:F

    :goto_1
    iget p1, p0, Lz2/ok;->OooOO0:F

    iget v7, p0, Lz2/ok;->OooO:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move v1, v6

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    iget v2, p0, Lz2/ok;->OooOooo:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lz2/ok;->Oooo00O:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v1, 0x1

    :goto_5
    iput p1, p0, Lz2/ok;->OooOooo:F

    iput-boolean v5, p0, Lz2/ok;->Oooo00O:Z

    :cond_8
    iget-object p1, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    if-eqz v1, :cond_b

    :cond_9
    iget-object p1, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    iget v1, p0, Lz2/ok;->OooOooo:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    iget-object v1, p0, Lz2/ok;->OooOo0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    iget v1, p0, Lz2/ok;->OooOooO:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object p1, p0, Lz2/ok;->OooOo0O:Ljava/lang/CharSequence;

    iget-object v1, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iput-object p1, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lz2/ok;->OooO0o0(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lz2/ok;->OooOo:Z

    :cond_b
    return-void
.end method

.method private OooO0oo()V
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOoO:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/ok;->OooOoO:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private OooOO0()V
    .locals 9

    iget-object v0, p0, Lz2/ok;->OooOoO:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/ok;->OooO0o(F)V

    iget-object v0, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Lz2/ok;->OooOoo0:F

    iget-object v0, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Lz2/ok;->OooOoo:F

    iget-object v0, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    iget-object v1, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lz2/ok;->OooOoo:F

    iget v2, p0, Lz2/ok;->OooOoo0:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_2

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lz2/ok;->OooOoO:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lz2/ok;->OooOoO:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    int-to-float v0, v1

    iget-object v1, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sub-float v7, v0, v1

    iget-object v8, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lz2/ok;->OooOoOO:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lz2/ok;->OooOoOO:Landroid/graphics/Paint;

    :cond_2
    :goto_0
    return-void
.end method

.method private OooOOo()I
    .locals 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lz2/ok;->Oooo000:[I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/ok;->OooOO0O:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lz2/ok;->OooOO0O:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private OooOoO(F)V
    .locals 4

    iget-object v0, p0, Lz2/ok;->OooO0o:Landroid/graphics/RectF;

    iget-object v1, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lz2/ok;->Oooo0O0:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lz2/ok;->OooO0o:Landroid/graphics/RectF;

    iget v1, p0, Lz2/ok;->OooOOO0:F

    iget v2, p0, Lz2/ok;->OooOOO:F

    iget-object v3, p0, Lz2/ok;->Oooo0O0:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lz2/ok;->OooO0o:Landroid/graphics/RectF;

    iget-object v1, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lz2/ok;->Oooo0O0:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lz2/ok;->OooO0o:Landroid/graphics/RectF;

    iget-object v1, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lz2/ok;->Oooo0O0:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lz2/ok;->OooOoo(FFFLandroid/animation/TimeInterpolator;)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private OooOoO0(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Lz2/ok;->OooOO0:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lz2/ok;->OooOOoo:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private static OooOoOO(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static OooOoo(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lz2/ej;->OooO00o(FFF)F

    move-result p0

    return p0
.end method

.method private OooOooo(I)Landroid/graphics/Typeface;
    .locals 4

    iget-object v0, p0, Lz2/ok;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10103ac

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private static Oooo00O(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private OoooOO0(F)V
    .locals 1

    invoke-direct {p0, p1}, Lz2/ok;->OooO0oO(F)V

    sget-boolean p1, Lz2/ok;->OoooO:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lz2/ok;->OooOooO:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lz2/ok;->OooOoO0:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lz2/ok;->OooOO0()V

    :cond_1
    iget-object p1, p0, Lz2/ok;->OooO00o:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public OooO(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lz2/ok;->OooO0O0:Z

    if-eqz v1, :cond_5

    iget v6, p0, Lz2/ok;->OooOOo0:F

    iget v1, p0, Lz2/ok;->OooOOo:F

    iget-boolean v2, p0, Lz2/ok;->OooOoO0:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lz2/ok;->OooOoO:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget v3, p0, Lz2/ok;->OooOoo0:F

    iget v4, p0, Lz2/ok;->OooOooO:F

    mul-float v3, v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, Lz2/ok;->OooOooO:F

    mul-float v3, v3, v4

    iget-object v4, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    :goto_1
    if-eqz v2, :cond_2

    add-float/2addr v1, v3

    :cond_2
    move v7, v1

    iget v1, p0, Lz2/ok;->OooOooO:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1, v1, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object v1, p0, Lz2/ok;->OooOoO:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lz2/ok;->OooOoOO:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Lz2/ok;->Oooo00o:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public OooO0OO()F
    .locals 4

    iget-object v0, p0, Lz2/ok;->OooOo0O:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lz2/ok;->Oooo0:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lz2/ok;->OooOoO0(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lz2/ok;->Oooo0:Landroid/text/TextPaint;

    iget-object v1, p0, Lz2/ok;->OooOo0O:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method public OooOO0O(Landroid/graphics/RectF;)V
    .locals 4

    iget-object v0, p0, Lz2/ok;->OooOo0O:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lz2/ok;->OooO0o0(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lz2/ok;->OooO0OO()F

    move-result v2

    sub-float/2addr v1, v2

    :goto_0
    iput v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, p1, Landroid/graphics/RectF;->top:F

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lz2/ok;->OooO0OO()F

    move-result v0

    add-float/2addr v1, v0

    goto :goto_1

    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    :goto_1
    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lz2/ok;->OooOOO()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public OooOO0o()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOO0o:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public OooOOO()F
    .locals 1

    iget-object v0, p0, Lz2/ok;->Oooo0:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lz2/ok;->OooOoO0(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lz2/ok;->Oooo0:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public OooOOO0()I
    .locals 1

    iget v0, p0, Lz2/ok;->OooO0oo:I

    return v0
.end method

.method public OooOOOO()F
    .locals 1

    iget v0, p0, Lz2/ok;->OooOO0:F

    return v0
.end method

.method public OooOOOo()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOOoo:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public OooOOo0()I
    .locals 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lz2/ok;->Oooo000:[I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/ok;->OooOO0o:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lz2/ok;->OooOO0o:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public OooOOoo()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOO0O:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public OooOo()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOo0O:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public OooOo0()F
    .locals 1

    iget v0, p0, Lz2/ok;->OooO:F

    return v0
.end method

.method public OooOo00()I
    .locals 1

    iget v0, p0, Lz2/ok;->OooO0oO:I

    return v0
.end method

.method public OooOo0O()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOo00:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method public OooOo0o()F
    .locals 1

    iget v0, p0, Lz2/ok;->OooO0OO:F

    return v0
.end method

.method public final OooOoo0()Z
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOO0o:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lz2/ok;->OooOO0O:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooOooO()V
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lz2/ok;->OooO0O0:Z

    return-void
.end method

.method public Oooo(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOO0O:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lz2/ok;->OooOO0O:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    :cond_0
    return-void
.end method

.method public Oooo0(I)V
    .locals 3

    iget-object v0, p0, Lz2/ok;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lz2/ok;->OooOO0o:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lz2/ok;->OooOO0:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lz2/ok;->OooOO0:F

    :cond_1
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lz2/ok;->Oooo0oo:I

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lz2/ok;->Oooo0o:F

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lz2/ok;->Oooo0oO:F

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lz2/ok;->Oooo0o0:F

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-direct {p0, p1}, Lz2/ok;->OooOooo(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lz2/ok;->OooOOoo:Landroid/graphics/Typeface;

    :cond_2
    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    return-void
.end method

.method public Oooo000()V
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lz2/ok;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lz2/ok;->OooO0O0()V

    invoke-direct {p0}, Lz2/ok;->OooO0Oo()V

    :cond_0
    return-void
.end method

.method public Oooo00o(IIII)V
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lz2/ok;->Oooo00O(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/ok;->OooO0o0:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/ok;->Oooo00O:Z

    invoke-virtual {p0}, Lz2/ok;->OooOooO()V

    :cond_0
    return-void
.end method

.method public Oooo0O0(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOO0o:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lz2/ok;->OooOO0o:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    :cond_0
    return-void
.end method

.method public Oooo0OO(I)V
    .locals 1

    iget v0, p0, Lz2/ok;->OooO0oo:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lz2/ok;->OooO0oo:I

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    :cond_0
    return-void
.end method

.method public Oooo0o(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOOoo:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lz2/ok;->OooOOoo:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    :cond_0
    return-void
.end method

.method public Oooo0o0(F)V
    .locals 1

    iget v0, p0, Lz2/ok;->OooOO0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lz2/ok;->OooOO0:F

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    :cond_0
    return-void
.end method

.method public Oooo0oO(IIII)V
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lz2/ok;->Oooo00O(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/ok;->OooO0Oo:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/ok;->Oooo00O:Z

    invoke-virtual {p0}, Lz2/ok;->OooOooO()V

    :cond_0
    return-void
.end method

.method public Oooo0oo(I)V
    .locals 3

    iget-object v0, p0, Lz2/ok;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lz2/ok;->OooOO0O:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lz2/ok;->OooO:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lz2/ok;->OooO:F

    :cond_1
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lz2/ok;->OoooO0O:I

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lz2/ok;->OoooO00:F

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lz2/ok;->OoooO0:F

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lz2/ok;->Oooo:F

    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    invoke-direct {p0, p1}, Lz2/ok;->OooOooo(I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lz2/ok;->OooOo00:Landroid/graphics/Typeface;

    :cond_2
    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    return-void
.end method

.method public OoooO(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iget v0, p0, Lz2/ok;->OooO0OO:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lz2/ok;->OooO0OO:F

    invoke-direct {p0}, Lz2/ok;->OooO0Oo()V

    :cond_0
    return-void
.end method

.method public OoooO0(F)V
    .locals 1

    iget v0, p0, Lz2/ok;->OooO:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lz2/ok;->OooO:F

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    :cond_0
    return-void
.end method

.method public OoooO00(I)V
    .locals 1

    iget v0, p0, Lz2/ok;->OooO0oO:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lz2/ok;->OooO0oO:I

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    :cond_0
    return-void
.end method

.method public OoooO0O(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lz2/ok;->OooOo00:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lz2/ok;->OooOo00:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    :cond_0
    return-void
.end method

.method public final OoooOOO([I)Z
    .locals 0

    iput-object p1, p0, Lz2/ok;->Oooo000:[I

    invoke-virtual {p0}, Lz2/ok;->OooOoo0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public OoooOOo(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/ok;->OooOo0O:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lz2/ok;->OooOo0O:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/ok;->OooOo0o:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lz2/ok;->OooO0oo()V

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    :cond_1
    return-void
.end method

.method public OoooOo0(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lz2/ok;->Oooo0OO:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    return-void
.end method

.method public OoooOoO(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lz2/ok;->OooOo00:Landroid/graphics/Typeface;

    iput-object p1, p0, Lz2/ok;->OooOOoo:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    return-void
.end method

.method public o000oOoO(Landroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lz2/ok;->Oooo0O0:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0}, Lz2/ok;->Oooo000()V

    return-void
.end method
