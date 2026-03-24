.class public Lz2/uc;
.super Lz2/hc;
.source ""


# instance fields
.field private OooO0O0:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/hc;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 5

    :try_start_0
    check-cast p1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    sget-wide v0, Lz2/gc;->OooO0o:J

    iget-wide v2, p0, Lz2/uc;->OooO0O0:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    invoke-static {p1, v1}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/AliCloudServerResponse;

    iput-object p1, v0, Lz2/gc;->OooO0OO:Lcom/cyjh/http/bean/response/AliCloudServerResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetTokenAliCloudPresenter--uiDataSuccess exception-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zzz"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetTokenAliCloudPresenter--onErrorResponse--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zzz"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OooO0OO(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    sget-wide v1, Lz2/gc;->OooO0o:J

    iput-wide v1, p0, Lz2/uc;->OooO0O0:J

    const-string v1, "AliCloud"

    const-string v2, "GetStorageToken"

    invoke-static {v1, v2}, Lz2/j3;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lz2/hc;->OooO00o:Lz2/od;

    const-class v3, Lz2/uc;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v0}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OooO0o()V
    .locals 2

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    const-class v1, Lz2/uc;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    return-void
.end method
