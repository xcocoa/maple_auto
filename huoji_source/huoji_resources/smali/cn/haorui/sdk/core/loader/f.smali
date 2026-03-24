.class public Lcn/haorui/sdk/core/loader/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/loader/g;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/loader/g;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/f;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/f;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/f;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/f;->a:Lcn/haorui/sdk/core/loader/g;

    iget v1, v0, Lcn/haorui/sdk/core/loader/g;->b:I

    const/4 v2, 0x2

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/f;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v3, v1, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    iget-object v1, v1, Lcn/haorui/sdk/core/loader/g;->s:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/f;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v0, v0, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcn/haorui/sdk/core/loader/f;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v3, v1, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    iget-object v1, v1, Lcn/haorui/sdk/core/loader/g;->s:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v1, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    return-void
.end method
