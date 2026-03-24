.class public Lcn/haorui/sdk/core/utils/GPSUtils$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/utils/GPSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/utils/GPSUtils;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/utils/GPSUtils;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/GPSUtils$a;->a:Lcn/haorui/sdk/core/utils/GPSUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/GPSUtils$a;->a:Lcn/haorui/sdk/core/utils/GPSUtils;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/GPSUtils;->access$000(Lcn/haorui/sdk/core/utils/GPSUtils;)Lcn/haorui/sdk/core/utils/GPSUtils$OnLocationResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/GPSUtils$a;->a:Lcn/haorui/sdk/core/utils/GPSUtils;

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/GPSUtils;->access$000(Lcn/haorui/sdk/core/utils/GPSUtils;)Lcn/haorui/sdk/core/utils/GPSUtils$OnLocationResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/haorui/sdk/core/utils/GPSUtils$OnLocationResultListener;->OnLocationChange(Landroid/location/Location;)V

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
