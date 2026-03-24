.class public Lz2/gc;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static OooO0o:J

.field private static OooO0o0:Lz2/gc;


# instance fields
.field private OooO00o:Landroid/content/Context;

.field public OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

.field public OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;

.field public OooO0Oo:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/http/bean/request/DeviceInfo;

    invoke-direct {v0}, Lcom/cyjh/http/bean/request/DeviceInfo;-><init>()V

    iput-object v0, p0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    return-void
.end method

.method public static OooO0OO()Lz2/gc;
    .locals 2

    sget-object v0, Lz2/gc;->OooO0o0:Lz2/gc;

    if-nez v0, :cond_1

    const-class v0, Lz2/gc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/gc;->OooO0o0:Lz2/gc;

    if-nez v1, :cond_0

    new-instance v1, Lz2/gc;

    invoke-direct {v1}, Lz2/gc;-><init>()V

    sput-object v1, Lz2/gc;->OooO0o0:Lz2/gc;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lz2/gc;->OooO0o0:Lz2/gc;

    return-object v0
.end method

.method private OooO0Oo()I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private OooO0oO(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p2}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {p1, p2, p3}, Lz2/de;->OooO0O0(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cyjh/http/bean/request/BaseRequestValueInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/cyjh/http/bean/SignaClass;

    invoke-direct {v0}, Lcom/cyjh/http/bean/SignaClass;-><init>()V

    invoke-static {p2}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/cyjh/http/bean/SignaClass;->SignContent:Ljava/lang/String;

    invoke-static {p2}, Lz2/de;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/cyjh/http/bean/SignaClass;->Signature:Ljava/lang/String;

    invoke-direct {p0}, Lz2/gc;->OooO0Oo()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lz2/gc;->OooO0oO(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "R"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lz2/j3;->OooO0O0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "V"

    sget-object p2, Lz2/j3;->OooO0O0:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;
    .locals 5

    new-instance v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    invoke-direct {v0}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;-><init>()V

    iget-object v1, p0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v1, v1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1}, Lz2/ae;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/DeviceInfo;

    move-result-object p1

    iget-object v1, p0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v2, p1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    iput-object v2, v1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    iput-object p1, v1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBaseRequestParams1 mDeviceInfo: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    invoke-virtual {v1}, Lcom/cyjh/http/bean/request/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    iget-object v1, p1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->DeviceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/cyjh/http/bean/request/DeviceInfo;->DeviceCode:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->DeviceCode:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBaseRequestParams2 mDeviceInfo: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lz2/gc;->OooO0O0:Lcom/cyjh/http/bean/request/DeviceInfo;

    invoke-virtual {v1}, Lcom/cyjh/http/bean/request/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/j3;->OooOO0o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->TemplateVersion:Ljava/lang/String;

    invoke-static {}, Lz2/j3;->OooO0o()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppId:J

    invoke-static {}, Lz2/j3;->OooOOO0()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->TemplateFileId:J

    invoke-static {}, Lz2/a4;->OooO0o0()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    invoke-static {}, Lz2/j3;->OooO0OO()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppInfo:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lz2/gc;->OooO0o:J

    iput-wide v1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    sget-object p1, Lz2/j3;->OooO0O0:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lz2/j3;->OooO0O0:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->V:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public OooO0O0()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lz2/gc;->OooO00o:Landroid/content/Context;

    return-object v0
.end method

.method public OooO0o(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lz2/gc;->OooO00o:Landroid/content/Context;

    return-void
.end method

.method public OooO0o0()Z
    .locals 2

    iget v0, p0, Lz2/gc;->OooO0Oo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public OooO0oo(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/cyjh/http/bean/request/BaseRequestValueInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance p1, Lcom/cyjh/http/bean/SignaClass;

    invoke-direct {p1}, Lcom/cyjh/http/bean/SignaClass;-><init>()V

    invoke-static {p2}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/cyjh/http/bean/SignaClass;->SignContent:Ljava/lang/String;

    invoke-static {p2}, Lz2/de;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/cyjh/http/bean/SignaClass;->Signature:Ljava/lang/String;

    invoke-direct {p0}, Lz2/gc;->OooO0Oo()I

    move-result p2

    invoke-static {p1}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/cyjh/mqm/ElfinNativeJni;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "R"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public OooOO0(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "?AppId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p2, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, "&AppVersion="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p2, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "&PlatformId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lz2/dc;->OooO00o()Lz2/dc;

    move-result-object p1

    invoke-virtual {p1}, Lz2/dc;->OooO0O0()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
