.class public final Lcom/umeng/commonsdk/proguard/r$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->b()I

    move-result v0

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->c()I

    return-void

    :cond_0
    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->d()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->e()I

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->f()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->d()I

    move-result p1

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->e()I

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->g()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/r;->a(J)J

    :cond_2
    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->g()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/proguard/r;->b(J)J

    :cond_3
    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->h()I

    invoke-static {}, Lcom/umeng/commonsdk/proguard/r;->i()V

    :cond_4
    return-void
.end method
