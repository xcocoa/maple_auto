.class public final Lcom/anythink/expressad/video/dynview/j/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "anythink_top_play_bg"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->a:Ljava/lang/String;

    const-string v0, "anythink_top_finger_bg"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->b:Ljava/lang/String;

    const-string v0, "anythink_bottom_play_bg"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->c:Ljava/lang/String;

    const-string v0, "anythink_bottom_finger_bg"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->d:Ljava/lang/String;

    const-string v0, "anythink_tv_count"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->e:Ljava/lang/String;

    const-string v0, "anythink_sound_switch"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->f:Ljava/lang/String;

    const-string v0, "anythink_top_control"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->g:Ljava/lang/String;

    const-string v0, "anythink_tv_title"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->h:Ljava/lang/String;

    const-string v0, "anythink_tv_desc"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->i:Ljava/lang/String;

    const-string v0, "anythink_tv_install"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->j:Ljava/lang/String;

    const-string v0, "anythink_sv_starlevel"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->k:Ljava/lang/String;

    const-string v0, "anythink_sv_heat_count_level"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->l:Ljava/lang/String;

    const-string v0, "anythink_tv_cta"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->m:Ljava/lang/String;

    const-string v0, "anythink_native_ec_controller"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->n:Ljava/lang/String;

    const-string v0, "anythink_reward_shape_choice_rl"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->o:Ljava/lang/String;

    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->p:Ljava/lang/String;

    const-string v0, "#FF000000"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->q:Ljava/lang/String;

    const-string v0, "#40000000"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->r:Ljava/lang/String;

    const-string v0, "#CAEF79"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->s:Ljava/lang/String;

    const-string v0, "#2196F3"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->t:Ljava/lang/String;

    const-string v0, "#402196F3"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->u:Ljava/lang/String;

    const-string v0, "#8FC31F"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->v:Ljava/lang/String;

    const-string v0, "#03A9F4"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->w:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->x:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p0, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a()V
    .locals 0

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;Lcom/anythink/expressad/video/dynview/c;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/video/widget/SoundImageView;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p1, v0}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result p1

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/anythink/expressad/video/dynview/c;->e()I

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private b(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    sget v0, Lcom/anythink/expressad/video/dynview/a/b;->a:I

    if-nez v0, :cond_0

    sget v0, Lcom/anythink/expressad/video/dynview/a/b;->b:I

    if-nez v0, :cond_0

    sget v0, Lcom/anythink/expressad/video/dynview/a/b;->c:I

    if-nez v0, :cond_0

    sget v0, Lcom/anythink/expressad/video/dynview/a/b;->d:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private d(Landroid/view/View;Lcom/anythink/expressad/video/dynview/c;)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->e()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v0, :cond_0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sget v1, Lcom/anythink/expressad/video/dynview/a/b;->a:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget v2, Lcom/anythink/expressad/video/dynview/a/b;->b:I

    add-int/2addr v1, v2

    iget v2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v3, Lcom/anythink/expressad/video/dynview/a/b;->c:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sget v4, Lcom/anythink/expressad/video/dynview/a/b;->d:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v1, Lcom/anythink/expressad/video/dynview/a/b;->a:I

    add-int/2addr v0, v1

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v2, Lcom/anythink/expressad/video/dynview/a/b;->b:I

    add-int/2addr v1, v2

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v3, Lcom/anythink/expressad/video/dynview/a/b;->c:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sget v4, Lcom/anythink/expressad/video/dynview/a/b;->d:I

    add-int/2addr v3, v4

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkFramLayout;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkFramLayout;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/anythink/expressad/video/dynview/j/b;->x:Z

    iget-object v3, p0, Lcom/anythink/expressad/video/dynview/j/b;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/anythink/expressad/video/dynview/j/b;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/anythink/expressad/video/dynview/j/b;->c:Ljava/lang/String;

    invoke-static {v5}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/anythink/expressad/video/dynview/j/b;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    new-instance v7, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v7}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    invoke-static {v3}, Lcom/anythink/expressad/video/dynview/h/b;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v6

    :goto_0
    if-eqz v4, :cond_1

    new-instance v7, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v7}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    invoke-static {v4}, Lcom/anythink/expressad/video/dynview/h/b;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v6

    :goto_1
    if-eqz v5, :cond_2

    new-instance v7, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v7}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    invoke-static {v5}, Lcom/anythink/expressad/video/dynview/h/b;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    if-eqz p1, :cond_3

    new-instance v6, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v6}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/h/b;->b(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v3, p1, v2

    const/4 v2, 0x1

    aput-object v5, p1, v2

    const/4 v2, 0x2

    aput-object v4, p1, v2

    const/4 v2, 0x3

    aput-object v6, p1, v2

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkFramLayout;->setAnimatorSet(Landroid/animation/AnimatorSet;)V

    :cond_4
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/anythink/expressad/video/dynview/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/anythink/expressad/video/dynview/c;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anythink/expressad/video/dynview/j/b;->x:Z

    iget-object v2, p0, Lcom/anythink/expressad/video/dynview/j/b;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "anythink_reward_click_tv"

    invoke-static {v3}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    const-string v3, "anythink_reward_shape_progress"

    const-string v5, "drawable"

    invoke-static {v0, v3, v5}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    if-eqz v4, :cond_3

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    instance-of v0, v4, Lcom/anythink/expressad/video/dynview/widget/AnyThinkTextView;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    invoke-static {v4}, Lcom/anythink/expressad/video/dynview/h/b;->c(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object v2, v4

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkTextView;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkTextView;->setObjectAnimator(Landroid/animation/ObjectAnimator;)V

    :cond_3
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/dynview/j/b;->s:Ljava/lang/String;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->i()I

    move-result v6

    const/16 v7, 0x12e

    if-eq v6, v7, :cond_5

    const/16 v7, 0x322

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/anythink/expressad/video/dynview/j/b;->v:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/expressad/video/dynview/j/b;->s:Ljava/lang/String;

    move-object v3, v2

    const/high16 v2, 0x40a00000    # 5.0f

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/anythink/expressad/video/dynview/j/b;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/dynview/j/b;->r:Ljava/lang/String;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v5, 0x41c80000    # 25.0f

    move-object v3, v2

    move-object v7, v6

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/anythink/expressad/video/dynview/j/b;->t:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/expressad/video/dynview/j/b;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/video/dynview/j/b;->u:Ljava/lang/String;

    const/high16 v5, 0x41200000    # 10.0f

    move-object v3, v2

    const/high16 v2, 0x41200000    # 10.0f

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    aput-object v6, v8, v1

    const/4 v0, 0x1

    aput-object v7, v8, v0

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move v6, v2

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lcom/anythink/expressad/video/dynview/i/b/a;->a(Landroid/view/View;FFLjava/lang/String;[Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_6
    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->f()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/b;->g:Ljava/lang/String;

    invoke-static {p2}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_9

    sget p2, Lcom/anythink/expressad/video/dynview/a/b;->a:I

    if-nez p2, :cond_8

    sget p2, Lcom/anythink/expressad/video/dynview/a/b;->b:I

    if-nez p2, :cond_8

    sget p2, Lcom/anythink/expressad/video/dynview/a/b;->c:I

    if-nez p2, :cond_8

    sget p2, Lcom/anythink/expressad/video/dynview/a/b;->d:I

    if-eqz p2, :cond_9

    :cond_8
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {p2, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p2, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final b(Landroid/view/View;Lcom/anythink/expressad/video/dynview/c;)V
    .locals 11

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/j/b;->o:Ljava/lang/String;

    const-string v3, "drawable"

    invoke-static {v0, v1, v3}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/j/b;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/anythink/expressad/video/dynview/j/b;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/j/b;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/anythink/expressad/video/dynview/j/b;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_0
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v0, v3}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/anythink/expressad/video/dynview/j/b;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->f()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->f()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    if-eqz v5, :cond_3

    new-instance v5, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v5}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    invoke-static {v4}, Lcom/anythink/expressad/video/dynview/h/b;->c(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->f()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;

    invoke-virtual {p2, v5}, Lcom/anythink/expressad/video/module/AnythinkClickCTAView;->setObjectAnimator(Landroid/animation/ObjectAnimator;)V

    :cond_3
    instance-of p2, v4, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    move-object v5, v4

    check-cast v5, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/b;->p:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x2

    new-array v9, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    iget-object v4, p0, Lcom/anythink/expressad/video/dynview/j/b;->v:Ljava/lang/String;

    aput-object v4, v9, p2

    iget-object v8, p0, Lcom/anythink/expressad/video/dynview/j/b;->s:Ljava/lang/String;

    aput-object v8, v9, v2

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40a00000    # 5.0f

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static/range {v5 .. v10}, Lcom/anythink/expressad/video/dynview/i/b/a;->a(Landroid/view/View;FFLjava/lang/String;[Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v1, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public final c(Landroid/view/View;Lcom/anythink/expressad/video/dynview/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/anythink/expressad/video/dynview/c;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/dynview/j/b;->x:Z

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/j/b;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/anythink/expressad/video/dynview/j/b;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->e()I

    move-result v3

    if-ne v3, v9, :cond_0

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/j/b;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/j/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/anythink/expressad/video/dynview/c;->e()I

    move-result p2

    const/4 v3, -0x1

    if-ne p2, v9, :cond_2

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v3, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sget v4, Lcom/anythink/expressad/video/dynview/a/b;->a:I

    add-int/2addr v3, v4

    iget v4, p2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget v5, Lcom/anythink/expressad/video/dynview/a/b;->b:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v6, Lcom/anythink/expressad/video/dynview/a/b;->c:I

    add-int/2addr v5, v6

    iget v6, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sget v7, Lcom/anythink/expressad/video/dynview/a/b;->d:I

    add-int/2addr v6, v7

    invoke-virtual {p2, v3, v5, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_2
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sget v4, Lcom/anythink/expressad/video/dynview/a/b;->a:I

    add-int/2addr v3, v4

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v5, Lcom/anythink/expressad/video/dynview/a/b;->b:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v6, Lcom/anythink/expressad/video/dynview/a/b;->c:I

    add-int/2addr v5, v6

    iget v6, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sget v7, Lcom/anythink/expressad/video/dynview/a/b;->d:I

    add-int/2addr v6, v7

    invoke-virtual {p2, v3, v5, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz v2, :cond_6

    instance-of p2, v2, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    move-object p2, v2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/j/b;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p2, 0x2

    new-array v7, p2, [Ljava/lang/String;

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/b;->v:Ljava/lang/String;

    aput-object p2, v7, v0

    iget-object v6, p0, Lcom/anythink/expressad/video/dynview/j/b;->s:Ljava/lang/String;

    aput-object v6, v7, v9

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40a00000    # 5.0f

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/anythink/expressad/video/dynview/i/b/a;->a(Landroid/view/View;FFLjava/lang/String;[Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    :cond_4
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v1}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/h/b;->c(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v9, [Landroid/animation/Animator;

    aput-object v1, v2, v0

    invoke-virtual {p2, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    instance-of v0, p1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkFramLayout;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkFramLayout;

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkFramLayout;->setAnimatorSet(Landroid/animation/AnimatorSet;)V

    :cond_5
    instance-of v0, p1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkRelativeLayout;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkRelativeLayout;->setAnimatorSet(Landroid/animation/AnimatorSet;)V

    :cond_6
    new-instance p2, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {p2}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/h/b;->e(Landroid/view/View;)V

    :cond_7
    return-void
.end method
