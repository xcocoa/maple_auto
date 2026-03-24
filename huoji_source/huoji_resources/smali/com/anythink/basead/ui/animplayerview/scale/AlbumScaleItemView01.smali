.class public Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;
.super Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;
.source ""


# instance fields
.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const-string v0, "myoffer_scale_first"

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

    const-string v1, "iv_left_top"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->f:Landroid/widget/ImageView;

    const-string v1, "iv_left_bottom"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->g:Landroid/widget/ImageView;

    const-string v1, "iv_right_top"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->h:Landroid/widget/ImageView;

    const-string v1, "iv_right_bottom"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->i:Landroid/widget/ImageView;

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

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public start()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->f:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v6

    neg-float v6, v6

    const/4 v7, 0x1

    aput v6, v3, v7

    const-string v6, "translationX"

    invoke-static {v1, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->f:Landroid/widget/ImageView;

    new-array v8, v2, [F

    aput v5, v8, v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    neg-double v9, v9

    double-to-float v9, v9

    aput v9, v8, v7

    const-string v9, "translationY"

    invoke-static {v3, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v8, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->g:Landroid/widget/ImageView;

    new-array v10, v2, [F

    aput v5, v10, v4

    invoke-virtual {v8}, Landroid/widget/ImageView;->getX()F

    move-result v11

    neg-float v11, v11

    aput v11, v10, v7

    invoke-static {v8, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v10, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->g:Landroid/widget/ImageView;

    new-array v11, v2, [F

    aput v5, v11, v4

    invoke-virtual {v10}, Landroid/widget/ImageView;->getY()F

    move-result v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v12, v12

    aput v12, v11, v7

    invoke-static {v10, v9, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v11, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->h:Landroid/widget/ImageView;

    new-array v12, v2, [F

    aput v5, v12, v4

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->a()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->h:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getX()F

    move-result v14

    sub-float/2addr v13, v14

    aput v13, v12, v7

    invoke-static {v11, v6, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    iget-object v12, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->h:Landroid/widget/ImageView;

    new-array v13, v2, [F

    aput v5, v13, v4

    invoke-virtual {v12}, Landroid/widget/ImageView;->getY()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v14, v14

    neg-float v14, v14

    aput v14, v13, v7

    invoke-static {v12, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iget-object v13, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->i:Landroid/widget/ImageView;

    new-array v14, v2, [F

    aput v5, v14, v4

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->a()I

    move-result v15

    int-to-float v15, v15

    iget-object v4, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->i:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v4

    sub-float/2addr v15, v4

    aput v15, v14, v7

    invoke-static {v13, v6, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->i:Landroid/widget/ImageView;

    new-array v13, v2, [F

    const/4 v14, 0x0

    aput v5, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b()I

    move-result v5

    int-to-float v5, v5

    iget-object v14, v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleItemView01;->i:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getY()F

    move-result v14

    sub-float/2addr v5, v14

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v5, v14

    aput v5, v13, v7

    invoke-static {v6, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    const-string v9, "scaleX"

    invoke-static {v0, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-array v9, v2, [F

    fill-array-data v9, :array_1

    const-string v13, "scaleY"

    invoke-static {v0, v13, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v13, v0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    const-wide/16 v14, 0x9c4

    invoke-virtual {v13, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v13, v0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    new-instance v14, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v13, v0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    const/16 v14, 0xa

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    aput-object v9, v14, v7

    aput-object v1, v14, v2

    const/4 v1, 0x3

    aput-object v3, v14, v1

    const/4 v1, 0x4

    aput-object v8, v14, v1

    const/4 v1, 0x5

    aput-object v10, v14, v1

    const/4 v1, 0x6

    aput-object v12, v14, v1

    const/4 v1, 0x7

    aput-object v11, v14, v1

    const/16 v1, 0x8

    aput-object v4, v14, v1

    const/16 v1, 0x9

    aput-object v5, v14, v1

    invoke-virtual {v13, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-wide v1, v0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v3, v0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_0
    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/scale/BaseAlbumScaleItemView;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

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
