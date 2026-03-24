.class public Lz2/pc;
.super Lz2/hc;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/pc$OooO00o;
    }
.end annotation


# static fields
.field private static final OooO0OO:Ljava/lang/String; = "pc"

.field private static OooO0Oo:Lz2/pc;


# instance fields
.field private OooO0O0:Lz2/pc$OooO00o;


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

.method public static OooO0o()Lz2/pc;
    .locals 2

    sget-object v0, Lz2/pc;->OooO0Oo:Lz2/pc;

    if-nez v0, :cond_1

    const-class v0, Lz2/pc;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lz2/pc;->OooO0Oo:Lz2/pc;

    if-nez v1, :cond_0

    new-instance v1, Lz2/pc;

    invoke-direct {v1}, Lz2/pc;-><init>()V

    sput-object v1, Lz2/pc;->OooO0Oo:Lz2/pc;

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
    sget-object v0, Lz2/pc;->OooO0Oo:Lz2/pc;

    return-object v0
.end method

.method private OooO0oo(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/pc;->OooO0O0:Lz2/pc$OooO00o;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lz2/pc$OooO00o;->OooO00o(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lz2/gc;->OooO0OO()Lz2/gc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/gc;->OooO00o(Landroid/content/Context;)Lcom/cyjh/http/bean/request/BaseRequestValueInfo;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;

    invoke-direct {v1, v0}, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    const/4 v0, 0x1

    iput v0, v1, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->IsDDYun:I

    iput v0, v1, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->IsChargeStatistics:I

    new-instance v0, Lcom/cyjh/http/bean/request/DdyStatisticsData;

    const-string v2, "Statistics/Daily"

    invoke-direct {v0, v2, v1}, Lcom/cyjh/http/bean/request/DdyStatisticsData;-><init>(Ljava/lang/String;Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;)V

    invoke-static {v0}, Lz2/n4;->OooO0O0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://localhost:10080/sendData?data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/hc;->OooO00o:Lz2/od;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lz2/od;->OooO0oO(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public OooO00o(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lz2/pc;->OooO0O0:Lz2/pc$OooO00o;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lz2/pc$OooO00o;->onSuccess()V

    :cond_0
    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lz2/pc;->OooO0oo(ILjava/lang/String;)V

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

.method public OooOO0(Lz2/pc$OooO00o;)Lz2/pc;
    .locals 0

    iput-object p1, p0, Lz2/pc;->OooO0O0:Lz2/pc$OooO00o;

    return-object p0
.end method
