.class public Lz2/o00;
.super Lz2/o000OO0O;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/o00$OooO00o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/o000OO0O<",
        "Landroid/location/Location;",
        "Lz2/o00;",
        ">;"
    }
.end annotation


# instance fields
.field private OoooOoO:Landroid/location/LocationManager;

.field private OoooOoo:J

.field private Ooooo00:J

.field private Ooooo0o:F

.field private OooooO0:F

.field private OooooOO:I

.field private OooooOo:I

.field private Oooooo:Z

.field private Oooooo0:Z

.field private OoooooO:Lz2/o00$OooO00o;

.field private Ooooooo:Lz2/o00$OooO00o;

.field private o0OoOo0:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lz2/o000OO0O;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lz2/o00;->OoooOoo:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lz2/o00;->Ooooo00:J

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lz2/o00;->Ooooo0o:F

    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lz2/o00;->OooooO0:F

    const/4 v0, 0x3

    iput v0, p0, Lz2/o00;->OooooOO:I

    const/4 v0, 0x0

    iput v0, p0, Lz2/o00;->OooooOo:I

    iput-boolean v0, p0, Lz2/o00;->Oooooo0:Z

    iput-boolean v0, p0, Lz2/o00;->Oooooo:Z

    const-class v0, Landroid/location/Location;

    invoke-virtual {p0, v0}, Lz2/o000OO0O;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/o00;

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lz2/o000OO0O;->url(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private OooO()V
    .locals 2

    iget-object v0, p0, Lz2/o00;->Ooooooo:Lz2/o00$OooO00o;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/o00;->OoooooO:Lz2/o00$OooO00o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "fail"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    const/16 v1, -0x67

    invoke-direct {p0, v0, v1}, Lz2/o00;->OooOOOO(Landroid/location/Location;I)V

    invoke-virtual {p0}, Lz2/o00;->OooOOOo()V

    invoke-virtual {p0}, Lz2/o000OO0O;->callback()V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/o00;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/o00;->OooO0oO(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic OooO0O0(Lz2/o00;)Landroid/location/Location;
    .locals 0

    invoke-direct {p0}, Lz2/o00;->OooOO0()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0OO(Lz2/o00;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lz2/o00;->OoooOoO:Landroid/location/LocationManager;

    return-object p0
.end method

.method public static synthetic OooO0Oo(Lz2/o00;)V
    .locals 0

    invoke-direct {p0}, Lz2/o00;->OooO()V

    return-void
.end method

.method private OooO0o(Landroid/location/Location;)V
    .locals 1

    iput-object p1, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    const/16 v0, 0xc8

    invoke-direct {p0, p1, v0}, Lz2/o00;->OooOOOO(Landroid/location/Location;I)V

    invoke-virtual {p0}, Lz2/o000OO0O;->callback()V

    return-void
.end method

.method private OooO0oO(Landroid/location/Location;)V
    .locals 7

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lz2/o00;->OooOO0o(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lz2/o00;->OooooOo:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lz2/o00;->OooooOo:I

    iget v2, p0, Lz2/o00;->OooooOO:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lz2/o00;->OooOO0O(Landroid/location/Location;)Z

    move-result v2

    invoke-direct {p0, p1}, Lz2/o00;->OooOOO0(Landroid/location/Location;)Z

    move-result v4

    iget-boolean v5, p0, Lz2/o00;->Oooooo:Z

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    const-string v6, "gps"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget v3, p0, Lz2/o00;->OooooOo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Lz2/o00;->OooooOO:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "acc"

    invoke-static {v5, v3}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "best"

    invoke-static {v5, v3}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v4, :cond_4

    if-eqz v0, :cond_2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {p0}, Lz2/o00;->OooOOOo()V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lz2/o00;->OooO0o(Landroid/location/Location;)V

    :cond_4
    return-void
.end method

.method private static OooO0oo(DDDD)F
    .locals 4

    sub-double v0, p4, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p6, p2

    invoke-static {p6, p7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double p0, p0, p4

    div-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double p0, p0, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double p0, p0, p2

    add-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double p0, p0, p6

    const-wide p2, 0x40aeed8000000000L    # 3958.75

    mul-double p0, p0, p2

    double-to-float p0, p0

    const/16 p1, 0x649

    int-to-float p1, p1

    mul-float p0, p0, p1

    return p0
.end method

.method private OooOO0()Landroid/location/Location;
    .locals 7

    iget-object v0, p0, Lz2/o00;->OoooOoO:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iget-object v1, p0, Lz2/o00;->OoooOoO:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method private OooOO0O(Landroid/location/Location;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    iget v0, p0, Lz2/o00;->OooooO0:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private OooOO0o(Landroid/location/Location;)Z
    .locals 6

    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lz2/o00;->o0OoOo0:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    const-string v0, "network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "inferior location"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method private OooOOO0(Landroid/location/Location;)Z
    .locals 10

    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lz2/o00;->OooO0oo(DDDD)F

    move-result p1

    iget v0, p0, Lz2/o00;->Ooooo0o:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    const-string p1, "duplicate location"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method private OooOOOO(Landroid/location/Location;I)V
    .locals 4

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    if-nez v0, :cond_0

    new-instance v0, Lz2/o000O;

    invoke-direct {v0}, Lz2/o000O;-><init>()V

    iput-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lz2/o000O;->Oooo0O0(Ljava/util/Date;)Lz2/o000O;

    :cond_1
    iget-object p1, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {p1, p2}, Lz2/o000O;->OooO0Oo(I)Lz2/o000O;

    move-result-object p1

    invoke-virtual {p1}, Lz2/o000O;->OooO0oO()Lz2/o000O;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lz2/o000O;->Oooo0(I)Lz2/o000O;

    return-void
.end method

.method private OooOOoo()V
    .locals 11

    invoke-direct {p0}, Lz2/o00;->OooOO0()Landroid/location/Location;

    move-result-object v0

    new-instance v1, Ljava/util/Timer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Z)V

    iget-boolean v2, p0, Lz2/o00;->Oooooo0:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "register net"

    invoke-static {v2}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    new-instance v9, Lz2/o00$OooO00o;

    invoke-direct {v9, p0, v3}, Lz2/o00$OooO00o;-><init>(Lz2/o00;Lz2/o00$OooO00o;)V

    iput-object v9, p0, Lz2/o00;->OoooooO:Lz2/o00$OooO00o;

    iget-object v4, p0, Lz2/o00;->OoooOoO:Landroid/location/LocationManager;

    iget-wide v6, p0, Lz2/o00;->Ooooo00:J

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    const-string v5, "network"

    invoke-virtual/range {v4 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v2, p0, Lz2/o00;->OoooooO:Lz2/o00$OooO00o;

    iget-wide v4, p0, Lz2/o00;->OoooOoo:J

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    iget-boolean v2, p0, Lz2/o00;->Oooooo:Z

    if-eqz v2, :cond_1

    const-string v2, "register gps"

    invoke-static {v2}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    new-instance v9, Lz2/o00$OooO00o;

    invoke-direct {v9, p0, v3}, Lz2/o00$OooO00o;-><init>(Lz2/o00;Lz2/o00$OooO00o;)V

    iput-object v9, p0, Lz2/o00;->Ooooooo:Lz2/o00$OooO00o;

    iget-object v4, p0, Lz2/o00;->OoooOoO:Landroid/location/LocationManager;

    iget-wide v6, p0, Lz2/o00;->Ooooo00:J

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    const-string v5, "gps"

    invoke-virtual/range {v4 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v2, p0, Lz2/o00;->Ooooooo:Lz2/o00$OooO00o;

    iget-wide v3, p0, Lz2/o00;->OoooOoo:J

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    iget v1, p0, Lz2/o00;->OooooOO:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    if-eqz v0, :cond_2

    iget v1, p0, Lz2/o00;->OooooOo:I

    add-int/2addr v1, v2

    iput v1, p0, Lz2/o00;->OooooOo:I

    invoke-direct {p0, v0}, Lz2/o00;->OooO0o(Landroid/location/Location;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lz2/o00;->o0OoOo0:J

    return-void
.end method


# virtual methods
.method public OooO0o0(F)Lz2/o00;
    .locals 0

    iput p1, p0, Lz2/o00;->OooooO0:F

    return-object p0
.end method

.method public OooOOO(I)Lz2/o00;
    .locals 0

    iput p1, p0, Lz2/o00;->OooooOO:I

    return-object p0
.end method

.method public OooOOOo()V
    .locals 2

    const-string v0, "stop"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/o00;->Ooooooo:Lz2/o00$OooO00o;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/o00;->OoooOoO:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    iget-object v0, p0, Lz2/o00;->OoooooO:Lz2/o00$OooO00o;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lz2/o00;->OoooOoO:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o00;->Ooooooo:Lz2/o00$OooO00o;

    iput-object v0, p0, Lz2/o00;->OoooooO:Lz2/o00$OooO00o;

    return-void
.end method

.method public OooOOo(F)Lz2/o00;
    .locals 0

    iput p1, p0, Lz2/o00;->Ooooo0o:F

    return-object p0
.end method

.method public OooOOo0(J)Lz2/o00;
    .locals 0

    iput-wide p1, p0, Lz2/o00;->OoooOoo:J

    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lz2/o00;->OoooOoO:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lz2/o00;->Oooooo:Z

    iget-object p1, p0, Lz2/o00;->OoooOoO:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lz2/o00;->Oooooo0:Z

    invoke-direct {p0}, Lz2/o00;->OooOOoo()V

    return-void
.end method
