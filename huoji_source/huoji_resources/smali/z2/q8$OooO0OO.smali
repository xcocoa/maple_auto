.class public Lz2/q8$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/q8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation


# instance fields
.field public OooO00o:Landroid/hardware/SensorManager;

.field public final synthetic OooO0O0:Lz2/q8;


# direct methods
.method public constructor <init>(Lz2/q8;Landroid/hardware/SensorManager;)V
    .locals 0

    iput-object p1, p0, Lz2/q8$OooO0OO;->OooO0O0:Lz2/q8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/q8$OooO0OO;->OooO00o:Landroid/hardware/SensorManager;

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    iget-object p1, p0, Lz2/q8$OooO0OO;->OooO00o:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/q8$OooO0OO;->OooO00o:Landroid/hardware/SensorManager;

    return-void
.end method
