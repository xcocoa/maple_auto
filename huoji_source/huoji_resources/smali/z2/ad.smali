.class public Lz2/ad;
.super Lz2/hc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ad$OooO00o;
    }
.end annotation


# static fields
.field private static OooO0OO:Lz2/ad;


# instance fields
.field private OooO0O0:Lz2/ad$OooO00o;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/hc;-><init>()V

    return-void
.end method

.method public static OooO0o()Lz2/ad;
    .locals 2

    sget-object v0, Lz2/ad;->OooO0OO:Lz2/ad;

    if-nez v0, :cond_1

    const-class v0, Lz2/ad;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/ad;->OooO0OO:Lz2/ad;

    if-nez v1, :cond_0

    new-instance v1, Lz2/ad;

    invoke-direct {v1}, Lz2/ad;-><init>()V

    sput-object v1, Lz2/ad;->OooO0OO:Lz2/ad;

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
    sget-object v0, Lz2/ad;->OooO0OO:Lz2/ad;

    return-object v0
.end method

.method private OooO0oo(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/ad;->OooO0O0:Lz2/ad$OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lz2/ad$OooO00o;->OooO00o(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO(Lz2/ad$OooO00o;)Lz2/ad;
    .locals 0

    iput-object p1, p0, Lz2/ad;->OooO0O0:Lz2/ad$OooO00o;

    return-object p0
.end method

.method public OooO00o(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    :try_start_0
    check-cast p1, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "Message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lz2/ad;->OooO0O0:Lz2/ad$OooO00o;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lz2/ad$OooO00o;->OooO0O0(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v1}, Lz2/ad;->OooO0oo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "\u540e\u53f0\u8fd4\u56de\u6570\u636e\u4e3a\u7a7a\uff01"

    :goto_0
    invoke-direct {p0, v0, p1}, Lz2/ad;->OooO0oo(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lz2/ad;->OooO0oo(ILjava/lang/String;)V

    return-void
.end method

.method public OooO0OO()V
    .locals 2

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public OooO0oO()V
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

.method public OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lz2/ad$OooO00o;)V
    .locals 1

    :try_start_0
    iput-object p4, p0, Lz2/ad;->OooO0O0:Lz2/ad$OooO00o;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p4

    invoke-virtual {p4, p1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object p4

    new-instance v0, Lcom/cyjh/http/bean/request/UploadInstanceDataRequestInfo;

    invoke-direct {v0, p4}, Lcom/cyjh/http/bean/request/UploadInstanceDataRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p2, v0, Lcom/cyjh/http/bean/request/UploadInstanceDataRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object p3, v0, Lcom/cyjh/http/bean/request/UploadInstanceDataRequestInfo;->InstanceData:Ljava/lang/String;

    sget-object p2, Lz2/j3;->OooOOOo:Ljava/lang/String;

    const-string p3, "AppScriptInstance"

    const-string p4, "UploadInstanceData"

    invoke-static {p2, p3, p4}, Lz2/j3;->OooO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    iget-object p4, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p1, v0, p2, p3}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
