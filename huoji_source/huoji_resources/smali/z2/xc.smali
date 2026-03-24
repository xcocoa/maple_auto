.class public Lz2/xc;
.super Lz2/hc;
.source ""


# instance fields
.field private OooO0O0:Lz2/id;


# direct methods
.method public constructor <init>(Lz2/id;)V
    .locals 0

    invoke-direct {p0}, Lz2/hc;-><init>()V

    iput-object p1, p0, Lz2/xc;->OooO0O0:Lz2/id;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    invoke-static {p1, v0}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    iget-object v0, p0, Lz2/xc;->OooO0O0:Lz2/id;

    invoke-interface {v0, p1}, Lz2/id;->OooOOOo(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/xc;->OooO0O0:Lz2/id;

    const-string v0, "bind getData\u4e0b\u53d1json\u6570\u636e\u4e3anull"

    invoke-interface {p1, v0}, Lz2/id;->OooO0oo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lz2/xc;->OooO0O0:Lz2/id;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json\u89e3\u6790\u629b\u5f02\u5e38\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lz2/id;->OooO0oo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/xc;->OooO0O0:Lz2/id;

    invoke-interface {v0, p1}, Lz2/id;->OooO0oo(Ljava/lang/String;)V

    return-void
.end method

.method public OooO0OO()V
    .locals 2

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    return-void
.end method

.method public OooO0o(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p3}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p1, v1, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    iput-object p2, v1, Lcom/cyjh/http/bean/request/QueryRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    const-string p1, "Script"

    const-string p2, "RegCodeIsSuperpose"

    invoke-static {p1, p2}, Lz2/j3;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1, p1, p2}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "QueryRegCodeInfoPresenter--queryRegCodeInfo--"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zzz"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
