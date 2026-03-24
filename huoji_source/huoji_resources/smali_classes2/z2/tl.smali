.class public final Lz2/tl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooOo:I = 0x2

.field private static final OooOo0:I = 0xa7

.field private static final OooOo00:I = 0xd9

.field public static final OooOo0O:I = 0x0

.field public static final OooOo0o:I = 0x1

.field private static final OooOoO:I = 0x1

.field private static final OooOoO0:I = 0x0

.field private static final OooOoOO:I = 0x2


# instance fields
.field private OooO:I

.field private final OooO00o:Landroid/content/Context;

.field private final OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

.field private OooO0OO:Landroid/widget/LinearLayout;

.field private OooO0Oo:I

.field private OooO0o:I

.field private OooO0o0:Landroid/widget/FrameLayout;

.field private OooO0oO:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final OooO0oo:F

.field private OooOO0:I

.field private OooOO0O:Ljava/lang/CharSequence;

.field private OooOO0o:Z

.field private OooOOO:I

.field private OooOOO0:Landroid/widget/TextView;

.field private OooOOOO:Ljava/lang/CharSequence;

.field private OooOOOo:Z

.field private OooOOo:I

.field private OooOOo0:Landroid/widget/TextView;

.field private OooOOoo:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lz2/tl;->OooO00o:Landroid/content/Context;

    iput-object p1, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$dimen;->design_textinput_caption_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lz2/tl;->OooO0oo:F

    return-void
.end method

.method private OooO(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 3

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xa7

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p2, Lz2/ej;->OooO00o:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public static synthetic OooO00o(Lz2/tl;I)I
    .locals 0

    iput p1, p0, Lz2/tl;->OooO:I

    return p1
.end method

.method public static synthetic OooO0O0(Lz2/tl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lz2/tl;->OooO0oO:Landroid/animation/Animator;

    return-object p1
.end method

.method public static synthetic OooO0OO(Lz2/tl;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    return-object p0
.end method

.method private OooO0o()Z
    .locals 1

    iget-object v0, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private OooO0oo(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    :cond_1
    if-ne p6, p4, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p3, p2}, Lz2/tl;->OooO(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_3

    invoke-direct {p0, p3}, Lz2/tl;->OooOO0(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private OooOO0(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lz2/tl;->OooO0oo:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xd9

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lz2/ej;->OooO0Oo:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private OooOOO0(I)Landroid/widget/TextView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    return-object p1

    :cond_1
    iget-object p1, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    return-object p1
.end method

.method private OooOo(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/tl;->OooOO0O:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private OooOoO0(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/tl;->OooOOOO:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private OooOooO(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lz2/tl;->OooOOO0(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lz2/tl;->OooOOO0(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iput p2, p0, Lz2/tl;->OooO:I

    return-void
.end method

.method private Oooo0OO(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private Oooo0o(Landroid/view/ViewGroup;I)V
    .locals 0

    if-nez p2, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private Oooo0oO(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lz2/tl;->OooOO0:I

    iget v1, p0, Lz2/tl;->OooO:I

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private OoooO00(IIZ)V
    .locals 9

    if-eqz p3, :cond_0

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lz2/tl;->OooO0oO:Landroid/animation/Animator;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Lz2/tl;->OooOOOo:Z

    iget-object v3, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lz2/tl;->OooO0oo(Ljava/util/List;ZLandroid/widget/TextView;III)V

    iget-boolean v2, p0, Lz2/tl;->OooOO0o:Z

    iget-object v3, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lz2/tl;->OooO0oo(Ljava/util/List;ZLandroid/widget/TextView;III)V

    invoke-static {v7, v8}, Lz2/fj;->OooO00o(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    invoke-direct {p0, p1}, Lz2/tl;->OooOOO0(I)Landroid/widget/TextView;

    move-result-object v3

    invoke-direct {p0, p2}, Lz2/tl;->OooOOO0(I)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Lz2/tl$OooO00o;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lz2/tl$OooO00o;-><init>(Lz2/tl;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lz2/tl;->OooOooO(II)V

    :goto_0
    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->Oooo0O0()V

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p3}, Lcom/google/android/material/textfield/TextInputLayout;->Oooo0o(Z)V

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->OoooO00()V

    return-void
.end method


# virtual methods
.method public OooO0Oo(Landroid/widget/TextView;I)V
    .locals 6

    iget-object v0, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/tl;->OooO0o0:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lz2/tl;->OooO00o:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lz2/tl;->OooO00o:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/tl;->OooO0o0:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroidx/legacy/widget/Space;

    iget-object v2, p0, Lz2/tl;->OooO00o:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz2/tl;->OooO0o0()V

    :cond_0
    invoke-virtual {p0, p2}, Lz2/tl;->OooOoO(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lz2/tl;->OooO0o0:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p0, Lz2/tl;->OooO0o0:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget p1, p0, Lz2/tl;->OooO0o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz2/tl;->OooO0o:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_0
    iget-object p1, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget p1, p0, Lz2/tl;->OooO0Oo:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz2/tl;->OooO0Oo:I

    return-void
.end method

.method public OooO0o0()V
    .locals 4

    invoke-direct {p0}, Lz2/tl;->OooO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public OooO0oO()V
    .locals 1

    iget-object v0, p0, Lz2/tl;->OooO0oO:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public OooOO0O()Z
    .locals 1

    iget v0, p0, Lz2/tl;->OooO:I

    invoke-direct {p0, v0}, Lz2/tl;->OooOo(I)Z

    move-result v0

    return v0
.end method

.method public OooOO0o()Z
    .locals 1

    iget v0, p0, Lz2/tl;->OooOO0:I

    invoke-direct {p0, v0}, Lz2/tl;->OooOo(I)Z

    move-result v0

    return v0
.end method

.method public OooOOO()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lz2/tl;->OooOO0O:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public OooOOOO()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public OooOOOo()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public OooOOo()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public OooOOo0()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lz2/tl;->OooOOOO:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public OooOOoo()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    iget-object v0, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public OooOo0()Z
    .locals 1

    iget v0, p0, Lz2/tl;->OooOO0:I

    invoke-direct {p0, v0}, Lz2/tl;->OooOoO0(I)Z

    move-result v0

    return v0
.end method

.method public OooOo00()Z
    .locals 1

    iget v0, p0, Lz2/tl;->OooO:I

    invoke-direct {p0, v0}, Lz2/tl;->OooOoO0(I)Z

    move-result v0

    return v0
.end method

.method public OooOo0O()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/tl;->OooOO0O:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lz2/tl;->OooO0oO()V

    iget v1, p0, Lz2/tl;->OooO:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lz2/tl;->OooOOOo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/tl;->OooOOOO:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lz2/tl;->OooOO0:I

    :cond_1
    iget v1, p0, Lz2/tl;->OooO:I

    iget v2, p0, Lz2/tl;->OooOO0:I

    iget-object v3, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0}, Lz2/tl;->Oooo0oO(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lz2/tl;->OoooO00(IIZ)V

    return-void
.end method

.method public OooOo0o()V
    .locals 4

    invoke-virtual {p0}, Lz2/tl;->OooO0oO()V

    iget v0, p0, Lz2/tl;->OooO:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lz2/tl;->OooOO0:I

    :cond_0
    iget v1, p0, Lz2/tl;->OooOO0:I

    iget-object v2, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lz2/tl;->Oooo0oO(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lz2/tl;->OoooO00(IIZ)V

    return-void
.end method

.method public OooOoO(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public OooOoOO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/tl;->OooOO0o:Z

    return v0
.end method

.method public OooOoo(Landroid/widget/TextView;I)V
    .locals 1

    iget-object v0, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lz2/tl;->OooOoO(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lz2/tl;->OooO0o0:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    iget v0, p0, Lz2/tl;->OooO0o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz2/tl;->OooO0o:I

    invoke-direct {p0, p2, v0}, Lz2/tl;->Oooo0o(Landroid/view/ViewGroup;I)V

    iget-object p2, p0, Lz2/tl;->OooO0o0:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iget p1, p0, Lz2/tl;->OooO0Oo:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lz2/tl;->OooO0Oo:I

    iget-object p2, p0, Lz2/tl;->OooO0OO:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2, p1}, Lz2/tl;->Oooo0o(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public OooOoo0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/tl;->OooOOOo:Z

    return v0
.end method

.method public OooOooo(Z)V
    .locals 3

    iget-boolean v0, p0, Lz2/tl;->OooOO0o:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lz2/tl;->OooO0oO()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lz2/tl;->OooO00o:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$id;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lz2/tl;->OooOOoo:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget v1, p0, Lz2/tl;->OooOOO:I

    invoke-virtual {p0, v1}, Lz2/tl;->Oooo000(I)V

    iget-object v1, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    iget-object v1, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lz2/tl;->OooO0Oo(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lz2/tl;->OooOo0O()V

    iget-object v1, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lz2/tl;->OooOoo(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->Oooo0O0()V

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->OoooO00()V

    :goto_0
    iput-boolean p1, p0, Lz2/tl;->OooOO0o:Z

    return-void
.end method

.method public Oooo(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lz2/tl;->OooO0oO()V

    iput-object p1, p0, Lz2/tl;->OooOOOO:Ljava/lang/CharSequence;

    iget-object v0, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lz2/tl;->OooO:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput v1, p0, Lz2/tl;->OooOO0:I

    :cond_0
    iget v1, p0, Lz2/tl;->OooOO0:I

    iget-object v2, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    invoke-direct {p0, v2, p1}, Lz2/tl;->Oooo0oO(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lz2/tl;->OoooO00(IIZ)V

    return-void
.end method

.method public Oooo0(Z)V
    .locals 3

    iget-boolean v0, p0, Lz2/tl;->OooOOOo:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lz2/tl;->OooO0oO()V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lz2/tl;->OooO00o:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lz2/tl;->OooOOoo:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v1, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    iget v1, p0, Lz2/tl;->OooOOo:I

    invoke-virtual {p0, v1}, Lz2/tl;->Oooo00o(I)V

    iget-object v1, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lz2/tl;->OooO0Oo(Landroid/widget/TextView;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lz2/tl;->OooOo0o()V

    iget-object v1, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lz2/tl;->OooOoo(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->Oooo0O0()V

    iget-object v0, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->OoooO00()V

    :goto_0
    iput-boolean p1, p0, Lz2/tl;->OooOOOo:Z

    return-void
.end method

.method public Oooo000(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lz2/tl;->OooOOO:I

    iget-object v0, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/tl;->OooO0O0:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->Oooo00O(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public Oooo00O(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public Oooo00o(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lz2/tl;->OooOOo:I

    iget-object v0, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public Oooo0O0(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public Oooo0o0(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lz2/tl;->OooOOoo:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lz2/tl;->OooOOoo:Landroid/graphics/Typeface;

    iget-object v0, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lz2/tl;->Oooo0OO(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lz2/tl;->OooOOo0:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lz2/tl;->Oooo0OO(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public Oooo0oo(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lz2/tl;->OooO0oO()V

    iput-object p1, p0, Lz2/tl;->OooOO0O:Ljava/lang/CharSequence;

    iget-object v0, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lz2/tl;->OooO:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lz2/tl;->OooOO0:I

    :cond_0
    iget v1, p0, Lz2/tl;->OooOO0:I

    iget-object v2, p0, Lz2/tl;->OooOOO0:Landroid/widget/TextView;

    invoke-direct {p0, v2, p1}, Lz2/tl;->Oooo0oO(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lz2/tl;->OoooO00(IIZ)V

    return-void
.end method
