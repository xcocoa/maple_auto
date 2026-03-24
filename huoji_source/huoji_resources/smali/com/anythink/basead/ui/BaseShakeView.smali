.class public abstract Lcom/anythink/basead/ui/BaseShakeView;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/ui/BaseShakeView$a;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/animation/ValueAnimator;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Landroid/graphics/Bitmap;

.field public j:Lcom/anythink/basead/c/h;

.field private k:I

.field private l:Lcom/anythink/basead/ui/BaseShakeView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->k:I

    new-instance p1, Lcom/anythink/basead/ui/BaseShakeView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseShakeView$1;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->j:Lcom/anythink/basead/c/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseShakeView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->k:I

    new-instance p1, Lcom/anythink/basead/ui/BaseShakeView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseShakeView$1;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->j:Lcom/anythink/basead/c/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseShakeView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->k:I

    new-instance p1, Lcom/anythink/basead/ui/BaseShakeView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseShakeView$1;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->j:Lcom/anythink/basead/c/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseShakeView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->k:I

    new-instance p1, Lcom/anythink/basead/ui/BaseShakeView$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/BaseShakeView$1;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->j:Lcom/anythink/basead/c/h;

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseShakeView;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/BaseShakeView;)Lcom/anythink/basead/ui/BaseShakeView$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/BaseShakeView;->l:Lcom/anythink/basead/ui/BaseShakeView$a;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/BaseShakeView;)I
    .locals 2

    iget v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/anythink/basead/ui/BaseShakeView;->k:I

    return v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->d:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseShakeView;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/BaseShakeView;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/ui/BaseShakeView;->k:I

    return p0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/BaseShakeView$6;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseShakeView$6;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lcom/anythink/basead/ui/BaseShakeView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/basead/ui/BaseShakeView;->c()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/animation/ValueAnimator;
    .locals 9

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$14;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$14;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$2;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$3;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$3;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/ui/BaseShakeView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseShakeView$4;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    goto :goto_0

    :cond_0
    new-array p1, v3, [F

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$10;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$10;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$11;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$11;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$12;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$12;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/basead/ui/BaseShakeView$13;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseShakeView$13;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    const/16 v4, 0xa

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float v7, p1

    aput v7, v4, v5

    neg-int v5, p1

    int-to-float v8, v5

    aput v8, v4, v3

    aput v7, v4, v1

    const/4 v1, 0x4

    aput v8, v4, v1

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    aput v3, v4, v0

    const/4 v0, 0x6

    div-int/lit8 v3, v5, 0x2

    int-to-float v3, v3

    aput v3, v4, v0

    const/4 v0, 0x7

    div-int/2addr p1, v1

    int-to-float p1, p1

    aput p1, v4, v0

    const/16 p1, 0x8

    div-int/2addr v5, v1

    int-to-float v0, v5

    aput v0, v4, p1

    const/16 p1, 0x9

    aput v6, v4, p1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$7;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$7;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$8;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$8;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$9;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$9;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_1
    return-object p1

    :array_0
    .array-data 4
        0x0
        -0x3e380000    # -25.0f
        0x0
        0x41c80000    # 25.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x3ee00000    # -10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public abstract a()V
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->d:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/BaseShakeView;->a(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseShakeView;->j:Lcom/anythink/basead/c/h;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/a;->a(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseShakeView;->j:Lcom/anythink/basead/c/h;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/shake/a;->b(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public setOnShakeListener(Lcom/anythink/basead/ui/BaseShakeView$a;Lcom/anythink/core/common/f/n;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->j:Lcom/anythink/basead/c/h;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->R()I

    move-result v1

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->S()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/c/h;->a(IJ)V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->l:Lcom/anythink/basead/ui/BaseShakeView$a;

    return-void
.end method

.method public setShakeSetting(Lcom/anythink/core/common/f/n;)V
    .locals 3

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->a()I

    move-result v0

    iput v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->d:I

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseShakeView;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->e()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseShakeView;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/BaseShakeView$5;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/BaseShakeView$5;-><init>(Lcom/anythink/basead/ui/BaseShakeView;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/BaseShakeView;->c()V

    return-void
.end method
