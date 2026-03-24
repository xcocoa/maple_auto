.class public Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;
.super Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;
.source ""


# instance fields
.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    const-string v0, "myoffer_scale_second"

    const-string v1, "layout"

    invoke-static {p1, v0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "iv_left"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->f:Landroid/widget/ImageView;

    const-string v1, "iv_right_top"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->g:Landroid/widget/ImageView;

    const-string v1, "iv_right_bottom"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->h:Landroid/widget/ImageView;

    return-void
.end method

.method public setBitmapResources(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public start()V
    .locals 14

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->f:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->f:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    neg-float v5, v5

    const/4 v6, 0x1

    aput v5, v2, v6

    const-string v5, "translationX"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->f:Landroid/widget/ImageView;

    new-array v7, v1, [F

    aput v4, v7, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    neg-double v8, v8

    double-to-float v8, v8

    aput v8, v7, v6

    const-string v8, "translationY"

    invoke-static {v2, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v7, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->g:Landroid/widget/ImageView;

    new-array v9, v1, [F

    aput v4, v9, v3

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->a()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->g:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    aput v10, v9, v6

    invoke-static {v7, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v9, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->g:Landroid/widget/ImageView;

    new-array v10, v1, [F

    aput v4, v10, v3

    invoke-virtual {v9}, Landroid/widget/ImageView;->getY()F

    move-result v11

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    neg-double v11, v11

    double-to-float v11, v11

    aput v11, v10, v6

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->h:Landroid/widget/ImageView;

    new-array v11, v1, [F

    aput v4, v11, v3

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->a()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->h:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getX()F

    move-result v13

    sub-float/2addr v12, v13

    aput v12, v11, v6

    invoke-static {v10, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v10, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->h:Landroid/widget/ImageView;

    new-array v11, v1, [F

    aput v4, v11, v3

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b()I

    move-result v4

    int-to-float v4, v4

    iget-object v12, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView02;->h:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getY()F

    move-result v12

    sub-float/2addr v4, v12

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v4, v12

    aput v4, v11, v6

    invoke-static {v10, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v8, v1, [F

    fill-array-data v8, :array_0

    const-string v10, "scaleX"

    invoke-static {p0, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v10, v1, [F

    fill-array-data v10, :array_1

    const-string v11, "scaleY"

    invoke-static {p0, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v11, p0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    const-wide/16 v12, 0x7d0

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v11, p0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    new-instance v12, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v11, p0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    const/16 v12, 0x8

    new-array v12, v12, [Landroid/animation/Animator;

    aput-object v0, v12, v3

    aput-object v2, v12, v6

    aput-object v7, v12, v1

    const/4 v0, 0x3

    aput-object v9, v12, v0

    const/4 v0, 0x4

    aput-object v4, v12, v0

    const/4 v0, 0x5

    aput-object v5, v12, v0

    const/4 v0, 0x6

    aput-object v8, v12, v0

    const/4 v0, 0x7

    aput-object v10, v12, v0

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-wide v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
    .end array-data
.end method
