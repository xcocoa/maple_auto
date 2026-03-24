.class public Lcom/octopus/ad/internal/utilities/DeviceInfoUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ETHERNET_SERVICE:Ljava/lang/String; = "ethernet"

.field public static SCREEN_DECIMAL_DIGITS:I = 0x2


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

.method private static getIdentifiersAndDevType(Landroid/content/Context;Lcom/octopus/ad/internal/utilities/DeviceInfo;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/octopus/ad/b/e$b;->b:Lcom/octopus/ad/b/e$b;

    :goto_0
    iput-object v0, p1, Lcom/octopus/ad/internal/utilities/DeviceInfo;->devType:Lcom/octopus/ad/b/e$b;

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/octopus/ad/b/e$b;->c:Lcom/octopus/ad/b/e$b;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v1, "No permission to access imei"

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/octopus/ad/b/e$b;->b:Lcom/octopus/ad/b/e$b;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/octopus/ad/b/e$b;->c:Lcom/octopus/ad/b/e$b;

    :goto_1
    iput-object p0, p1, Lcom/octopus/ad/internal/utilities/DeviceInfo;->devType:Lcom/octopus/ad/b/e$b;

    :goto_2
    invoke-static {}, Lcom/octopus/ad/utils/b/l;->a()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/octopus/ad/internal/utilities/DeviceInfo;->root:Ljava/lang/String;

    return-void
.end method

.method private static getScreenInformations(Landroid/content/Context;Lcom/octopus/ad/internal/utilities/DeviceInfo;)V
    .locals 6

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/octopus/ad/internal/utilities/DeviceInfo;->resolution:Ljava/lang/String;

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p0, p0

    iget v1, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr p0, v1

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v0

    mul-float v1, v1, v1

    mul-float p0, p0, p0

    add-float/2addr v1, p0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget p0, Lcom/octopus/ad/internal/utilities/DeviceInfoUtil;->SCREEN_DECIMAL_DIGITS:I

    int-to-double v2, p0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "%.2f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/octopus/ad/internal/utilities/DeviceInfo;->screenSize:Ljava/lang/String;

    return-void
.end method

.method private static getSdkUID(Landroid/content/Context;Lcom/octopus/ad/internal/utilities/DeviceInfo;)V
    .locals 2

    sget-object v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->SDK_UID_KEY_NEW:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/octopus/ad/internal/utilities/SPUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/octopus/ad/internal/utilities/DeviceInfo;->sdkUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/octopus/ad/internal/utilities/DeviceInfo;->generateSdkUID(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static retrieveDeviceInfo(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/octopus/ad/internal/utilities/DeviceInfo;->getInstance()Lcom/octopus/ad/internal/utilities/DeviceInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->sdkUID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/DeviceInfoUtil;->getIdentifiersAndDevType(Landroid/content/Context;Lcom/octopus/ad/internal/utilities/DeviceInfo;)V

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/DeviceInfoUtil;->getScreenInformations(Landroid/content/Context;Lcom/octopus/ad/internal/utilities/DeviceInfo;)V

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/utilities/DeviceInfoUtil;->getSdkUID(Landroid/content/Context;Lcom/octopus/ad/internal/utilities/DeviceInfo;)V

    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/utilities/DeviceInfo;->getMarks(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->manufacturer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->manufacturer:Ljava/lang/String;

    const-string v2, "HUAWEI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->manufacturer:Ljava/lang/String;

    const-string v2, "HONOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/octopus/ad/utils/b/l;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->agVercode:Ljava/lang/String;

    invoke-static {p0}, Lcom/octopus/ad/utils/b/l;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->hmsVercode:Ljava/lang/String;

    :cond_2
    const-string v1, "com.tencent.mm"

    invoke-static {p0, v1}, Lcom/octopus/ad/utils/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->wxInstalled:Z

    invoke-static {p0}, Lcom/octopus/ad/utils/b/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/octopus/ad/internal/utilities/DeviceInfo;->appList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
