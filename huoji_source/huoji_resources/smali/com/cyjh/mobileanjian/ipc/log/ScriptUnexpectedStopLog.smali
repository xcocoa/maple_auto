.class public Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;
.super Lz2/ke;
.source ""


# static fields
.field private static final OooO0o:Ljava/lang/String; = "SetErrorLog"


# instance fields
.field private OooO0Oo:I

.field private OooO0o0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lz2/ke;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static OooO0OO(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_1
    const-string p0, "WIFI"

    return-object p0

    :cond_2
    const-string p0, "MOBILE"

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "No Network"

    return-object p0
.end method


# virtual methods
.method public final OooO00o()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api4.mobileanjian.com/api"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SetErrorLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz2/ke;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public final OooO0O0()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lz2/le;->OooO00o()Lz2/le;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "PhoneModel"

    iget-object v4, v0, Lz2/le;->OooO00o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "MACMD5"

    iget-object v4, v0, Lz2/le;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AndroidVersion"

    iget-object v4, v0, Lz2/le;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ROM"

    iget-object v4, v0, Lz2/le;->OooO0Oo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "PackageName"

    iget-object v4, v0, Lz2/le;->OooO0o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AppID"

    iget-object v4, v0, Lz2/le;->OooO0oo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "AppVersion"

    iget-object v4, v0, Lz2/le;->OooOO0:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "Version"

    iget-object v4, v0, Lz2/le;->OooOO0O:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "IsFree"

    iget-boolean v0, v0, Lz2/le;->OooO:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "NetworkType"

    iget-object v3, p0, Lz2/ke;->OooO00o:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const-string v3, "UNKNOWN"

    goto :goto_2

    :cond_2
    const-string v3, "WIFI"

    goto :goto_2

    :cond_3
    const-string v3, "MOBILE"

    goto :goto_2

    :cond_4
    :goto_1
    const-string v3, "No Network"

    :goto_2
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "MqmCode"

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->OooO0Oo:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "MqmMessage"

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->OooO0Oo:I

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/stuff/MqmCode;->getMessageFromCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ExtraMessage"

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->OooO0o0:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExtraLog(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;
    .locals 0

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->OooO0o0:Ljava/lang/String;

    return-object p0
.end method

.method public setMqmCode(I)Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;
    .locals 0

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/log/ScriptUnexpectedStopLog;->OooO0Oo:I

    return-object p0
.end method
