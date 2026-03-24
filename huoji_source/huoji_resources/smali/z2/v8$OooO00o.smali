.class public Lz2/v8$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/v8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/v8;


# direct methods
.method public constructor <init>(Lz2/v8;)V
    .locals 0

    iput-object p1, p0, Lz2/v8$OooO00o;->OoooOoO:Lz2/v8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lz2/v8$OooO00o;->OoooOoO:Lz2/v8;

    invoke-static {v0}, Lz2/v8;->OooO00o(Lz2/v8;)Lz2/v8$OooO0O0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/v8$OooO00o;->OoooOoO:Lz2/v8;

    invoke-static {v0}, Lz2/v8;->OooO00o(Lz2/v8;)Lz2/v8$OooO0O0;

    move-result-object v0

    invoke-interface {v0, p1}, Lz2/v8$OooO0O0;->OnLocationChange(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
