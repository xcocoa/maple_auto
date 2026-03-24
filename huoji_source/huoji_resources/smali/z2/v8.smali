.class public Lz2/v8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/v8$OooO0O0;
    }
.end annotation


# static fields
.field public static final OooO0o:[Ljava/lang/String;

.field private static OooO0o0:Lz2/v8;


# instance fields
.field private OooO00o:Landroid/content/Context;

.field private OooO0O0:Landroid/location/LocationManager;

.field public OooO0OO:Landroid/location/LocationListener;

.field private OooO0Oo:Lz2/v8$OooO0O0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/v8;->OooO0o:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/v8$OooO00o;

    invoke-direct {v0, p0}, Lz2/v8$OooO00o;-><init>(Lz2/v8;)V

    iput-object v0, p0, Lz2/v8;->OooO0OO:Landroid/location/LocationListener;

    iput-object p1, p0, Lz2/v8;->OooO00o:Landroid/content/Context;

    return-void
.end method

.method public static synthetic OooO00o(Lz2/v8;)Lz2/v8$OooO0O0;
    .locals 0

    iget-object p0, p0, Lz2/v8;->OooO0Oo:Lz2/v8$OooO0O0;

    return-object p0
.end method

.method public static OooO0O0(Landroid/content/Context;)Lz2/v8;
    .locals 1

    sget-object v0, Lz2/v8;->OooO0o0:Lz2/v8;

    if-nez v0, :cond_0

    new-instance v0, Lz2/v8;

    invoke-direct {v0, p0}, Lz2/v8;-><init>(Landroid/content/Context;)V

    sput-object v0, Lz2/v8;->OooO0o0:Lz2/v8;

    :cond_0
    sget-object p0, Lz2/v8;->OooO0o0:Lz2/v8;

    return-object p0
.end method

.method private OooO0o0()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lz2/v8;->OooO0o:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lz2/v8;->OooO00o:Landroid/content/Context;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public OooO0OO()[Ljava/lang/String;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lz2/v8;->OooO00o:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lz2/v8;->OooO0O0:Landroid/location/LocationManager;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    const-string v3, "gps"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "network"

    if-eqz v5, :cond_0

    move-object v8, v3

    goto :goto_0

    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v8, v6

    :goto_0
    iget-object v1, p0, Lz2/v8;->OooO0O0:Landroid/location/LocationManager;

    invoke-virtual {v1, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lz2/v8;->OooO0Oo:Lz2/v8$OooO0O0;

    if-eqz v3, :cond_1

    invoke-interface {v3, v1}, Lz2/v8$OooO0O0;->onLocationResult(Landroid/location/Location;)V

    :cond_1
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_2
    iget-object v7, p0, Lz2/v8;->OooO0O0:Landroid/location/LocationManager;

    const-wide/16 v9, 0xbb8

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Lz2/v8;->OooO0OO:Landroid/location/LocationListener;

    invoke-virtual/range {v7 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_3
    return-object v0
.end method

.method public OooO0Oo(Lz2/v8$OooO0O0;)[Ljava/lang/String;
    .locals 4

    iput-object p1, p0, Lz2/v8;->OooO0Oo:Lz2/v8$OooO0O0;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lz2/v8;->OooO0o0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lz2/v8;->OooO0OO()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lz2/v8;->OooO0OO()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o()V
    .locals 2

    iget-object v0, p0, Lz2/v8;->OooO0O0:Landroid/location/LocationManager;

    iget-object v1, p0, Lz2/v8;->OooO0OO:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
