.class public Lz2/vc;
.super Lz2/hc;
.source ""


# instance fields
.field private OooO0O0:Lz2/gd;

.field private OooO0OO:J


# direct methods
.method public constructor <init>(Lz2/gd;)V
    .locals 0

    invoke-direct {p0}, Lz2/hc;-><init>()V

    iput-object p1, p0, Lz2/vc;->OooO0O0:Lz2/gd;

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

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/cyjh/http/bean/response/NoticeBean;

    invoke-static {p1, v0}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/NoticeBean;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/cyjh/http/bean/response/NoticeBean;->ClientTimestamp:J

    iget-wide v2, p0, Lz2/vc;->OooO0OO:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lz2/vc;->OooO0O0:Lz2/gd;

    invoke-interface {v0, p1}, Lz2/gd;->OooO0OO(Lcom/cyjh/http/bean/response/NoticeBean;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lz2/vc;->OooO0O0:Lz2/gd;

    :goto_0
    invoke-interface {p1}, Lz2/gd;->onFail()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lz2/vc;->OooO0O0:Lz2/gd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.cyjh.share.NoticeDetailsPresenter--uiDataSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zzz"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz2/vc;->OooO0O0:Lz2/gd;

    invoke-interface {p1}, Lz2/gd;->onFail()V

    :goto_1
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.cyjh.share.NoticeDetailsPresenter--onErrorResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zzz"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz2/vc;->OooO0O0:Lz2/gd;

    invoke-interface {p1}, Lz2/gd;->onFail()V

    return-void
.end method

.method public OooO0OO(Landroid/content/Context;J)V
    .locals 3

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    sget-wide v1, Lz2/gc;->OooO0o:J

    iput-wide v1, p0, Lz2/vc;->OooO0OO:J

    new-instance v1, Lcom/cyjh/http/bean/request/NoticeDetailsRequestParams;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/NoticeDetailsRequestParams;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-wide p2, v1, Lcom/cyjh/http/bean/request/NoticeDetailsRequestParams;->NoticeId:J

    const-string p2, "Notice"

    const-string p3, "Detail"

    invoke-static {p2, p3}, Lz2/j3;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
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
