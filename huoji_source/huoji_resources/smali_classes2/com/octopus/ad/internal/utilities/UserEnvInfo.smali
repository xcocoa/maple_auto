.class public Lcom/octopus/ad/internal/utilities/UserEnvInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sUserEnvInfoInstance:Lcom/octopus/ad/internal/utilities/UserEnvInfo;


# instance fields
.field public ip:Ljava/lang/String;

.field public isp:Lcom/octopus/ad/b/e$c;

.field public locationEnabled:Z

.field private mLocationDecimalDigits:I

.field public net:Lcom/octopus/ad/b/e$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/octopus/ad/b/e$c;->e:Lcom/octopus/ad/b/e$c;

    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->isp:Lcom/octopus/ad/b/e$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->locationEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->mLocationDecimalDigits:I

    return-void
.end method

.method public static getInstance()Lcom/octopus/ad/internal/utilities/UserEnvInfo;
    .locals 3

    const-class v0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->sUserEnvInfoInstance:Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    invoke-direct {v1}, Lcom/octopus/ad/internal/utilities/UserEnvInfo;-><init>()V

    sput-object v1, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->sUserEnvInfoInstance:Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    sget-object v1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v2, Lcom/octopus/ad/R$string;->init:I

    invoke-static {v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->sUserEnvInfoInstance:Lcom/octopus/ad/internal/utilities/UserEnvInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLocationDecimalDigits()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->mLocationDecimalDigits:I

    return v0
.end method

.method public setLocationDecimalDigits(I)V
    .locals 3

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    iput v0, p0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->mLocationDecimalDigits:I

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of range input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", set location digits after decimal to maximum 6"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    iput p1, p0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->mLocationDecimalDigits:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/octopus/ad/internal/utilities/UserEnvInfo;->mLocationDecimalDigits:I

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", set location digits after decimal to default"

    goto :goto_0

    :goto_1
    return-void
.end method
