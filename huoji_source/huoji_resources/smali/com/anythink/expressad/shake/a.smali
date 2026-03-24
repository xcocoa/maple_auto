.class public Lcom/anythink/expressad/shake/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile c:Lcom/anythink/expressad/shake/a;


# instance fields
.field public a:Landroid/hardware/Sensor;

.field private b:Landroid/hardware/SensorManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/shake/a;->b:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/anythink/expressad/shake/a;->b:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/shake/a;->a:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/shake/a;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/shake/a;->a:Landroid/hardware/Sensor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_1
    return-void
.end method

.method public static a()Lcom/anythink/expressad/shake/a;
    .locals 2

    sget-object v0, Lcom/anythink/expressad/shake/a;->c:Lcom/anythink/expressad/shake/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/expressad/shake/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/expressad/shake/a;->c:Lcom/anythink/expressad/shake/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/expressad/shake/a;

    invoke-direct {v1}, Lcom/anythink/expressad/shake/a;-><init>()V

    sput-object v1, Lcom/anythink/expressad/shake/a;->c:Lcom/anythink/expressad/shake/a;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/expressad/shake/a;->c:Lcom/anythink/expressad/shake/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/hardware/SensorEventListener;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/shake/a;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/anythink/expressad/shake/a;->a:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b(Landroid/hardware/SensorEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/shake/a;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/shake/a;->a:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
