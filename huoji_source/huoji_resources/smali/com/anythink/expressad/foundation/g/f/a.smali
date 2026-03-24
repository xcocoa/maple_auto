.class public final Lcom/anythink/expressad/foundation/g/f/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/foundation/g/f/a$a;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:J

.field private static c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/f/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/expressad/foundation/g/f/a;
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/foundation/g/f/a$a;->a()Lcom/anythink/expressad/foundation/g/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lcom/anythink/expressad/foundation/g/f/a;->b:J

    return-wide v0
.end method

.method private declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/anythink/expressad/foundation/g/f/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/anythink/expressad/foundation/g/f/a;->a:J

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    sput-wide v0, Lcom/anythink/expressad/foundation/g/f/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-wide v0, Lcom/anythink/expressad/foundation/g/f/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    sget-wide v0, Lcom/anythink/expressad/foundation/g/f/a;->c:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v4, Lcom/anythink/expressad/foundation/g/f/a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    :try_start_1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    sget-wide v6, Lcom/anythink/expressad/foundation/g/f/a;->c:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    div-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/anythink/expressad/foundation/g/f/a;->b:J

    goto :goto_0

    :cond_0
    sput-wide v4, Lcom/anythink/expressad/foundation/g/f/a;->b:J

    goto :goto_0

    :cond_1
    sput-wide v2, Lcom/anythink/expressad/foundation/g/f/a;->b:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/f/a;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    sput-wide v0, Lcom/anythink/expressad/foundation/g/f/a;->c:J

    sput-wide v0, Lcom/anythink/expressad/foundation/g/f/a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
