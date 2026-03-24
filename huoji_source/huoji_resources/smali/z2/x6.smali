.class public Lz2/x6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/x6$OooO00o;
    }
.end annotation


# static fields
.field private static final OooO:I = 0xbb8

.field private static final OooOO0:I = 0x64


# instance fields
.field private OooO00o:Landroid/hardware/SensorManager;

.field private OooO0O0:Landroid/hardware/Sensor;

.field private OooO0OO:Lz2/x6$OooO00o;

.field private OooO0Oo:Landroid/content/Context;

.field private OooO0o:F

.field private OooO0o0:F

.field private OooO0oO:F

.field private OooO0oo:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/x6;->OooO0Oo:Landroid/content/Context;

    invoke-virtual {p0}, Lz2/x6;->OooO0O0()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lz2/x6$OooO00o;)V
    .locals 0

    iput-object p1, p0, Lz2/x6;->OooO0OO:Lz2/x6$OooO00o;

    return-void
.end method

.method public OooO0O0()V
    .locals 3

    iget-object v0, p0, Lz2/x6;->OooO0Oo:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lz2/x6;->OooO00o:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lz2/x6;->OooO0O0:Landroid/hardware/Sensor;

    :cond_0
    iget-object v0, p0, Lz2/x6;->OooO0O0:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lz2/x6;->OooO00o:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    return-void
.end method

.method public OooO0OO()V
    .locals 1

    iget-object v0, p0, Lz2/x6;->OooO00o:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lz2/x6;->OooO0oo:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    :cond_0
    iput-wide v0, p0, Lz2/x6;->OooO0oo:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v4, 0x2

    aget p1, p1, v4

    iget v4, p0, Lz2/x6;->OooO0o0:F

    sub-float v4, v0, v4

    iget v5, p0, Lz2/x6;->OooO0o:F

    sub-float v5, v1, v5

    iget v6, p0, Lz2/x6;->OooO0oO:F

    sub-float v6, p1, v6

    iput v0, p0, Lz2/x6;->OooO0o0:F

    iput v1, p0, Lz2/x6;->OooO0o:F

    iput p1, p0, Lz2/x6;->OooO0oO:F

    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float/2addr v4, v5

    mul-float v6, v6, v6

    add-float/2addr v4, v6

    float-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    const-wide v2, 0x40a7700000000000L    # 3000.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lz2/x6;->OooO0OO:Lz2/x6$OooO00o;

    invoke-interface {p1}, Lz2/x6$OooO00o;->onShake()V

    :cond_1
    return-void
.end method
