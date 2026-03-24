.class public final Lz2/te0;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lz2/ue0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/te0$OooO;,
        Lz2/te0$OooO0o;
    }
.end annotation


# static fields
.field private static final o00o0O:Ljava/lang/String; = "PopupDecorViewProxy"

.field private static o00ooo:I


# instance fields
.field private OoooOoO:Lz2/ve0;

.field private OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

.field private Ooooo00:Landroid/view/View;

.field private Ooooo0o:Landroid/graphics/Rect;

.field private OooooO0:I

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo:Lz2/te0$OooO0o;

.field private Oooooo0:I

.field private OoooooO:Lz2/df0;

.field private Ooooooo:Lz2/te0$OooO;

.field private o00O0O:I

.field private o00Oo0:Landroid/animation/ValueAnimator;

.field private o00Ooo:Z

.field private o0OoOo0:Landroid/graphics/Rect;

.field private ooOO:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/te0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lz2/te0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lz2/te0;->Ooooo0o:Landroid/graphics/Rect;

    new-instance p1, Lz2/te0$OooO;

    invoke-direct {p1}, Lz2/te0$OooO;-><init>()V

    iput-object p1, p0, Lz2/te0;->Ooooooo:Lz2/te0$OooO;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lz2/te0;->o0OoOo0:Landroid/graphics/Rect;

    return-void
.end method

.method public static OooO(Landroid/content/Context;Lz2/df0;Lrazerdp/basepopup/BasePopupHelper;)Lz2/te0;
    .locals 1

    new-instance v0, Lz2/te0;

    invoke-direct {v0, p0}, Lz2/te0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p2, p1}, Lz2/te0;->OooOOO(Lrazerdp/basepopup/BasePopupHelper;Lz2/df0;)V

    return-object v0
.end method

.method public static synthetic OooO0O0(Lz2/te0;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iget-object p0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/te0;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lz2/te0;->Ooooo00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lz2/te0;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lz2/te0;->Ooooo0o:Landroid/graphics/Rect;

    return-object p0
.end method

.method private OooO0o(Landroid/view/Window;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    iget-object p1, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lz2/ve0;->onDetachedFromWindow()V

    iput-object v0, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    :cond_1
    return-void

    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public static synthetic OooO0o0(Lz2/te0;)Lz2/df0;
    .locals 0

    iget-object p0, p0, Lz2/te0;->OoooooO:Lz2/df0;

    return-object p0
.end method

.method private OooO0oo(Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lz2/ve0;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private OooOO0(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lz2/te0;->OooOOOO(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private OooOOO(Lrazerdp/basepopup/BasePopupHelper;Lz2/df0;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iput-object p2, p0, Lz2/te0;->OoooooO:Lz2/df0;

    iput-object p1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1, p0}, Lrazerdp/basepopup/BasePopupHelper;->oo0o0Oo(Lz2/ue0;)Lrazerdp/basepopup/BasePopupHelper;

    iget-object p1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->o00Oo0()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-static {p1, p2}, Lz2/ve0;->OooO0O0(Landroid/content/Context;Lrazerdp/basepopup/BasePopupHelper;)Lz2/ve0;

    move-result-object p1

    iput-object p1, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    iget-object p1, p0, Lz2/te0;->Ooooooo:Lz2/te0$OooO;

    const/4 p2, 0x0

    iput p2, p1, Lz2/te0$OooO;->OooO00o:I

    iget-object p1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget-object p1, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    new-instance p2, Lz2/te0$OooO00o;

    invoke-direct {p2, p0}, Lz2/te0$OooO00o;-><init>(Lz2/te0;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xf

    invoke-static {p1, p2}, Lz2/nf0;->OooO0oo(Landroid/content/Context;I)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lz2/te0;->OooO0oo(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/te0;->OooO0o(Landroid/view/Window;)V

    :goto_0
    return-void
.end method

.method private OooOOOO(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PopupDecorView"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PopupViewContainer"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PopupBackgroundView"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private OooOOOo(IIII)V
    .locals 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2e

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    :goto_1
    move/from16 v16, v3

    move/from16 v18, v5

    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v9, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v9}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0O()I

    move-result v9

    iget-object v10, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v10}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0o()I

    move-result v10

    iget-object v11, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v11}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0oO()I

    move-result v11

    iget-object v12, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v12}, Lrazerdp/basepopup/BasePopupHelper;->OoooooO()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v12}, Lrazerdp/basepopup/BasePopupHelper;->OooOo00()I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v14

    iget-object v15, v0, Lz2/te0;->OoooOoO:Lz2/ve0;

    if-ne v6, v15, :cond_2

    add-int/2addr v7, v1

    add-int/2addr v8, v2

    invoke-virtual {v6, v1, v2, v7, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    iget-object v15, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v15}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo()Z

    move-result v15

    iget-object v4, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v4}, Lrazerdp/basepopup/BasePopupHelper;->Oooo00o()Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    move-result-object v4

    sget-object v13, Lrazerdp/basepopup/BasePopupWindow$GravityMode;->ALIGN_TO_ANCHOR_SIDE:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    if-ne v4, v13, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    iget-object v13, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v13}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v13

    move/from16 v16, v3

    iget-object v3, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0o()I

    move-result v3

    move/from16 v17, v14

    const/4 v14, 0x1

    shr-int/2addr v3, v14

    add-int/2addr v13, v3

    iget-object v3, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v3

    move/from16 v18, v5

    iget-object v5, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v5

    shr-int/2addr v5, v14

    add-int/2addr v3, v5

    and-int/lit8 v5, v9, 0x7

    if-eq v5, v14, :cond_9

    const/4 v13, 0x3

    if-eq v5, v13, :cond_6

    const/4 v13, 0x5

    if-eq v5, v13, :cond_4

    if-eqz v15, :cond_8

    :goto_4
    iget-object v5, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v5

    goto :goto_6

    :cond_4
    if-eqz v15, :cond_5

    iget-object v5, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v5

    iget-object v13, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v13}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0o()I

    move-result v13

    add-int/2addr v5, v13

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    :goto_5
    sub-int/2addr v5, v7

    goto :goto_6

    :cond_6
    if-eqz v15, :cond_8

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    iget-object v5, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v5

    goto :goto_5

    :cond_8
    move v5, v1

    goto :goto_6

    :cond_9
    if-eqz v15, :cond_a

    iget-object v5, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v5

    shr-int/lit8 v14, v7, 0x1

    add-int/2addr v14, v5

    sub-int/2addr v13, v14

    add-int/2addr v10, v13

    goto :goto_6

    :cond_a
    sub-int v5, p3, v1

    sub-int/2addr v5, v7

    const/4 v13, 0x1

    shr-int/2addr v5, v13

    :cond_b
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v13

    iget v14, v0, Lz2/te0;->OooooO0:I

    add-int/2addr v5, v14

    iget v14, v0, Lz2/te0;->OooooOo:I

    sub-int/2addr v5, v14

    and-int/lit8 v9, v9, 0x70

    const/16 v14, 0x10

    const/16 v1, 0x30

    if-eq v9, v14, :cond_16

    if-eq v9, v1, :cond_11

    const/16 v3, 0x50

    if-eq v9, v3, :cond_c

    if-eqz v15, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v14

    iget-object v3, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v3

    iget-object v15, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v15}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v15

    add-int/2addr v3, v15

    goto/16 :goto_d

    :cond_c
    if-eqz v15, :cond_10

    iget-object v3, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v3

    iget-object v14, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v14}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v14

    add-int/2addr v3, v14

    if-eqz v4, :cond_d

    sub-int/2addr v3, v8

    :cond_d
    if-eqz v4, :cond_e

    const/4 v14, 0x0

    goto :goto_7

    :cond_e
    iget-object v14, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v14}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v14

    iget-object v15, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v15}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v15

    add-int/2addr v14, v15

    :goto_7
    if-eqz v4, :cond_f

    iget-object v15, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v15}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v15

    iget-object v1, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v1

    add-int/2addr v15, v1

    goto :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    move v15, v1

    :goto_8
    move/from16 v17, v15

    goto :goto_e

    :cond_10
    sub-int v1, p4, v2

    sub-int v3, v1, v8

    goto :goto_c

    :cond_11
    if-eqz v15, :cond_15

    iget-object v1, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v1

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_12
    sub-int/2addr v1, v8

    :goto_9
    move v3, v1

    if-eqz v4, :cond_13

    iget-object v1, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v1

    move v14, v1

    goto :goto_a

    :cond_13
    const/4 v14, 0x0

    :goto_a
    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    goto :goto_b

    :cond_14
    iget-object v1, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v1

    :goto_b
    move/from16 v17, v1

    goto :goto_e

    :cond_15
    move v3, v2

    :goto_c
    const/4 v14, 0x0

    goto :goto_e

    :cond_16
    if-eqz v15, :cond_17

    iget-object v1, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v1

    iget-object v14, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v14}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v14

    add-int/2addr v1, v14

    shr-int/lit8 v14, v8, 0x1

    add-int/2addr v14, v1

    sub-int/2addr v3, v14

    add-int/2addr v11, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v14

    move v3, v1

    :goto_d
    move/from16 v17, v14

    goto :goto_c

    :cond_17
    sub-int v1, p4, v2

    sub-int/2addr v1, v8

    const/4 v3, 0x1

    shr-int/2addr v1, v3

    move v3, v1

    goto :goto_c

    :goto_e
    iget v1, v0, Lz2/te0;->OooooOO:I

    add-int/2addr v3, v1

    iget v1, v0, Lz2/te0;->Oooooo0:I

    sub-int/2addr v3, v1

    iget-object v1, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->o0OoOo0()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo()Z

    move-result v1

    if-eqz v1, :cond_20

    add-int v1, v3, v11

    iget-object v15, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v15}, Lrazerdp/basepopup/BasePopupHelper;->o00ooo()Z

    move-result v15

    if-eqz v15, :cond_18

    const/4 v15, 0x0

    goto :goto_f

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lz2/mf0;->OooOO0(Landroid/content/Context;)I

    move-result v15

    neg-int v15, v15

    :goto_f
    add-int/2addr v1, v15

    const/16 v15, 0x30

    if-eq v9, v15, :cond_1c

    if-eqz v4, :cond_19

    iget-object v9, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v9}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v9

    iget-object v15, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v15}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v15

    add-int/2addr v9, v15

    goto :goto_10

    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    iget-object v15, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v15}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v15

    iget-object v2, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v2

    add-int/2addr v15, v2

    sub-int/2addr v9, v15

    :goto_10
    if-le v8, v9, :cond_1b

    if-eqz v4, :cond_1a

    const/4 v1, 0x0

    goto :goto_11

    :cond_1a
    iget-object v2, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_11
    sub-int/2addr v11, v1

    iget-object v1, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v17

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz2/te0;->OooOo0(Z)V

    const/4 v2, 0x0

    const/4 v14, 0x0

    goto :goto_15

    :cond_1b
    const/4 v1, 0x1

    goto :goto_14

    :cond_1c
    const/4 v1, 0x1

    if-eqz v4, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget-object v9, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v9}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v9

    sub-int/2addr v2, v9

    goto :goto_12

    :cond_1d
    iget-object v2, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v2

    :goto_12
    if-le v8, v2, :cond_1f

    if-eqz v4, :cond_1e

    const/4 v2, 0x0

    goto :goto_13

    :cond_1e
    iget-object v2, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v2

    iget-object v4, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v4}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v4

    add-int/2addr v2, v4

    sub-int/2addr v2, v3

    :goto_13
    add-int/2addr v11, v2

    iget-object v2, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v2

    iget-object v4, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v4}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v4

    add-int v14, v2, v4

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lz2/te0;->OooOo0(Z)V

    goto :goto_15

    :cond_1f
    :goto_14
    const/4 v2, 0x0

    :goto_15
    move/from16 v4, v17

    goto :goto_16

    :cond_20
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v17

    move/from16 v4, v17

    const/4 v14, 0x0

    :goto_16
    add-int/2addr v5, v10

    add-int/2addr v3, v11

    iget-object v9, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v9}, Lrazerdp/basepopup/BasePopupHelper;->o00ooo()Z

    move-result v9

    if-eqz v9, :cond_21

    const/4 v9, 0x0

    goto :goto_17

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lz2/mf0;->OooOO0(Landroid/content/Context;)I

    move-result v9

    neg-int v9, v9

    :goto_17
    add-int/2addr v3, v9

    add-int v9, v5, v7

    add-int v10, v3, v8

    if-ltz v5, :cond_23

    if-ltz v3, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v11

    if-gt v9, v11, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v11

    if-le v10, v11, :cond_22

    goto :goto_18

    :cond_22
    const/4 v1, 0x0

    :cond_23
    :goto_18
    iget-object v11, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v11}, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo()Z

    move-result v11

    if-eqz v11, :cond_2b

    if-eqz v1, :cond_2b

    if-gez v5, :cond_25

    rsub-int/lit8 v1, v5, 0x0

    sub-int v11, v13, v9

    if-gt v1, v11, :cond_24

    add-int/2addr v5, v1

    add-int v9, v5, v7

    goto :goto_19

    :cond_24
    const/4 v5, 0x0

    :cond_25
    :goto_19
    if-le v9, v13, :cond_26

    sub-int/2addr v9, v13

    if-gt v9, v5, :cond_27

    sub-int/2addr v5, v9

    add-int v13, v5, v7

    goto :goto_1a

    :cond_26
    move v13, v9

    :cond_27
    :goto_1a
    if-ge v3, v14, :cond_29

    sub-int v1, v14, v3

    sub-int v7, v4, v10

    if-gt v1, v7, :cond_28

    add-int/2addr v3, v1

    add-int v10, v3, v8

    goto :goto_1b

    :cond_28
    move v3, v14

    :cond_29
    :goto_1b
    if-le v10, v4, :cond_2c

    sub-int/2addr v10, v4

    if-nez v14, :cond_2a

    sub-int/2addr v3, v10

    :cond_2a
    add-int v10, v3, v8

    goto :goto_1c

    :cond_2b
    move v13, v9

    :cond_2c
    :goto_1c
    invoke-virtual {v6, v5, v3, v13, v10}, Landroid/view/View;->layout(IIII)V

    if-eqz v12, :cond_2d

    iget-object v1, v0, Lz2/te0;->OoooOoO:Lz2/ve0;

    iget-object v4, v0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v4}, Lrazerdp/basepopup/BasePopupHelper;->OooOo00()I

    move-result v20

    move-object/from16 v19, v1

    move/from16 v21, v5

    move/from16 v22, v3

    move/from16 v23, v13

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Lz2/ve0;->OooO0OO(IIIII)V

    :cond_2d
    :goto_1d
    add-int/lit8 v5, v18, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_2e
    return-void
.end method

.method private OooOOo(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_0
    if-le v2, v3, :cond_1

    :goto_0
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "measureWithIntercept"

    invoke-static {v1, v0}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lz2/te0;->OooOOO0()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lz2/te0;->OooOo00(Landroid/view/View;II)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lz2/te0;->OooOOO0()I

    move-result p1

    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method private OooOOo0(IIII)V
    .locals 8

    iget-object v0, p0, Lz2/te0;->Ooooooo:Lz2/te0$OooO;

    iget v0, v0, Lz2/te0$OooO;->OooO00o:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/te0;->OoooooO:Lz2/df0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lz2/df0;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget-object v3, p0, Lz2/te0;->Ooooo00:Landroid/view/View;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OoooooO()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOo00()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr p1, v3

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr p2, v2

    add-int/2addr p3, v3

    add-int/2addr p4, v2

    :cond_1
    iget-object v2, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOo00()I

    move-result v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lz2/ve0;->OooO0OO(IIIII)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private OooOOoo(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lz2/te0;->Ooooo00:Landroid/view/View;

    if-ne v5, v6, :cond_0

    invoke-direct {p0, v6, p1, p2}, Lz2/te0;->OooOo00(Landroid/view/View;II)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v5, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v3, v5}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2, p1, v3}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v3, 0x10

    invoke-static {v4, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method private OooOo0(Z)V
    .locals 2

    iget-object v0, p0, Lz2/te0;->Oooooo:Lz2/te0$OooO0o;

    if-nez v0, :cond_0

    new-instance v0, Lz2/te0$OooO0o;

    invoke-direct {v0, p0, p1}, Lz2/te0$OooO0o;-><init>(Lz2/te0;Z)V

    iput-object v0, p0, Lz2/te0;->Oooooo:Lz2/te0$OooO0o;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lz2/te0;->OooOo0O()V

    :goto_0
    iget-object v0, p0, Lz2/te0;->Oooooo:Lz2/te0$OooO0o;

    invoke-static {v0, p1}, Lz2/te0$OooO0o;->OooO00o(Lz2/te0$OooO0o;Z)Z

    iget-object p1, p0, Lz2/te0;->Oooooo:Lz2/te0$OooO0o;

    const-wide/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private OooOo00(Landroid/view/View;II)V
    .locals 8

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0O()I

    move-result v3

    iget-object v4, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v4}, Lrazerdp/basepopup/BasePopupHelper;->Oooo00o()Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    move-result-object v4

    sget-object v5, Lrazerdp/basepopup/BasePopupWindow$GravityMode;->ALIGN_TO_ANCHOR_SIDE:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0o0()I

    move-result v5

    invoke-static {v0, v5, v0}, Lz2/nf0;->OooO0o(III)I

    move-result v5

    if-le v0, v5, :cond_3

    iget-object v7, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v7}, Lrazerdp/basepopup/BasePopupHelper;->oo000o()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v0, p0, Lz2/te0;->Ooooooo:Lz2/te0$OooO;

    iget v7, v0, Lz2/te0$OooO;->OooO00o:I

    or-int/2addr v6, v7

    iput v6, v0, Lz2/te0$OooO;->OooO00o:I

    move v0, v5

    :cond_3
    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0o0()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0o0()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0o0()I

    move-result v0

    :cond_4
    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0O0()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0O0()I

    move-result v5

    if-le v0, v5, :cond_5

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0O0()I

    move-result v0

    :cond_5
    if-eqz v2, :cond_10

    and-int/lit8 v2, v3, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_9

    if-eqz v4, :cond_6

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v2

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result v2

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v3

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    :goto_1
    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->o0OoOo0()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0OO()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0OO()I

    move-result v3

    if-lt v2, v3, :cond_8

    :cond_7
    shr-int/lit8 v3, v1, 0x2

    if-gt v2, v3, :cond_e

    :cond_8
    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v2

    if-eqz v4, :cond_e

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result v2

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v2

    :goto_2
    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->o0OoOo0()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0OO()I

    move-result v3

    if-lez v3, :cond_b

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0OO()I

    move-result v3

    if-lt v2, v3, :cond_c

    :cond_b
    shr-int/lit8 v3, v1, 0x2

    if-gt v2, v3, :cond_e

    :cond_c
    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result v2

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v3

    if-eqz v4, :cond_d

    goto :goto_3

    :cond_d
    iget-object v4, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v4}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v4

    add-int/2addr v3, v4

    :goto_3
    sub-int/2addr v2, v3

    :cond_e
    :goto_4
    iget v3, p0, Lz2/te0;->OooooOO:I

    sub-int/2addr v2, v3

    iget v3, p0, Lz2/te0;->Oooooo0:I

    sub-int/2addr v2, v3

    if-gtz v2, :cond_f

    const-string v2, "PopupDecorViewProxy"

    const-string v3, "BasePopup \u53ef\u7528\u5c55\u793a\u7a7a\u95f4\u5c0f\u4e8e\u6216\u7b49\u4e8e0\uff0c\u9ad8\u5ea6\u5c06\u6309\u539f\u6d4b\u91cf\u503c\u8bbe\u5b9a\uff0c\u4e0d\u8fdb\u884c\u8c03\u6574\u9002\u914d"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lz2/te0;->Ooooooo:Lz2/te0$OooO;

    iget v3, v2, Lz2/te0$OooO;->OooO00o:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lz2/te0$OooO;->OooO00o:I

    move v2, v1

    goto :goto_5

    :cond_f
    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0OO()I

    move-result v3

    invoke-static {v2, v3, v2}, Lz2/nf0;->OooO0o(III)I

    move-result v2

    :goto_5
    if-le v1, v2, :cond_10

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->oo000o()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v1, p0, Lz2/te0;->Ooooooo:Lz2/te0$OooO;

    iget v3, v1, Lz2/te0$OooO;->OooO00o:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lz2/te0$OooO;->OooO00o:I

    move v1, v2

    :cond_10
    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0OO()I

    move-result v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0OO()I

    move-result v2

    if-ge v1, v2, :cond_11

    iget-object v1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0OO()I

    move-result v1

    :cond_11
    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0()I

    move-result v2

    if-lez v2, :cond_12

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0()I

    move-result v2

    if-le v1, v2, :cond_12

    iget-object v1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0()I

    move-result v1

    :cond_12
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_13
    :goto_6
    return-void
.end method

.method private OooOo0O()V
    .locals 1

    iget-object v0, p0, Lz2/te0;->Oooooo:Lz2/te0$OooO0o;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o(IIZZ)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/mf0;->OooO0oo(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Ooooo0o()I

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Ooooo0o()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_e

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v2, p0, Lz2/te0;->o00Ooo:Z

    if-ne v2, p3, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-object v2, p0, Lz2/te0;->o0OoOo0:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    instance-of v2, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lz2/te0;->Ooooo00:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-nez p4, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lz2/mf0;->OooOO0(Landroid/content/Context;)I

    move-result p4

    sub-int/2addr v2, p4

    :cond_5
    const/4 p4, 0x1

    if-eqz p3, :cond_8

    if-lez p1, :cond_8

    iget-object v4, p0, Lz2/te0;->Ooooo00:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, p1

    if-lez v4, :cond_6

    iget-object v5, p0, Lz2/te0;->o0OoOo0:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    if-lt v5, v4, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_7

    :goto_2
    iput v4, p0, Lz2/te0;->ooOO:I

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lz2/te0;->o0OoOo0:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, p1, :cond_9

    sub-int/2addr v4, p1

    goto :goto_2

    :cond_8
    iput v3, p0, Lz2/te0;->ooOO:I

    :cond_9
    :goto_3
    iget-object p1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->Oooo00O()Lz2/if0;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->Oooo00O()Lz2/if0;

    move-result-object p1

    iget v4, p0, Lz2/te0;->ooOO:I

    invoke-interface {p1, p2, p3, v4}, Lz2/if0;->OooO0O0(IZI)I

    move-result p1

    if-eqz p1, :cond_a

    iput p1, p0, Lz2/te0;->ooOO:I

    :cond_a
    iget-object p1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result p1

    const-wide/16 v4, 0x12c

    if-eqz p1, :cond_d

    iget-object p1, p0, Lz2/te0;->o00Oo0:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    new-array p1, v1, [I

    aput v2, p1, v3

    if-eqz p3, :cond_c

    iget p2, p0, Lz2/te0;->ooOO:I

    sub-int/2addr v2, p2

    goto :goto_4

    :cond_c
    iget v2, p0, Lz2/te0;->o00O0O:I

    :goto_4
    aput v2, p1, p4

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lz2/te0;->o00Oo0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lz2/te0;->o00Oo0:Landroid/animation/ValueAnimator;

    new-instance p2, Lz2/te0$OooO0OO;

    invoke-direct {p2, p0, v0}, Lz2/te0$OooO0OO;-><init>(Lz2/te0;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lz2/te0;->o00Oo0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_d
    iget-object p1, p0, Lz2/te0;->Ooooo00:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lz2/te0;->Ooooo00:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lz2/te0;->ooOO:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p4

    iget p2, p0, Lz2/te0;->ooOO:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "onKeyboardChange"

    invoke-static {p2, p1}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    iput-boolean p3, p0, Lz2/te0;->o00Ooo:Z

    :cond_e
    :goto_6
    return-void
.end method

.method public OooO0oO(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    const-string v0, "contentView\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    :cond_0
    iput-object p1, p0, Lz2/te0;->Ooooo00:Landroid/view/View;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v0, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 p2, 0x0

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-direct {p0, p1}, Lz2/te0;->OooOO0(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object v1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->o00o0O()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gtz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OoooOO0()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gtz v1, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooOO0()I

    move-result p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    iget-object p2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO()I

    move-result p2

    :goto_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3

    :cond_5
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object p2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooOO0()I

    move-result p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO()I

    move-result p2

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, p0, Lz2/te0;->OooooO0:I

    iget-object p2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, p0, Lz2/te0;->OooooOO:I

    iget-object p2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p2, p0, Lz2/te0;->OooooOo:I

    iget-object p2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p2, p0, Lz2/te0;->Oooooo0:I

    :cond_7
    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public OooOO0O(Landroid/view/WindowManager$LayoutParams;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_11

    :cond_0
    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0O()I

    move-result v0

    iget-object v1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->Oooo00o()Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    move-result-object v1

    sget-object v2, Lrazerdp/basepopup/BasePopupWindow$GravityMode;->ALIGN_TO_ANCHOR_SIDE:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0O()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    if-eq v2, v3, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_6

    const/4 v5, 0x5

    if-eq v2, v5, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v2

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0o()I

    move-result v5

    add-int/2addr v2, v5

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lz2/te0;->OooOOO0()I

    move-result v2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v2, v5

    :cond_5
    :goto_2
    add-int/2addr v2, v4

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v2

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_7
    :goto_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v2}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v2

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0o()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    shr-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lz2/te0;->OooOOO0()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v2, v5

    shr-int/2addr v2, v3

    goto :goto_2

    :goto_4
    iget v5, p0, Lz2/te0;->OooooO0:I

    add-int/2addr v2, v5

    iget v5, p0, Lz2/te0;->OooooOo:I

    sub-int/2addr v2, v5

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0O()I

    move-result v5

    and-int/lit8 v5, v5, 0x70

    const/16 v6, 0x10

    const/16 v7, 0x30

    if-eq v5, v6, :cond_10

    if-eq v5, v7, :cond_c

    const/16 v6, 0x50

    if-eq v5, v6, :cond_a

    goto :goto_8

    :cond_a
    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v5

    iget-object v6, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v6}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v6

    add-int/2addr v5, v6

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_5
    add-int/2addr v5, v4

    goto :goto_9

    :cond_c
    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v5

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    :goto_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    :cond_e
    :goto_7
    add-int/2addr v5, v4

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v5, 0x0

    goto :goto_9

    :cond_10
    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v5}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v5

    iget-object v6, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v6}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v6, v8

    shr-int/2addr v6, v3

    add-int/2addr v5, v6

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    shr-int/2addr v5, v3

    goto :goto_5

    :goto_9
    iget v6, p0, Lz2/te0;->OooooOO:I

    add-int/2addr v5, v6

    iget v6, p0, Lz2/te0;->Oooooo0:I

    sub-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fitWindowParams  ::  {\n\t\tscreenWidth = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/te0;->OooOOO0()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n\t\tscreenHeight = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n\t\tanchorX = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v8}, Lrazerdp/basepopup/BasePopupHelper;->OooOo()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n\t\tanchorY = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v8}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n\t\tviewWidth = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n\t\tviewHeight = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n\t\toffsetX = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n\t\toffsetY = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\n}"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lrazerdp/util/log/PopupLog;->OooO0oo(Ljava/lang/Object;)V

    iget-object v6, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v6}, Lrazerdp/basepopup/BasePopupHelper;->o0OoOo0()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v6}, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v6}, Lrazerdp/basepopup/BasePopupHelper;->o00ooo()Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    goto :goto_a

    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lz2/mf0;->OooOO0(Landroid/content/Context;)I

    move-result v6

    neg-int v6, v6

    :goto_a
    add-int/2addr v6, v5

    and-int/lit8 v0, v0, 0x70

    if-eq v0, v7, :cond_15

    if-eqz v1, :cond_13

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v0

    iget-object v7, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v7}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v7

    add-int/2addr v0, v7

    goto :goto_b

    :cond_13
    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result v0

    iget-object v7, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v7}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v7

    iget-object v8, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v8}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v0, v7

    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    if-le v7, v0, :cond_18

    if-eqz v1, :cond_14

    goto :goto_c

    :cond_14
    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v0

    sub-int v4, v6, v0

    :goto_c
    sub-int/2addr v5, v4

    invoke-direct {p0, v3}, Lz2/te0;->OooOo0(Z)V

    goto :goto_f

    :cond_15
    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lz2/te0;->OooOO0o()I

    move-result v0

    iget-object v3, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v3}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_d

    :cond_16
    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v0

    :goto_d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    if-le v3, v0, :cond_18

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    goto :goto_e

    :cond_17
    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO0()I

    move-result v0

    iget-object v1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0OO()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v5

    :goto_e
    add-int/2addr v5, v0

    invoke-direct {p0, v4}, Lz2/te0;->OooOo0(Z)V

    :cond_18
    :goto_f
    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0o()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo0oO()I

    move-result v0

    add-int/2addr v5, v0

    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v5, p0, Lz2/te0;->o00O0O:I

    iget-object p1, p0, Lz2/te0;->Ooooooo:Lz2/te0$OooO;

    iget v0, p1, Lz2/te0$OooO;->OooO00o:I

    and-int/lit16 v0, v0, -0x101

    :goto_10
    iput v0, p1, Lz2/te0$OooO;->OooO00o:I

    return-void

    :cond_19
    :goto_11
    iget-object p1, p0, Lz2/te0;->Ooooooo:Lz2/te0$OooO;

    iget v0, p1, Lz2/te0$OooO;->OooO00o:I

    or-int/lit16 v0, v0, 0x100

    goto :goto_10
.end method

.method public OooOO0o()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/mf0;->OooO0oO(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoSize  height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lrazerdp/util/log/PopupLog;->OooO0oo(Ljava/lang/Object;)V

    return v0
.end method

.method public OooOOO0()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lz2/mf0;->OooO(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoSize  width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lrazerdp/util/log/PopupLog;->OooO0oo(Ljava/lang/Object;)V

    return v0
.end method

.method public OooOo0o()V
    .locals 1

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OooO0Oo()Z

    :cond_0
    iget-object v0, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz2/ve0;->OooO0oO()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooO0oo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_3
    return v2

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_5

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "dispatchKeyEvent: >>> onBackPressed"

    aput-object v0, p1, v1

    const-string v0, "PopupDecorViewProxy"

    invoke-static {v0, p1}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOO0O()Z

    move-result p1

    return p1

    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    if-eqz v0, :cond_0

    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lz2/ve0;->OooO0o0(J)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    new-instance v0, Lz2/te0$OooO0O0;

    invoke-direct {v0, p0}, Lz2/te0$OooO0O0;-><init>(Lz2/te0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lz2/te0;->OoooOoO:Lz2/ve0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrazerdp/basepopup/BasePopupHelper;->oo0o0Oo(Lz2/ue0;)Lrazerdp/basepopup/BasePopupHelper;

    iget-object v0, p0, Lz2/te0;->Oooooo:Lz2/te0$OooO0o;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lz2/te0;->Oooooo:Lz2/te0$OooO0o;

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOO0(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const-string p1, "onLayout"

    invoke-static {p1, v0}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Lz2/te0;->OooOOOo(IIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Lz2/te0;->OooOOo0(IIII)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lz2/te0;->Ooooooo:Lz2/te0$OooO;

    iget v1, v0, Lz2/te0$OooO;->OooO00o:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lz2/te0$OooO;->OooO00o:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Lz2/te0$OooO;->OooO00o:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "onMeasure"

    invoke-static {v1, v0}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lz2/te0;->OooOOo(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lz2/te0;->OooOOoo(II)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "PopupDecorViewProxy"

    if-nez v3, :cond_2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    if-ge v0, v3, :cond_1

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lt v2, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "onTouchEvent:[ACTION_DOWN] >>> onOutSideTouch"

    aput-object v0, p1, v4

    invoke-static {v5, p1}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p1}, Lrazerdp/basepopup/BasePopupHelper;->OooO()Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lz2/te0;->OoooOoo:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "onTouchEvent:[ACTION_OUTSIDE] >>> onOutSideTouch"

    aput-object v0, p1, v4

    invoke-static {v5, p1}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
