.class public Lz2/hh;
.super Lz2/hc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/hh$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO0OO:Ljava/lang/String; = "hh"

.field private static OooO0Oo:Lz2/hh;


# instance fields
.field private OooO0O0:Lz2/hh$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/hc;-><init>()V

    return-void
.end method

.method public static OooO0o()Lz2/hh;
    .locals 2

    sget-object v0, Lz2/hh;->OooO0Oo:Lz2/hh;

    if-nez v0, :cond_1

    const-class v0, Lz2/hh;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/hh;->OooO0Oo:Lz2/hh;

    if-nez v1, :cond_0

    new-instance v1, Lz2/hh;

    invoke-direct {v1}, Lz2/hh;-><init>()V

    sput-object v1, Lz2/hh;->OooO0Oo:Lz2/hh;

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
    sget-object v0, Lz2/hh;->OooO0Oo:Lz2/hh;

    return-object v0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    check-cast p1, Ljava/lang/String;

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

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/elf/studio/enity/IMResultInfo;

    invoke-static {p1, v0}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/elf/studio/enity/IMResultInfo;

    iget-object v0, p0, Lz2/hh;->OooO0O0:Lz2/hh$OooO00o;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lz2/hh$OooO00o;->OooO0O0(Lcom/elf/studio/enity/IMResultInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/hh;->OooO0O0:Lz2/hh$OooO00o;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1, v0}, Lz2/hh$OooO00o;->OooO00o(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lz2/hh;->OooO0OO:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onErrorResponse --> exception message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/hh;->OooO0O0:Lz2/hh$OooO00o;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Lz2/hh$OooO00o;->OooO00o(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public OooO0OO(Landroid/content/Context;Lcom/elf/studio/enity/IMRequestInfo;Lz2/hh$OooO00o;)V
    .locals 2

    :try_start_0
    iput-object p3, p0, Lz2/hh;->OooO0O0:Lz2/hh$OooO00o;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p3

    invoke-virtual {p3, p1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object p3

    new-instance v0, Lcom/elf/studio/enity/IMRequestInfo;

    invoke-direct {v0, p3}, Lcom/elf/studio/enity/IMRequestInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/elf/studio/enity/IMRequestInfo;->ScriptId:Ljava/lang/String;

    iput-object p2, v0, Lcom/elf/studio/enity/IMRequestInfo;->ScriptId:Ljava/lang/String;

    :cond_0
    sget-object p2, Lz2/j3;->OooOOOo:Ljava/lang/String;

    const-string p3, "AppScriptInstance"

    const-string v1, "CloudIMInit"

    invoke-static {p2, p3, v1}, Lz2/j3;->OooO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p3

    invoke-virtual {p3, p2, v0}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public OooO0oO()V
    .locals 2

    iget-object v0, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/od;->OooOOO(Ljava/lang/Object;)V

    return-void
.end method
