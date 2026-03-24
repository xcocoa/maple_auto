.class public Lcom/umeng/commonsdk/stateless/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:[B

.field private h:[B

.field private i:I

.field private j:I

.field private k:I

.field private l:[B

.field private m:[B

.field private n:Z


# direct methods
.method private constructor <init>([BLjava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->a:[B

    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->c:I

    const-string v1, "1.0"

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->g:[B

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->h:[B

    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->i:I

    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    iput v0, p0, Lcom/umeng/commonsdk/stateless/c;->k:I

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    iput-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->m:[B

    iput-boolean v0, p0, Lcom/umeng/commonsdk/stateless/c;->n:Z

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/umeng/commonsdk/stateless/c;->e:Ljava/lang/String;

    array-length p2, p1

    iput p2, p0, Lcom/umeng/commonsdk/stateless/c;->k:I

    invoke-static {p1}, Lcom/umeng/commonsdk/stateless/f;->a([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p2, p1

    iput p2, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    iput-object p3, p0, Lcom/umeng/commonsdk/stateless/c;->m:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "entity is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/stateless/c;
    .locals 8

    const-string v0, "walle"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[stateless] build envelope, raw is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "m app key is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "device id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mac is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v5}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/umeng/commonsdk/stateless/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v5, p2, p1, v3}, Lcom/umeng/commonsdk/stateless/c;-><init>([BLjava/lang/String;[B)V

    invoke-virtual {v5}, Lcom/umeng/commonsdk/stateless/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception p1

    new-array p2, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stateless] build envelope, e is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-static {v0, p2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a([BI)[B
    .locals 10

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->m:[B

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/f;->b([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->b([B)[B

    move-result-object v1

    array-length v2, v0

    mul-int/lit8 v3, v2, 0x2

    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v2, :cond_0

    mul-int/lit8 v8, v6, 0x2

    aget-byte v9, v1, v6

    aput-byte v9, v4, v8

    add-int/2addr v8, v7

    aget-byte v7, v0, v6

    aput-byte v7, v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    aput-byte v1, v4, v0

    sub-int v1, v3, v0

    sub-int/2addr v1, v7

    array-length v2, p1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v7

    aget-byte v2, p1, v2

    aput-byte v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    new-array p1, p1, [B

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v5

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v7

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    const/4 v0, 0x3

    ushr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    :goto_2
    if-ge v5, v3, :cond_2

    aget-byte p2, v4, v5

    rem-int/lit8 v0, v5, 0x4

    aget-byte v0, p1, v0

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    return-object v4
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;[B)Lcom/umeng/commonsdk/stateless/c;
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/umeng/commonsdk/stateless/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, p2, p1, v0}, Lcom/umeng/commonsdk/stateless/c;-><init>([BLjava/lang/String;[B)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/umeng/commonsdk/stateless/c;->a(Z)V

    invoke-virtual {v2}, Lcom/umeng/commonsdk/stateless/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/umeng/commonsdk/proguard/e;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private c()[B
    .locals 5

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->a:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v2, v1

    invoke-direct {p0, v0, v2}, Lcom/umeng/commonsdk/stateless/c;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private d()[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->g:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/stateless/f;->b([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    :cond_0
    iget-boolean v0, p0, Lcom/umeng/commonsdk/stateless/c;->n:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    new-array v1, v0, [B

    :try_start_0
    iget-object v2, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/stateless/f;->a([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/stateless/c;->a([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->g:[B

    invoke-direct {p0}, Lcom/umeng/commonsdk/stateless/c;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/stateless/c;->h:[B

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/umeng/commonsdk/stateless/c;->n:Z

    return-void
.end method

.method public b()[B
    .locals 2

    new-instance v0, Lcom/umeng/commonsdk/stateless/b;

    invoke-direct {v0}, Lcom/umeng/commonsdk/stateless/b;-><init>()V

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->b(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->f:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->c(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->i:I

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->a(I)Lcom/umeng/commonsdk/stateless/b;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->j:I

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->b(I)Lcom/umeng/commonsdk/stateless/b;

    iget v1, p0, Lcom/umeng/commonsdk/stateless/c;->k:I

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->c(I)Lcom/umeng/commonsdk/stateless/b;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->l:[B

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->a([B)Lcom/umeng/commonsdk/stateless/b;

    iget-boolean v1, p0, Lcom/umeng/commonsdk/stateless/c;->n:Z

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->d(I)Lcom/umeng/commonsdk/stateless/b;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->g:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->d(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    iget-object v1, p0, Lcom/umeng/commonsdk/stateless/c;->h:[B

    invoke-static {v1}, Lcom/umeng/commonsdk/stateless/f;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/stateless/b;->e(Ljava/lang/String;)Lcom/umeng/commonsdk/stateless/b;

    :try_start_0
    new-instance v1, Lcom/umeng/commonsdk/proguard/aj;

    invoke-direct {v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>()V

    invoke-virtual {v1, v0}, Lcom/umeng/commonsdk/proguard/aj;->a(Lcom/umeng/commonsdk/proguard/aa;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
