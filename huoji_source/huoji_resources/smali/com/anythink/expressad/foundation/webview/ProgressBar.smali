.class public Lcom/anythink/expressad/foundation/webview/ProgressBar;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/webview/a;


# static fields
.field private static final C:F = 1200.0f

.field private static final L:J = 0x19L

.field private static final g:Ljava/lang/String; = "ProgressBar"

.field private static final h:Z = false

.field private static final t:F = 0.05f

.field private static final u:F = 0.2f

.field private static final v:F = 0.4f

.field private static final w:F = 1.0f

.field private static final x:J = 0x7d0L

.field private static final y:F = 0.2f


# instance fields
.field private A:I

.field private B:I

.field private D:J

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:Z

.field private J:Lcom/anythink/expressad/foundation/webview/a$a;

.field private K:Landroid/os/Handler;

.field private M:Z

.field private N:Z

.field public f:Ljava/lang/Runnable;

.field private i:Landroid/graphics/Rect;

.field private j:F

.field private k:F

.field private l:J

.field private m:F

.field private n:Z

.field private o:F

.field private p:F

.field private q:F

.field private r:J

.field private s:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->i:Landroid/graphics/Rect;

    const p1, 0x3f733333    # 0.95f

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->k:F

    const-wide/16 v0, 0x19

    iput-wide v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->D:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->I:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->K:Landroid/os/Handler;

    new-instance v0, Lcom/anythink/expressad/foundation/webview/ProgressBar$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/foundation/webview/ProgressBar$1;-><init>(Lcom/anythink/expressad/foundation/webview/ProgressBar;)V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->f:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->N:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->i:Landroid/graphics/Rect;

    const p1, 0x3f733333    # 0.95f

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->k:F

    const-wide/16 p1, 0x19

    iput-wide p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->D:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->I:Z

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->K:Landroid/os/Handler;

    new-instance p2, Lcom/anythink/expressad/foundation/webview/ProgressBar$1;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/foundation/webview/ProgressBar$1;-><init>(Lcom/anythink/expressad/foundation/webview/ProgressBar;)V

    iput-object p2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->f:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->N:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;F)V
    .locals 7

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->o:F

    iget v4, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->j:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v4, v5

    div-float v6, v3, v6

    sub-float/2addr v0, v6

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v0, v0, v6

    float-to-int v0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    mul-float v4, v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/anythink/expressad/foundation/webview/ProgressBar;->setVisible(Z)V

    :cond_1
    iget-object v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    iget-object v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->o:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3, v2, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3, v2, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->p:F

    iget v2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->k:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float p2, p2, v3

    iget v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->j:F

    mul-float p2, p2, v3

    add-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lt p2, v0, :cond_9

    iget-object p2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    neg-int p2, p2

    iput p2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget p2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    iget-boolean p2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    return-void
.end method

.method private b()F
    .locals 8

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-nez v0, :cond_5

    iget-wide v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->r:J

    const-wide/16 v5, 0x7d0

    const v0, 0x3d4ccccd    # 0.05f

    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    iget v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->A:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->M:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->z:I

    const v3, 0x3e4ccccd    # 0.2f

    if-ne v1, v4, :cond_3

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->M:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->M:Z

    if-eqz v1, :cond_4

    return v3

    :cond_4
    return v0

    :cond_5
    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->M:Z

    if-eqz v0, :cond_6

    return v1

    :cond_6
    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->I:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->I:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->N:Z

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->l:J

    sub-long v4, v2, v4

    :goto_0
    long-to-float v0, v4

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->m:F

    iput-wide v2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->l:J

    iget-wide v2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->r:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->r:J

    iget-boolean v4, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3d4ccccd    # 0.05f

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v4, :cond_5

    const-wide/16 v9, 0x7d0

    cmp-long v11, v2, v9

    if-gez v11, :cond_4

    iget v2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->A:I

    if-ne v2, v1, :cond_2

    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->M:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->z:I

    if-ne v2, v1, :cond_3

    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->M:Z

    if-nez v1, :cond_6

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->M:Z

    if-eqz v1, :cond_4

    :goto_1
    const v5, 0x3e4ccccd    # 0.2f

    goto :goto_3

    :cond_4
    const v5, 0x3d4ccccd    # 0.05f

    goto :goto_3

    :cond_5
    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->M:Z

    if-eqz v1, :cond_6

    :goto_2
    const/high16 v5, 0x3f800000    # 1.0f

    :cond_6
    :goto_3
    iput v5, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->q:F

    iget v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->p:F

    mul-float v5, v5, v0

    add-float/2addr v1, v5

    iput v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->p:F

    if-nez v4, :cond_7

    iget v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->k:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_7

    iput v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->p:F

    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->i:Landroid/graphics/Rect;

    iget v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->p:F

    iget v2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->j:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->K:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->K:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->f:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->D:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->m:F

    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->o:F

    iget v4, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->j:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v9, v4, v5

    div-float v9, v1, v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-gez v8, :cond_8

    const/4 v8, 0x0

    :cond_8
    mul-float v4, v4, v5

    cmpl-float v1, v1, v4

    if-lez v1, :cond_9

    invoke-virtual {p0, v3}, Lcom/anythink/expressad/foundation/webview/ProgressBar;->setVisible(Z)V

    :cond_9
    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a
    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_b
    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->o:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_d
    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v7

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iget-object v4, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v4, v3, v3, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    iget-object v4, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_f

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v4, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v4, v3, v3, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_10
    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    if-nez v1, :cond_12

    iget v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->p:F

    iget v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->k:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_12

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    iget v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    int-to-float v3, v3

    mul-float v0, v0, v6

    iget v4, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->j:F

    mul-float v0, v0, v4

    add-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    return-void
.end method

.method public getDrawingCache(Z)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->p:F

    return v0
.end method

.method public initResource(Z)V
    .locals 4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anythink_cm_highlight"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "anythink_cm_head"

    invoke-static {v1, v3, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anythink_cm_tail"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "anythink_cm_end_animation"

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->j:F

    return-void
.end method

.method public onThemeChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anythink/expressad/foundation/webview/ProgressBar;->initResource(Z)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method public setPaused(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->N:Z

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->l:J

    :cond_0
    return-void
.end method

.method public setProgress(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/webview/ProgressBar;->startEndAnimation()V

    :cond_0
    return-void
.end method

.method public setProgressBarListener(Lcom/anythink/expressad/foundation/webview/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->J:Lcom/anythink/expressad/foundation/webview/a$a;

    return-void
.end method

.method public setProgressState(I)V
    .locals 4

    const/4 v0, 0x5

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->B:I

    iget p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->A:I

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/webview/ProgressBar;->startEndAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/webview/ProgressBar;->startEndAnimation()V

    return-void

    :cond_3
    iput v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->A:I

    iget p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->B:I

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/webview/ProgressBar;->startEndAnimation()V

    :cond_4
    iput-wide v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->r:J

    return-void

    :cond_5
    iput v3, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->z:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->A:I

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->B:I

    iput-wide v1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->r:J

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->M:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->l:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->m:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->r:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->o:F

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->p:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->j:F

    iput-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->N:Z

    iput v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->z:I

    iput v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->A:I

    iput v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->B:I

    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->H:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->s:I

    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->F:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->G:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->E:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/anythink/expressad/foundation/webview/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_4
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/anythink/expressad/foundation/webview/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public startEndAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->n:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/foundation/webview/ProgressBar;->o:F

    :cond_0
    return-void
.end method
