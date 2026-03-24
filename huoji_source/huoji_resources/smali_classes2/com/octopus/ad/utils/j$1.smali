.class public Lcom/octopus/ad/utils/j$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/utils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/utils/j;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/j;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v9, 0x1

    aget v10, v1, v9

    const/4 v11, 0x2

    aget v1, v1, v11

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j;)F

    move-result v3

    const/high16 v4, -0x3d380000    # -100.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3, v2}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j;F)F

    :cond_0
    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->b(Lcom/octopus/ad/utils/j;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3, v10}, Lcom/octopus/ad/utils/j;->b(Lcom/octopus/ad/utils/j;F)F

    :cond_1
    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->c(Lcom/octopus/ad/utils/j;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3, v1}, Lcom/octopus/ad/utils/j;->c(Lcom/octopus/ad/utils/j;F)F

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",initialX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v4}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",initialY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v4}, Lcom/octopus/ad/utils/j;->b(Lcom/octopus/ad/utils/j;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",z = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",initialZ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v4}, Lcom/octopus/ad/utils/j;->c(Lcom/octopus/ad/utils/j;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "ShakeUtil"

    invoke-static {v12, v3}, Lcom/octopus/ad/utils/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j;)F

    move-result v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x402399999999999aL    # 9.8

    div-double/2addr v3, v5

    iget-object v7, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v7}, Lcom/octopus/ad/utils/j;->b(Lcom/octopus/ad/utils/j;)F

    move-result v7

    sub-float v7, v10, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    div-double/2addr v7, v5

    iget-object v13, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v13}, Lcom/octopus/ad/utils/j;->c(Lcom/octopus/ad/utils/j;)F

    move-result v13

    sub-float v13, v1, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    div-double/2addr v13, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rotateX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ",rotateY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ",rotateZ = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ",rotateAmplitude = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    move v15, v10

    invoke-static {v6}, Lcom/octopus/ad/utils/j;->d(Lcom/octopus/ad/utils/j;)D

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/octopus/ad/utils/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v5}, Lcom/octopus/ad/utils/j;->d(Lcom/octopus/ad/utils/j;)D

    move-result-wide v5

    cmpl-double v9, v3, v5

    if-lez v9, :cond_3

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->e(Lcom/octopus/ad/utils/j;)I

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3, v2}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j;F)F

    :cond_3
    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->d(Lcom/octopus/ad/utils/j;)D

    move-result-wide v3

    cmpl-double v5, v7, v3

    if-lez v5, :cond_4

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->e(Lcom/octopus/ad/utils/j;)I

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    move v9, v15

    invoke-static {v3, v9}, Lcom/octopus/ad/utils/j;->b(Lcom/octopus/ad/utils/j;F)F

    goto :goto_0

    :cond_4
    move v9, v15

    :goto_0
    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->d(Lcom/octopus/ad/utils/j;)D

    move-result-wide v3

    cmpl-double v5, v13, v3

    if-lez v5, :cond_5

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->e(Lcom/octopus/ad/utils/j;)I

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3, v1}, Lcom/octopus/ad/utils/j;->c(Lcom/octopus/ad/utils/j;F)F

    :cond_5
    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->f(Lcom/octopus/ad/utils/j;)D

    move-result-wide v7

    move v4, v2

    move v5, v9

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j;FFFD)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j;I)I

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShakeState = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->g(Lcom/octopus/ad/utils/j;)I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isShakeStart = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->f(Lcom/octopus/ad/utils/j;)D

    move-result-wide v7

    move v4, v2

    move v5, v9

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j;FFFD)Z

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isShakeEnd = "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->h(Lcom/octopus/ad/utils/j;)D

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/octopus/ad/utils/j;->b(Lcom/octopus/ad/utils/j;FFFD)Z

    move-result v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/octopus/ad/utils/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->g(Lcom/octopus/ad/utils/j;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget-object v3, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v3}, Lcom/octopus/ad/utils/j;->h(Lcom/octopus/ad/utils/j;)D

    move-result-wide v7

    move v4, v2

    move v5, v9

    move v6, v1

    invoke-static/range {v3 .. v8}, Lcom/octopus/ad/utils/j;->b(Lcom/octopus/ad/utils/j;FFFD)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v1, v11}, Lcom/octopus/ad/utils/j;->a(Lcom/octopus/ad/utils/j;I)I

    iget-object v1, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v1}, Lcom/octopus/ad/utils/j;->i(Lcom/octopus/ad/utils/j;)I

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShakeCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v2}, Lcom/octopus/ad/utils/j;->j(Lcom/octopus/ad/utils/j;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dstShakeCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v2}, Lcom/octopus/ad/utils/j;->k(Lcom/octopus/ad/utils/j;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mRotateCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v2}, Lcom/octopus/ad/utils/j;->l(Lcom/octopus/ad/utils/j;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dstRotateCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v2}, Lcom/octopus/ad/utils/j;->m(Lcom/octopus/ad/utils/j;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/octopus/ad/utils/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v1}, Lcom/octopus/ad/utils/j;->k(Lcom/octopus/ad/utils/j;)I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v1}, Lcom/octopus/ad/utils/j;->j(Lcom/octopus/ad/utils/j;)I

    move-result v1

    iget-object v2, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v2}, Lcom/octopus/ad/utils/j;->k(Lcom/octopus/ad/utils/j;)I

    move-result v2

    if-ge v1, v2, :cond_9

    :cond_8
    iget-object v1, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v1}, Lcom/octopus/ad/utils/j;->m(Lcom/octopus/ad/utils/j;)I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v1}, Lcom/octopus/ad/utils/j;->l(Lcom/octopus/ad/utils/j;)I

    move-result v1

    iget-object v2, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-static {v2}, Lcom/octopus/ad/utils/j;->m(Lcom/octopus/ad/utils/j;)I

    move-result v2

    if-lt v1, v2, :cond_a

    :cond_9
    iget-object v1, v0, Lcom/octopus/ad/utils/j$1;->a:Lcom/octopus/ad/utils/j;

    invoke-virtual {v1}, Lcom/octopus/ad/utils/j;->a()V

    :cond_a
    return-void
.end method
