.class public Lz2/oc;
.super Lz2/hc;
.source ""


# instance fields
.field private OooO0O0:Lz2/dd;


# direct methods
.method public constructor <init>(Lz2/dd;)V
    .locals 0

    invoke-direct {p0}, Lz2/hc;-><init>()V

    iput-object p1, p0, Lz2/oc;->OooO0O0:Lz2/dd;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;

    invoke-static {p1, v1}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/BindRegCodeResponse;

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/oc;->OooO0O0:Lz2/dd;

    new-instance v1, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    const-string v2, "getData\u4e0b\u53d1json\u6570\u636e\u4e3anull"

    invoke-direct {v1, v0, v2}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lz2/dd;->OooOOOO(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lz2/oc;->OooO0O0:Lz2/dd;

    invoke-interface {v1, p1}, Lz2/dd;->OooOOoo(Lcom/cyjh/http/bean/response/BindRegCodeResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lz2/oc;->OooO0O0:Lz2/dd;

    new-instance v2, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lz2/dd;->OooOOOO(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V

    :goto_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lz2/oc;->OooO0O0:Lz2/dd;

    new-instance v1, Lcom/cyjh/http/bean/response/BaseResponseInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Lcom/cyjh/http/bean/response/BaseResponseInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lz2/dd;->OooOOOO(Lcom/cyjh/http/bean/response/BaseResponseInfo;)V

    return-void
.end method

.method public OooO0OO(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p1, v1, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    iput-object p4, v1, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    iput p3, v1, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->IsSuperpose:I

    const-string p1, "Script"

    const-string p3, "BindRegCode"

    invoke-static {p1, p3}, Lz2/j3;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p3

    invoke-virtual {p3, p1, v1}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    iget-object p4, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p2, v0, p1, p3}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BindRegisterCodePresenter--bindRegCode--"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    return-void
.end method
