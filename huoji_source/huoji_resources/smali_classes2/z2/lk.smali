.class public Lz2/lk;
.super Lz2/kk;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/lk$OooO00o;
    }
.end annotation


# instance fields
.field private OoooO:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/VisibilityAwareImageButton;Lz2/gl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lz2/kk;-><init>(Lcom/google/android/material/internal/VisibilityAwareImageButton;Lz2/gl;)V

    return-void
.end method

.method private OoooOOo(FF)Landroid/animation/Animator;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const-string p1, "elevation"

    invoke-static {v1, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object v1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v2, [F

    aput p2, v2, v4

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object p1, Lz2/kk;->OooOoo0:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method


# virtual methods
.method public OooOO0o()F
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getElevation()F

    move-result v0

    return v0
.end method

.method public OooOOOO(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    invoke-interface {v0}, Lz2/gl;->OooO00o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    invoke-interface {v0}, Lz2/gl;->OooO0O0()F

    move-result v0

    invoke-virtual {p0}, Lz2/lk;->OooOO0o()F

    move-result v2

    iget v3, p0, Lz2/kk;->OooOOOo:F

    add-float/2addr v2, v3

    invoke-static {v2, v0, v1}, Lz2/fl;->OooO0OO(FFZ)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v0, v1}, Lz2/fl;->OooO0Oo(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public OooOo0()V
    .locals 0

    return-void
.end method

.method public OooOo0O()Lz2/mk;
    .locals 1

    new-instance v0, Lz2/nk;

    invoke-direct {v0}, Lz2/nk;-><init>()V

    return-object v0
.end method

.method public OooOo0o()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Lz2/lk$OooO00o;

    invoke-direct {v0}, Lz2/lk$OooO00o;-><init>()V

    return-object v0
.end method

.method public OooOoO0()V
    .locals 0

    invoke-virtual {p0}, Lz2/kk;->OoooOOO()V

    return-void
.end method

.method public OooOoOO([I)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    iget v1, p0, Lz2/kk;->OooOOO:F

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setElevation(F)V

    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    iget v0, p0, Lz2/kk;->OooOOOo:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isFocused()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->isHovered()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    iget v0, p0, Lz2/kk;->OooOOOO:F

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setElevation(F)V

    :cond_3
    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationZ(F)V

    :cond_4
    return-void
.end method

.method public OooOoo(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    invoke-interface {v0}, Lz2/gl;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lz2/kk;->OooOO0O:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Lz2/lk;->OoooO:Landroid/graphics/drawable/InsetDrawable;

    iget-object p1, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    iget-object v0, p0, Lz2/kk;->OooOO0O:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-interface {p1, v0}, Lz2/gl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public OooOoo0(FFF)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->refreshDrawableState()V

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    sget-object v2, Lz2/kk;->Oooo0oO:[I

    invoke-direct {p0, p1, p3}, Lz2/lk;->OoooOOo(FF)Landroid/animation/Animator;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p3, Lz2/kk;->Oooo0oo:[I

    invoke-direct {p0, p1, p2}, Lz2/lk;->OoooOOo(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p3, Lz2/kk;->Oooo:[I

    invoke-direct {p0, p1, p2}, Lz2/lk;->OoooOOo(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p3, Lz2/kk;->OoooO00:[I

    invoke-direct {p0, p1, p2}, Lz2/lk;->OoooOOo(FF)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const-string p1, "elevation"

    invoke-static {v2, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x16

    const-wide/16 v6, 0x64

    if-lt v0, p1, :cond_1

    const/16 p1, 0x18

    if-gt v0, p1, :cond_1

    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getTranslationZ()F

    move-result v4

    aput v4, v2, v5

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v2, v3, [F

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array p1, v5, [Landroid/animation/Animator;

    invoke-interface {p3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object p1, Lz2/kk;->OooOoo0:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object p1, Lz2/kk;->OoooO0:[I

    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object p1, Lz2/kk;->OoooO0O:[I

    invoke-direct {p0, v3, v3}, Lz2/lk;->OoooOOo(FF)Landroid/animation/Animator;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :goto_0
    iget-object p1, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    invoke-interface {p1}, Lz2/gl;->OooO00o()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lz2/kk;->OoooOOO()V

    :cond_2
    return-void
.end method

.method public Oooo00O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Oooo00o(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 2

    invoke-virtual {p0}, Lz2/kk;->OooO0oO()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lz2/kk;->OooOO0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lz2/kk;->OooOO0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const/4 p2, 0x0

    if-lez p4, :cond_1

    invoke-virtual {p0, p4, p1}, Lz2/kk;->OooO0o0(ILandroid/content/res/ColorStateList;)Lz2/mk;

    move-result-object p1

    iput-object p1, p0, Lz2/kk;->OooOO0o:Lz2/mk;

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iget-object v1, p0, Lz2/kk;->OooOO0o:Lz2/mk;

    aput-object v1, p4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lz2/kk;->OooOO0:Landroid/graphics/drawable/Drawable;

    aput-object v1, p4, v0

    invoke-direct {p1, p4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lz2/kk;->OooOO0o:Lz2/mk;

    iget-object p1, p0, Lz2/kk;->OooOO0:Landroid/graphics/drawable/Drawable;

    :goto_0
    new-instance p4, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p3}, Lz2/el;->OooO00o(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-direct {p4, p3, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p4, p0, Lz2/kk;->OooOO0O:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lz2/kk;->OooOOO0:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    invoke-interface {p1, p4}, Lz2/gl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public OoooO00(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lz2/kk;->OooOO0O:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Lz2/el;->OooO00o(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lz2/kk;->OoooO00(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method
