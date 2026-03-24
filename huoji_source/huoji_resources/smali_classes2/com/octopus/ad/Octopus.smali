.class public Lcom/octopus/ad/Octopus;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/octopus/ad/OctopusAdSdkController;

.field private static b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomController()Lcom/octopus/ad/OctopusAdSdkController;
    .locals 1

    sget-object v0, Lcom/octopus/ad/Octopus;->a:Lcom/octopus/ad/OctopusAdSdkController;

    return-object v0
.end method

.method public static getLocationDecimalDigits()I
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->getInstance()Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->getLocationDecimalDigits()I

    move-result v0

    return v0
.end method

.method public static getLocationEnabled()Z
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->getInstance()Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->locationEnabled:Z

    return v0
.end method

.method public static getOaid(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/octopus/ad/utils/b/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.5.8.9"

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/octopus/ad/internal/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/OctopusAdSdkController;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    sput-object p2, Lcom/octopus/ad/Octopus;->a:Lcom/octopus/ad/OctopusAdSdkController;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/octopus/ad/internal/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/m;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/OctopusAdSdkController;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    sput-object p2, Lcom/octopus/ad/Octopus;->a:Lcom/octopus/ad/OctopusAdSdkController;

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/octopus/ad/internal/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "OctopusGroup"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/m;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/m;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static isHttpsEnabled()Z
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    iget-boolean v0, v0, Lcom/octopus/ad/internal/m;->a:Z

    return v0
.end method

.method public static isLimitPersonalAds()Z
    .locals 1

    sget-boolean v0, Lcom/octopus/ad/Octopus;->b:Z

    return v0
.end method

.method public static logTagInfo(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/octopus/ad/internal/m;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAppMuted(Z)V
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/m;->a(Z)V

    return-void
.end method

.method public static setAppVolume(F)V
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/m;->a(F)V

    return-void
.end method

.method public static setIsDownloadDirect(Z)V
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/m;->b(Z)V

    return-void
.end method

.method public static setLimitPersonalAds(Z)V
    .locals 0

    sput-boolean p0, Lcom/octopus/ad/Octopus;->b:Z

    return-void
.end method

.method public static setLocationDecimalDigits(I)V
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->getInstance()Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->setLocationDecimalDigits(I)V

    return-void
.end method

.method public static setLocationEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->getInstance()Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    move-result-object v0

    iput-boolean p0, v0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->locationEnabled:Z

    return-void
.end method

.method public static useHttps(Z)V
    .locals 1

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    iput-boolean p0, v0, Lcom/octopus/ad/internal/m;->a:Z

    return-void
.end method
