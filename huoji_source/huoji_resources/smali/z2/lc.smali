.class public Lz2/lc;
.super Lz2/hc;
.source ""


# instance fields
.field private OooO0O0:J

.field private OooO0OO:Lz2/cd;


# direct methods
.method public constructor <init>(Lz2/cd;)V
    .locals 0

    invoke-direct {p0}, Lz2/hc;-><init>()V

    iput-object p1, p0, Lz2/lc;->OooO0OO:Lz2/cd;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 5

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/http/bean/response/AppStartupResponse;

    invoke-static {p1, v0}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/AppStartupResponse;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lz2/lc;->OooO0O0:J

    iget-wide v2, p1, Lcom/cyjh/http/bean/response/AppStartupResponse;->ClientTimestamp:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lz2/lc;->OooO0OO:Lz2/cd;

    invoke-interface {v0, p1}, Lz2/cd;->OooOOo(Lcom/cyjh/http/bean/response/AppStartupResponse;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lz2/lc;->OooO0OO:Lz2/cd;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/gc;->OooO0O0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/http/R$string;->timestamp_diff_except:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lz2/cd;->OooOOo0(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lz2/lc;->OooO0OO:Lz2/cd;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lz2/lc;->OooO0OO:Lz2/cd;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/gc;->OooO0O0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cyjh/http/R$string;->json_data_null:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lz2/lc;->OooO0OO:Lz2/cd;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lz2/cd;->OooOOo0(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.cyjh.share.AppStartupPresenter--onErrorResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zzz"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/lc;->OooO0OO:Lz2/cd;

    invoke-interface {v0, p1}, Lz2/cd;->OooOOo0(Ljava/lang/String;)V

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

    iput-wide v1, p0, Lz2/lc;->OooO0O0:J

    const-string v1, "StartApp"

    invoke-static {v1}, Lz2/j3;->OooO0oO(Ljava/lang/String;)Landroid/net/Uri$Builder;

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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1, v0}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public OooO0o()V
    .locals 2

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
