.class public Lz2/kk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/kk$OooO0o;,
        Lz2/kk$OooOO0;,
        Lz2/kk$OooO;,
        Lz2/kk$OooOOO0;,
        Lz2/kk$OooOOO;,
        Lz2/kk$OooOO0O;
    }
.end annotation


# static fields
.field public static final OooOoo:J = 0x64L

.field public static final OooOoo0:Landroid/animation/TimeInterpolator;

.field public static final OooOooO:J = 0x64L

.field public static final OooOooo:I = 0x0

.field public static final Oooo:[I

.field private static final Oooo0:F = 0.0f

.field public static final Oooo000:I = 0x1

.field public static final Oooo00O:I = 0x2

.field private static final Oooo00o:F = 0.0f

.field private static final Oooo0O0:F = 0.0f

.field private static final Oooo0OO:F = 1.0f

.field private static final Oooo0o:F = 1.0f

.field private static final Oooo0o0:F = 1.0f

.field public static final Oooo0oO:[I

.field public static final Oooo0oo:[I

.field public static final OoooO0:[I

.field public static final OoooO00:[I

.field public static final OoooO0O:[I


# instance fields
.field private OooO:F

.field public OooO00o:I

.field public OooO0O0:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public OooO0OO:Lz2/lj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public OooO0Oo:Lz2/lj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooO0o:Lz2/lj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooO0o0:Lz2/lj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final OooO0oO:Lz2/vk;

.field public OooO0oo:Lz2/fl;

.field public OooOO0:Landroid/graphics/drawable/Drawable;

.field public OooOO0O:Landroid/graphics/drawable/Drawable;

.field public OooOO0o:Lz2/mk;

.field public OooOOO:F

.field public OooOOO0:Landroid/graphics/drawable/Drawable;

.field public OooOOOO:F

.field public OooOOOo:F

.field public OooOOo:F

.field public OooOOo0:I

.field private OooOOoo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final OooOo:Landroid/graphics/RectF;

.field public final OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

.field private OooOo00:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field public final OooOo0O:Lz2/gl;

.field private final OooOo0o:Landroid/graphics/Rect;

.field private final OooOoO:Landroid/graphics/Matrix;

.field private final OooOoO0:Landroid/graphics/RectF;

.field private OooOoOO:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lz2/ej;->OooO0OO:Landroid/animation/TimeInterpolator;

    sput-object v0, Lz2/kk;->OooOoo0:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lz2/kk;->Oooo0oO:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lz2/kk;->Oooo0oo:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lz2/kk;->Oooo:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lz2/kk;->OoooO00:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lz2/kk;->OoooO0:[I

    new-array v0, v2, [I

    sput-object v0, Lz2/kk;->OoooO0O:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/material/internal/VisibilityAwareImageButton;Lz2/gl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/kk;->OooO00o:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lz2/kk;->OooOOo:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lz2/kk;->OooOo0o:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lz2/kk;->OooOo:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lz2/kk;->OooOoO0:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lz2/kk;->OooOoO:Landroid/graphics/Matrix;

    iput-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    iput-object p2, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    new-instance p2, Lz2/vk;

    invoke-direct {p2}, Lz2/vk;-><init>()V

    iput-object p2, p0, Lz2/kk;->OooO0oO:Lz2/vk;

    sget-object v0, Lz2/kk;->Oooo0oO:[I

    new-instance v1, Lz2/kk$OooOO0;

    invoke-direct {v1, p0}, Lz2/kk$OooOO0;-><init>(Lz2/kk;)V

    invoke-direct {p0, v1}, Lz2/kk;->OooO0o(Lz2/kk$OooOOO;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lz2/vk;->OooO00o([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lz2/kk;->Oooo0oo:[I

    new-instance v1, Lz2/kk$OooO;

    invoke-direct {v1, p0}, Lz2/kk$OooO;-><init>(Lz2/kk;)V

    invoke-direct {p0, v1}, Lz2/kk;->OooO0o(Lz2/kk$OooOOO;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lz2/vk;->OooO00o([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lz2/kk;->Oooo:[I

    new-instance v1, Lz2/kk$OooO;

    invoke-direct {v1, p0}, Lz2/kk$OooO;-><init>(Lz2/kk;)V

    invoke-direct {p0, v1}, Lz2/kk;->OooO0o(Lz2/kk$OooOOO;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lz2/vk;->OooO00o([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lz2/kk;->OoooO00:[I

    new-instance v1, Lz2/kk$OooO;

    invoke-direct {v1, p0}, Lz2/kk$OooO;-><init>(Lz2/kk;)V

    invoke-direct {p0, v1}, Lz2/kk;->OooO0o(Lz2/kk$OooOOO;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lz2/vk;->OooO00o([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lz2/kk;->OoooO0:[I

    new-instance v1, Lz2/kk$OooOOO0;

    invoke-direct {v1, p0}, Lz2/kk$OooOOO0;-><init>(Lz2/kk;)V

    invoke-direct {p0, v1}, Lz2/kk;->OooO0o(Lz2/kk$OooOOO;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lz2/vk;->OooO00o([ILandroid/animation/ValueAnimator;)V

    sget-object v0, Lz2/kk;->OoooO0O:[I

    new-instance v1, Lz2/kk$OooO0o;

    invoke-direct {v1, p0}, Lz2/kk$OooO0o;-><init>(Lz2/kk;)V

    invoke-direct {p0, v1}, Lz2/kk;->OooO0o(Lz2/kk$OooOOO;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lz2/vk;->OooO00o([ILandroid/animation/ValueAnimator;)V

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getRotation()F

    move-result p1

    iput p1, p0, Lz2/kk;->OooO:F

    return-void
.end method

.method private OooO0OO(FLandroid/graphics/Matrix;)V
    .locals 5

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lz2/kk;->OooOOo0:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/kk;->OooOo:Landroid/graphics/RectF;

    iget-object v2, p0, Lz2/kk;->OooOoO0:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lz2/kk;->OooOOo0:I

    int-to-float v3, v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget v0, p0, Lz2/kk;->OooOOo0:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p2, p1, p1, v1, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method private OooO0Oo(Lz2/lj;FFF)Landroid/animation/AnimatorSet;
    .locals 6
    .param p1    # Lz2/lj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    invoke-virtual {p1, v1}, Lz2/lj;->OooO0o0(Ljava/lang/String;)Lz2/mj;

    move-result-object v1

    invoke-virtual {v1, p2}, Lz2/mj;->OooO00o(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lz2/lj;->OooO0o0(Ljava/lang/String;)Lz2/mj;

    move-result-object v2

    invoke-virtual {v2, p2}, Lz2/mj;->OooO00o(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v3, [F

    aput p3, v4, v5

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, v1}, Lz2/lj;->OooO0o0(Ljava/lang/String;)Lz2/mj;

    move-result-object p3

    invoke-virtual {p3, p2}, Lz2/mj;->OooO00o(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lz2/kk;->OooOoO:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, p2}, Lz2/kk;->OooO0OO(FLandroid/graphics/Matrix;)V

    iget-object p2, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    new-instance p3, Lz2/jj;

    invoke-direct {p3}, Lz2/jj;-><init>()V

    new-instance p4, Lz2/kj;

    invoke-direct {p4}, Lz2/kj;-><init>()V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lz2/kk;->OooOoO:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "iconScale"

    invoke-virtual {p1, p3}, Lz2/lj;->OooO0o0(Ljava/lang/String;)Lz2/mj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/mj;->OooO00o(Landroid/animation/Animator;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p1, v0}, Lz2/fj;->OooO00o(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p1
.end method

.method private OooO0o(Lz2/kk$OooOOO;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1    # Lz2/kk$OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    sget-object v1, Lz2/kk;->OooOoo0:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private OooO0oo()V
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooOoOO:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    new-instance v0, Lz2/kk$OooO0OO;

    invoke-direct {v0, p0}, Lz2/kk$OooO0OO;-><init>(Lz2/kk;)V

    iput-object v0, p0, Lz2/kk;->OooOoOO:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method private OooOO0()Lz2/lj;
    .locals 2

    iget-object v0, p0, Lz2/kk;->OooO0o:Lz2/lj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Lz2/lj;->OooO0OO(Landroid/content/Context;I)Lz2/lj;

    move-result-object v0

    iput-object v0, p0, Lz2/kk;->OooO0o:Lz2/lj;

    :cond_0
    iget-object v0, p0, Lz2/kk;->OooO0o:Lz2/lj;

    return-object v0
.end method

.method private OooOO0O()Lz2/lj;
    .locals 2

    iget-object v0, p0, Lz2/kk;->OooO0o0:Lz2/lj;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$animator;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Lz2/lj;->OooO0OO(Landroid/content/Context;I)Lz2/lj;

    move-result-object v0

    iput-object v0, p0, Lz2/kk;->OooO0o0:Lz2/lj;

    :cond_0
    iget-object v0, p0, Lz2/kk;->OooO0o0:Lz2/lj;

    return-object v0
.end method

.method private OoooO0O()Z
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private OoooOO0()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    iget v0, p0, Lz2/kk;->OooO:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageButton;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lz2/kk;->OooO0oo:Lz2/fl;

    if-eqz v0, :cond_2

    iget v1, p0, Lz2/kk;->OooO:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lz2/fl;->OooOOO(F)V

    :cond_2
    iget-object v0, p0, Lz2/kk;->OooOO0o:Lz2/mk;

    if-eqz v0, :cond_3

    iget v1, p0, Lz2/kk;->OooO:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lz2/mk;->OooO0o0(F)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final OooO()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooOOO0:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public OooO00o(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/kk;->OooOo00:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/kk;->OooOo00:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lz2/kk;->OooOo00:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/kk;->OooOOoo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/kk;->OooOOoo:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lz2/kk;->OooOOoo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0o0(ILandroid/content/res/ColorStateList;)Lz2/mk;
    .locals 6

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lz2/kk;->OooOo0O()Lz2/mk;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$color;->design_fab_stroke_top_outer_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/google/android/material/R$color;->design_fab_stroke_top_inner_color:I

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget v4, Lcom/google/android/material/R$color;->design_fab_stroke_end_inner_color:I

    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lcom/google/android/material/R$color;->design_fab_stroke_end_outer_color:I

    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lz2/mk;->OooO0Oo(IIII)V

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lz2/mk;->OooO0OO(F)V

    invoke-virtual {v1, p2}, Lz2/mk;->OooO0O0(Landroid/content/res/ColorStateList;)V

    return-object v1
.end method

.method public OooO0oO()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    invoke-virtual {p0}, Lz2/kk;->OooOo0o()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public OooOO0o()F
    .locals 1

    iget v0, p0, Lz2/kk;->OooOOO:F

    return v0
.end method

.method public OooOOO()F
    .locals 1

    iget v0, p0, Lz2/kk;->OooOOOO:F

    return v0
.end method

.method public final OooOOO0()Lz2/lj;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/kk;->OooO0Oo:Lz2/lj;

    return-object v0
.end method

.method public OooOOOO(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooO0oo:Lz2/fl;

    invoke-virtual {v0, p1}, Lz2/fl;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public OooOOOo()F
    .locals 1

    iget v0, p0, Lz2/kk;->OooOOOo:F

    return v0
.end method

.method public OooOOo(Lz2/kk$OooOO0O;Z)V
    .locals 2
    .param p1    # Lz2/kk$OooOO0O;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lz2/kk;->OooOOoo()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/kk;->OooO0O0:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-direct {p0}, Lz2/kk;->OoooO0O()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lz2/kk;->OooO0Oo:Lz2/lj;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lz2/kk;->OooOO0()Lz2/lj;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lz2/kk;->OooO0Oo(Lz2/lj;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lz2/kk$OooO00o;

    invoke-direct {v1, p0, p2, p1}, Lz2/kk$OooO00o;-><init>(Lz2/kk;ZLz2/kk$OooOO0O;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lz2/kk;->OooOo00:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    if-eqz p2, :cond_5

    const/16 v1, 0x8

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v0, v1, p2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->OooO0OO(IZ)V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lz2/kk$OooOO0O;->OooO0O0()V

    :cond_6
    :goto_3
    return-void
.end method

.method public final OooOOo0()Lz2/lj;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/kk;->OooO0OO:Lz2/lj;

    return-object v0
.end method

.method public OooOOoo()Z
    .locals 4

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lz2/kk;->OooO00o:I

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lz2/kk;->OooO00o:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public OooOo()V
    .locals 2

    invoke-virtual {p0}, Lz2/kk;->Oooo00O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/kk;->OooO0oo()V

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lz2/kk;->OooOoOO:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public OooOo0()V
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooO0oO:Lz2/vk;

    invoke-virtual {v0}, Lz2/vk;->OooO0OO()V

    return-void
.end method

.method public OooOo00()Z
    .locals 4

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lz2/kk;->OooO00o:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lz2/kk;->OooO00o:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public OooOo0O()Lz2/mk;
    .locals 1

    new-instance v0, Lz2/mk;

    invoke-direct {v0}, Lz2/mk;-><init>()V

    return-object v0
.end method

.method public OooOo0o()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0
.end method

.method public OooOoO()V
    .locals 2

    iget-object v0, p0, Lz2/kk;->OooOoOO:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lz2/kk;->OooOoOO:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/kk;->OooOoOO:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method public OooOoO0()V
    .locals 0

    return-void
.end method

.method public OooOoOO([I)V
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooO0oO:Lz2/vk;

    invoke-virtual {v0, p1}, Lz2/vk;->OooO0Oo([I)V

    return-void
.end method

.method public OooOoo(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public OooOoo0(FFF)V
    .locals 0

    iget-object p2, p0, Lz2/kk;->OooO0oo:Lz2/fl;

    if-eqz p2, :cond_0

    iget p3, p0, Lz2/kk;->OooOOOo:F

    add-float/2addr p3, p1

    invoke-virtual {p2, p1, p3}, Lz2/fl;->OooOOOo(FF)V

    invoke-virtual {p0}, Lz2/kk;->OoooOOO()V

    :cond_0
    return-void
.end method

.method public OooOooO()V
    .locals 2

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getRotation()F

    move-result v0

    iget v1, p0, Lz2/kk;->OooO:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Lz2/kk;->OooO:F

    invoke-direct {p0}, Lz2/kk;->OoooOO0()V

    :cond_0
    return-void
.end method

.method public OooOooo(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/kk;->OooOo00:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final Oooo(F)V
    .locals 2

    iget v0, p0, Lz2/kk;->OooOOOo:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lz2/kk;->OooOOOo:F

    iget v0, p0, Lz2/kk;->OooOOO:F

    iget v1, p0, Lz2/kk;->OooOOOO:F

    invoke-virtual {p0, v0, v1, p1}, Lz2/kk;->OooOoo0(FFF)V

    :cond_0
    return-void
.end method

.method public Oooo0(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooOO0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v0, p0, Lz2/kk;->OooOO0o:Lz2/mk;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lz2/mk;->OooO0O0(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public Oooo000(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/kk;->OooOOoo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public Oooo00O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Oooo00o(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 7

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
    invoke-virtual {p0}, Lz2/kk;->OooO0oO()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-static {p2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lz2/kk;->OooOO0O:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Lz2/el;->OooO00o(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p2, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    const/4 p2, 0x1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-lez p4, :cond_1

    invoke-virtual {p0, p4, p1}, Lz2/kk;->OooO0o0(ILandroid/content/res/ColorStateList;)Lz2/mk;

    move-result-object p1

    iput-object p1, p0, Lz2/kk;->OooOO0o:Lz2/mk;

    const/4 p4, 0x3

    new-array p4, p4, [Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, v0

    iget-object p1, p0, Lz2/kk;->OooOO0:Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, p2

    iget-object p1, p0, Lz2/kk;->OooOO0O:Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lz2/kk;->OooOO0o:Lz2/mk;

    new-array p4, p3, [Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lz2/kk;->OooOO0:Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, v0

    iget-object p1, p0, Lz2/kk;->OooOO0O:Landroid/graphics/drawable/Drawable;

    aput-object p1, p4, p2

    :goto_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lz2/kk;->OooOOO0:Landroid/graphics/drawable/Drawable;

    new-instance p1, Lz2/fl;

    iget-object p2, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p2}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lz2/kk;->OooOOO0:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    invoke-interface {p2}, Lz2/gl;->OooO0O0()F

    move-result v4

    iget v5, p0, Lz2/kk;->OooOOO:F

    iget p2, p0, Lz2/kk;->OooOOOo:F

    add-float v6, v5, p2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lz2/fl;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object p1, p0, Lz2/kk;->OooO0oo:Lz2/fl;

    invoke-virtual {p1, v0}, Lz2/fl;->OooOO0O(Z)V

    iget-object p1, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    iget-object p2, p0, Lz2/kk;->OooO0oo:Lz2/fl;

    invoke-interface {p1, p2}, Lz2/gl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public Oooo0O0(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooOO0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final Oooo0OO(F)V
    .locals 2

    iget v0, p0, Lz2/kk;->OooOOO:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lz2/kk;->OooOOO:F

    iget v0, p0, Lz2/kk;->OooOOOO:F

    iget v1, p0, Lz2/kk;->OooOOOo:F

    invoke-virtual {p0, p1, v0, v1}, Lz2/kk;->OooOoo0(FFF)V

    :cond_0
    return-void
.end method

.method public final Oooo0o(F)V
    .locals 2

    iget v0, p0, Lz2/kk;->OooOOOO:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lz2/kk;->OooOOOO:F

    iget v0, p0, Lz2/kk;->OooOOO:F

    iget v1, p0, Lz2/kk;->OooOOOo:F

    invoke-virtual {p0, v0, p1, v1}, Lz2/kk;->OooOoo0(FFF)V

    :cond_0
    return-void
.end method

.method public final Oooo0o0(Lz2/lj;)V
    .locals 0
    .param p1    # Lz2/lj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/kk;->OooO0Oo:Lz2/lj;

    return-void
.end method

.method public final Oooo0oO(F)V
    .locals 1

    iput p1, p0, Lz2/kk;->OooOOo:F

    iget-object v0, p0, Lz2/kk;->OooOoO:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lz2/kk;->OooO0OO(FLandroid/graphics/Matrix;)V

    iget-object p1, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final Oooo0oo(I)V
    .locals 1

    iget v0, p0, Lz2/kk;->OooOOo0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lz2/kk;->OooOOo0:I

    invoke-virtual {p0}, Lz2/kk;->o000oOoO()V

    :cond_0
    return-void
.end method

.method public OoooO(Lz2/kk$OooOO0O;Z)V
    .locals 3
    .param p1    # Lz2/kk$OooOO0O;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lz2/kk;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/kk;->OooO0O0:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-direct {p0}, Lz2/kk;->OoooO0O()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleY(F)V

    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setScaleX(F)V

    invoke-virtual {p0, v2}, Lz2/kk;->Oooo0oO(F)V

    :cond_2
    iget-object v0, p0, Lz2/kk;->OooO0OO:Lz2/lj;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lz2/kk;->OooOO0O()Lz2/lj;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, v1, v1, v1}, Lz2/kk;->OooO0Oo(Lz2/lj;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lz2/kk$OooO0O0;

    invoke-direct {v1, p0, p2, p1}, Lz2/kk$OooO0O0;-><init>(Lz2/kk;ZLz2/kk$OooOO0O;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lz2/kk;->OooOOoo:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/google/android/material/internal/VisibilityAwareImageButton;->OooO0OO(IZ)V

    iget-object p2, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p2, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setScaleY(F)V

    iget-object p2, p0, Lz2/kk;->OooOo0:Lcom/google/android/material/internal/VisibilityAwareImageButton;

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setScaleX(F)V

    invoke-virtual {p0, v1}, Lz2/kk;->Oooo0oO(F)V

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lz2/kk$OooOO0O;->OooO00o()V

    :cond_6
    :goto_2
    return-void
.end method

.method public final OoooO0(Lz2/lj;)V
    .locals 0
    .param p1    # Lz2/lj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/kk;->OooO0OO:Lz2/lj;

    return-void
.end method

.method public OoooO00(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lz2/kk;->OooOO0O:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lz2/el;->OooO00o(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final OoooOOO()V
    .locals 5

    iget-object v0, p0, Lz2/kk;->OooOo0o:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lz2/kk;->OooOOOO(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lz2/kk;->OooOoo(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lz2/kk;->OooOo0O:Lz2/gl;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Lz2/gl;->setShadowPadding(IIII)V

    return-void
.end method

.method public final o000oOoO()V
    .locals 1

    iget v0, p0, Lz2/kk;->OooOOo:F

    invoke-virtual {p0, v0}, Lz2/kk;->Oooo0oO(F)V

    return-void
.end method
