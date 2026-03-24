.class public Lz2/o00$OooO00o;
.super Ljava/util/TimerTask;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/o00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO00o"
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/o00;


# direct methods
.method private constructor <init>(Lz2/o00;)V
    .locals 0

    iput-object p1, p0, Lz2/o00$OooO00o;->OoooOoO:Lz2/o00;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz2/o00;Lz2/o00$OooO00o;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o00$OooO00o;-><init>(Lz2/o00;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const-string v0, "changed"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/o00$OooO00o;->OoooOoO:Lz2/o00;

    invoke-static {v0, p1}, Lz2/o00;->OooO00o(Lz2/o00;Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    const-string p1, "onProviderDisabled"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string p1, "onProviderEnabled"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/o00$OooO00o;->OoooOoO:Lz2/o00;

    invoke-static {p1}, Lz2/o00;->OooO0O0(Lz2/o00;)Landroid/location/Location;

    move-result-object v0

    invoke-static {p1, v0}, Lz2/o00;->OooO00o(Lz2/o00;Landroid/location/Location;)V

    iget-object p1, p0, Lz2/o00$OooO00o;->OoooOoO:Lz2/o00;

    invoke-static {p1}, Lz2/o00;->OooO0OO(Lz2/o00;)Landroid/location/LocationManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    const-string p1, "onStatusChanged"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lz2/o00$OooO00o;->OoooOoO:Lz2/o00;

    invoke-static {v0}, Lz2/o00;->OooO0Oo(Lz2/o00;)V

    return-void
.end method
