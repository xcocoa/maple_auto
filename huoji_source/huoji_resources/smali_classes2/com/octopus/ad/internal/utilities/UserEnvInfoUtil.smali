.class public Lcom/octopus/ad/internal/utilities/UserEnvInfoUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNetworkClass(Landroid/content/Context;)Lcom/octopus/ad/b/e$d;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/octopus/ad/b/e$d;->e:Lcom/octopus/ad/b/e$d;

    return-object p0

    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/octopus/ad/b/e$d;->f:Lcom/octopus/ad/b/e$d;

    goto :goto_1

    :pswitch_0
    sget-object p0, Lcom/octopus/ad/b/e$d;->c:Lcom/octopus/ad/b/e$d;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/octopus/ad/b/e$d;->b:Lcom/octopus/ad/b/e$d;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/octopus/ad/b/e$d;->g:Lcom/octopus/ad/b/e$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    sget-object p0, Lcom/octopus/ad/b/e$d;->f:Lcom/octopus/ad/b/e$d;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static isUsingWifi(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0
.end method

.method public static retrieveUserEnvInfo(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->getInstance()Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    move-result-object v0

    :try_start_0
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/UserEnvInfoUtil;->getNetworkClass(Landroid/content/Context;)Lcom/octopus/ad/b/e$d;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->net:Lcom/octopus/ad/b/e$d;

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "46000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46007"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "46001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/octopus/ad/b/e$c;->c:Lcom/octopus/ad/b/e$c;

    :goto_0
    iput-object p0, v0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->isp:Lcom/octopus/ad/b/e$c;

    goto :goto_2

    :cond_1
    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/octopus/ad/b/e$c;->d:Lcom/octopus/ad/b/e$c;

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p0, Lcom/octopus/ad/b/e$c;->b:Lcom/octopus/ad/b/e$c;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/octopus/ad/b/e$c;->a:Lcom/octopus/ad/b/e$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    const-string p0, "0.0.0.0"

    iput-object p0, v0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->ip:Ljava/lang/String;

    :cond_5
    return-void
.end method
