.class public Lcn/haorui/sdk/core/loader/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/loader/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/loader/g;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/g;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/g$a;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g$a;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget v5, v0, Lcn/haorui/sdk/core/loader/g;->g:F

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcn/haorui/sdk/core/loader/g;->f:Z

    if-eqz v3, :cond_3

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float v3, v6

    sub-float/2addr v3, v5

    const v5, 0x3089705f    # 1.0E-9f

    mul-float v3, v3, v5

    iget-object v5, v0, Lcn/haorui/sdk/core/loader/g;->h:[F

    aget v6, v5, v2

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v7, v2

    mul-float v8, v8, v3

    add-float/2addr v6, v8

    aput v6, v5, v2

    aget v6, v5, v4

    aget v8, v7, v4

    mul-float v8, v8, v3

    add-float/2addr v6, v8

    aput v6, v5, v4

    aget v6, v5, v1

    aget v7, v7, v1

    mul-float v7, v7, v3

    add-float/2addr v6, v7

    aput v6, v5, v1

    aget v2, v5, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, v0, Lcn/haorui/sdk/core/loader/g;->h:[F

    aget v3, v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, v0, Lcn/haorui/sdk/core/loader/g;->h:[F

    aget v1, v4, v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    sget-wide v6, Lcn/haorui/sdk/core/loader/g;->z:D

    cmpl-double v8, v4, v6

    if-gez v8, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    sget-wide v6, Lcn/haorui/sdk/core/loader/g;->z:D

    cmpl-double v8, v4, v6

    if-gez v8, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    sget-wide v6, Lcn/haorui/sdk/core/loader/g;->z:D

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v4, v2

    iget-wide v6, v0, Lcn/haorui/sdk/core/loader/g;->o:D

    cmpl-double v2, v4, v6

    if-gez v2, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    iget-wide v4, v0, Lcn/haorui/sdk/core/loader/g;->o:D

    cmpl-double v6, v2, v4

    if-gez v6, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    iget-wide v3, v0, Lcn/haorui/sdk/core/loader/g;->o:D

    cmpl-double v5, v1, v3

    if-ltz v5, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->c()V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->e()V

    :cond_3
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v1

    iput p1, v0, Lcn/haorui/sdk/core/loader/g;->g:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g$a;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-boolean v5, v0, Lcn/haorui/sdk/core/loader/g;->f:Z

    if-eqz v5, :cond_b

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-eq v5, v4, :cond_6

    const/16 v3, 0x9

    if-eq v5, v3, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, p1, v2

    iput v2, v0, Lcn/haorui/sdk/core/loader/g;->w:F

    aget v2, p1, v4

    iput v2, v0, Lcn/haorui/sdk/core/loader/g;->x:F

    aget p1, p1, v1

    iput p1, v0, Lcn/haorui/sdk/core/loader/g;->y:F

    goto/16 :goto_2

    :cond_6
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, p1, v2

    iput v2, v0, Lcn/haorui/sdk/core/loader/g;->t:F

    aget v5, p1, v4

    iput v5, v0, Lcn/haorui/sdk/core/loader/g;->u:F

    aget p1, p1, v1

    iput p1, v0, Lcn/haorui/sdk/core/loader/g;->v:F

    iget v1, v0, Lcn/haorui/sdk/core/loader/g;->w:F

    sub-float/2addr v2, v1

    iget v1, v0, Lcn/haorui/sdk/core/loader/g;->x:F

    sub-float/2addr v5, v1

    iget v1, v0, Lcn/haorui/sdk/core/loader/g;->y:F

    sub-float/2addr p1, v1

    mul-float v2, v2, v2

    mul-float v5, v5, v5

    add-float/2addr v2, v5

    mul-float p1, p1, p1

    add-float/2addr v2, p1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->w:F

    const-wide v5, 0x402399999999999aL    # 9.8

    cmpl-float p1, p1, v3

    if-nez p1, :cond_7

    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->x:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_7

    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->y:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_7

    sub-double/2addr v1, v5

    :cond_7
    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->t:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_8

    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->u:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_8

    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->v:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_8

    sub-double/2addr v1, v5

    :cond_8
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v5

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    div-double/2addr v1, v5

    const-wide/high16 v7, 0x4054000000000000L    # 80.0

    cmpg-double p1, v7, v1

    if-gez p1, :cond_9

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    sub-double/2addr v1, v7

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    mul-double v1, v1, v9

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v5

    add-double/2addr v1, v7

    :cond_9
    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->a:I

    int-to-double v5, p1

    cmpl-double p1, v1, v5

    if-ltz p1, :cond_a

    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->j:I

    add-int/2addr p1, v4

    iput p1, v0, Lcn/haorui/sdk/core/loader/g;->j:I

    iget v1, v0, Lcn/haorui/sdk/core/loader/g;->c:I

    if-lt p1, v1, :cond_b

    goto :goto_1

    :cond_a
    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->f()Z

    move-result p1

    if-eqz p1, :cond_b

    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->n:I

    int-to-double v5, p1

    cmpl-double p1, v1, v5

    if-ltz p1, :cond_b

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->c()V

    iget p1, v0, Lcn/haorui/sdk/core/loader/g;->j:I

    add-int/2addr p1, v4

    iput p1, v0, Lcn/haorui/sdk/core/loader/g;->j:I

    iget v1, v0, Lcn/haorui/sdk/core/loader/g;->c:I

    if-lt p1, v1, :cond_b

    :goto_1
    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_2
    return-void
.end method
