.class public abstract Lz2/hc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/md;
.implements Lz2/nd;


# instance fields
.field public OooO00o:Lz2/od;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/od;

    invoke-direct {v0, p0, p0}, Lz2/od;-><init>(Lz2/nd;Lz2/md;)V

    iput-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    return-void
.end method


# virtual methods
.method public abstract OooO0O0(Ljava/lang/String;)V
.end method

.method public OooO0Oo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/cyjh/http/bean/response/BaseInfo;

    invoke-static {p1, v1}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/BaseInfo;

    iget-object v1, p0, Lz2/hc;->OooO00o:Lz2/od;

    iget-object v1, v1, Lz2/od;->Ooooo00:Ljava/lang/String;

    iget-object v2, p1, Lcom/cyjh/http/bean/response/BaseInfo;->Data:Ljava/lang/String;

    iget p1, p1, Lcom/cyjh/http/bean/response/BaseInfo;->R:I

    invoke-static {v1, v2, p1}, Lz2/de;->OooO00o(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/cyjh/http/bean/SignaClass;

    invoke-static {p1, v1}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/SignaClass;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/cyjh/http/bean/SignaClass;->SignContent:Ljava/lang/String;

    iget-object v2, p1, Lcom/cyjh/http/bean/SignaClass;->Signature:Ljava/lang/String;

    invoke-static {v1, v2}, Lz2/de;->OooO0o0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/cyjh/http/bean/SignaClass;->SignContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public OooO0o0(Lcom/android/volley/VolleyError;)V
    .locals 4

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0}, Lz2/gc;->OooO0O0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v1, p1, Lcom/android/volley/ServerError;

    if-eqz v1, :cond_0

    sget v1, Lcom/cyjh/http/R$string;->network_server_error:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/android/volley/NoConnectionError;

    if-eqz v1, :cond_1

    sget v1, Lcom/cyjh/http/R$string;->network_no_connection_error:I

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/android/volley/NetworkError;

    if-eqz v1, :cond_2

    sget v1, Lcom/cyjh/http/R$string;->network_network_error:I

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/volley/ParseError;

    if-eqz v1, :cond_3

    sget v1, Lcom/cyjh/http/R$string;->network_parse_error:I

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v1, :cond_4

    sget v1, Lcom/cyjh/http/R$string;->network_auth_failure_error:I

    goto :goto_0

    :cond_4
    instance-of v1, p1, Lcom/android/volley/TimeoutError;

    if-eqz v1, :cond_5

    sget v1, Lcom/cyjh/http/R$string;->network_timeout_error:I

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lz2/o00Oo0;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/volley/VolleyError;->networkResponse:Lz2/o00Oo0;

    iget v3, v3, Lz2/o00Oo0;->OooO00o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/volley/VolleyError;->networkResponse:Lz2/o00Oo0;

    iget p1, p1, Lz2/o00Oo0;->OooO00o:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\t\t"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    sget p1, Lcom/cyjh/http/R$string;->network_again_error:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {p0, v1}, Lz2/hc;->OooO0O0(Ljava/lang/String;)V

    :cond_8
    return-void
.end method
