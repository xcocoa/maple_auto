.class public Lz2/yc;
.super Lz2/hc;
.source ""


# instance fields
.field private OooO0O0:Lz2/kd;


# direct methods
.method public constructor <init>(Lz2/kd;)V
    .locals 0

    invoke-direct {p0}, Lz2/hc;-><init>()V

    iput-object p1, p0, Lz2/yc;->OooO0O0:Lz2/kd;

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnbindRegisterCodePresenter--uiDataSuccess--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    check-cast p1, Ljava/lang/String;

    const-class v0, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    invoke-static {p1, v0}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/RegCodeInfoResponse;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/yc;->OooO0O0:Lz2/kd;

    invoke-interface {v0, p1}, Lz2/kd;->OooO(Lcom/cyjh/http/bean/response/RegCodeInfoResponse;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/yc;->OooO0O0:Lz2/kd;

    const-string v0, "\u89e3\u7ed1\u6ce8\u518c\u7801\u89e3\u6790Json\u5f02\u5e38"

    invoke-interface {p1, v0}, Lz2/kd;->OooO0Oo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lz2/yc;->OooO0O0:Lz2/kd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u7ed1\u6ce8\u518c\u7801\u89e3\u6790\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lz2/kd;->OooO0Oo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnbindRegisterCodePresenter--onErrorResponse--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zzz"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/yc;->OooO0O0:Lz2/kd;

    invoke-interface {v0, p1}, Lz2/kd;->OooO0Oo(Ljava/lang/String;)V

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

.method public OooO0o(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/UnbindRegCodeRequestInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/UnbindRegCodeRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p1, v1, Lcom/cyjh/http/bean/request/UnbindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    const-string p1, "Script"

    const-string v0, "UnbindRegCode"

    invoke-static {p1, v0}, Lz2/j3;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2, p1, v0}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
