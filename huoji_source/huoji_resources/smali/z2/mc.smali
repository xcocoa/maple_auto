.class public Lz2/mc;
.super Lz2/hc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/mc$OooO0O0;,
        Lz2/mc$OooO00o;
    }
.end annotation


# static fields
.field private static OooO0Oo:Lz2/mc;


# instance fields
.field private OooO0O0:Lz2/mc$OooO00o;

.field private OooO0OO:Lz2/mc$OooO0O0;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/hc;-><init>()V

    return-void
.end method

.method private OooO0OO()V
    .locals 1

    iget-object v0, p0, Lz2/mc;->OooO0OO:Lz2/mc$OooO0O0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/mc$OooO0O0;->OooO0O0()V

    :cond_0
    return-void
.end method

.method public static OooO0oo()Lz2/mc;
    .locals 2

    sget-object v0, Lz2/mc;->OooO0Oo:Lz2/mc;

    if-nez v0, :cond_1

    const-class v0, Lz2/mc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/mc;->OooO0Oo:Lz2/mc;

    if-nez v1, :cond_0

    new-instance v1, Lz2/mc;

    invoke-direct {v1}, Lz2/mc;-><init>()V

    sput-object v1, Lz2/mc;->OooO0Oo:Lz2/mc;

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
    sget-object v0, Lz2/mc;->OooO0Oo:Lz2/mc;

    return-object v0
.end method


# virtual methods
.method public OooO(Landroid/content/Context;IIJ)V
    .locals 2

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput p3, v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;->Action:I

    iput p2, v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;->BussinessId:I

    iput-wide p4, v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;->RelationId:J

    invoke-static {}, Lz2/dc;->OooO00o()Lz2/dc;

    move-result-object p2

    invoke-virtual {p2}, Lz2/dc;->OooO0O0()I

    move-result p2

    iput p2, v1, Lcom/cyjh/http/bean/request/StatisticsRequestParamsInfo;->CloudPhoneType:I

    const-string p2, "Statistics"

    invoke-static {p2}, Lz2/j3;->OooO0oO(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    iget-object p4, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p1, p5, p2, p3}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public OooO00o(Ljava/lang/Object;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lz2/mc;->OooO0O0:Lz2/mc$OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/mc$OooO00o;->OooO00o(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lz2/mc;->OooO0OO:Lz2/mc$OooO0O0;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    invoke-static {v0, v1}, Lz2/n4;->OooO0o0(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;

    sget-wide v1, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->sClientTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Data:Lcom/cyjh/http/bean/response/ScriptStartRunInfo;

    iget-wide v5, v5, Lcom/cyjh/http/bean/response/ScriptStartRunInfo;->ClientTimestamp:J

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    const/16 p1, 0x25a

    iput p1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Code:I

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p1

    invoke-virtual {p1}, Lz2/gc;->OooO0O0()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/cyjh/http/R$string;->check_sign_fail:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->Message:Ljava/lang/String;

    invoke-static {v0}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-wide v3, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->sClientTime:J

    :cond_1
    iget-object v0, p0, Lz2/mc;->OooO0OO:Lz2/mc$OooO0O0;

    invoke-interface {v0, p1}, Lz2/mc$OooO0O0;->OooO00o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lz2/mc;->OooO0OO()V

    :cond_2
    :goto_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lz2/mc;->OooO0OO()V

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
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/mc;->OooO0O0:Lz2/mc$OooO00o;

    iput-object v0, p0, Lz2/mc;->OooO0OO:Lz2/mc$OooO0O0;

    return-void
.end method

.method public OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/ScriptStartRunParams;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/ScriptStartRunParams;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p2, v1, Lcom/cyjh/http/bean/request/ScriptStartRunParams;->RegCode:Ljava/lang/String;

    iput-object p3, v1, Lcom/cyjh/http/bean/request/ScriptStartRunParams;->ScriptId:Ljava/lang/String;

    iget-wide p2, v1, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->ClientTimestamp:J

    sput-wide p2, Lcom/cyjh/http/bean/response/ScriptStartRunResponse;->sClientTime:J

    const-string p2, "Script"

    invoke-static {p2, p4}, Lz2/j3;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "scriptStartRunParams:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cyjh/http/bean/request/ScriptStartRunParams;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "url1:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object p3

    invoke-virtual {p3, p2, v1}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url222:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p4, "6s0r0t06030q09050s0o03050s6s070t0r"

    const/16 v0, -0xe

    invoke-static {p4, v0}, Lz2/be;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lz2/be;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "9l02083k3m39389l303m3k"

    const/4 v0, -0x7

    invoke-static {p4, v0}, Lz2/be;->OooO00o(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lz2/be;->OooO0Oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "V"

    const/16 v0, 0x11

    invoke-static {v0}, Lz2/be;->OooO0O0(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p4, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

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

.method public OooOO0O(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/ScriptStopRunParams;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/ScriptStopRunParams;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    iput-object p2, v1, Lcom/cyjh/http/bean/request/ScriptStopRunParams;->RunGuid:Ljava/lang/String;

    const-string p2, "Script"

    const-string v0, "Stop"

    invoke-static {p2, v0}, Lz2/j3;->OooO0oo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lz2/gc;->OooO(Ljava/lang/String;Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2, v0}, Lz2/od;->OooOO0(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AppStatisticsPresenter--loadScriptStopRunStatistics:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zzz"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lz2/mc;->OooO0OO()V

    :goto_0
    return-void
.end method

.method public OooOO0o()V
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

.method public OooOOO(Lz2/mc$OooO0O0;)Lz2/mc;
    .locals 0

    iput-object p1, p0, Lz2/mc;->OooO0OO:Lz2/mc$OooO0O0;

    return-object p0
.end method

.method public OooOOO0(Lz2/mc$OooO00o;)Lz2/mc;
    .locals 0

    iput-object p1, p0, Lz2/mc;->OooO0O0:Lz2/mc$OooO00o;

    return-object p0
.end method
