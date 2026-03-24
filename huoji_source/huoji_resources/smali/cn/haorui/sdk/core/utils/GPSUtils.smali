.class public Lcn/haorui/sdk/core/utils/GPSUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/utils/GPSUtils$OnLocationResultListener;
    }
.end annotation


# instance fields
.field public locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;

.field private mOnLocationListener:Lcn/haorui/sdk/core/utils/GPSUtils$OnLocationResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/haorui/sdk/core/utils/GPSUtils$a;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/core/utils/GPSUtils$a;-><init>(Lcn/haorui/sdk/core/utils/GPSUtils;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->locationListener:Landroid/location/LocationListener;

    iput-object p1, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/core/utils/GPSUtils;)Lcn/haorui/sdk/core/utils/GPSUtils$OnLocationResultListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->mOnLocationListener:Lcn/haorui/sdk/core/utils/GPSUtils$OnLocationResultListener;

    return-object p0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 5

    const-string v0, "gps"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->locationManager:Landroid/location/LocationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "network"

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v4

    :goto_0
    iget-object v2, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public removeListener()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcn/haorui/sdk/core/utils/GPSUtils;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
