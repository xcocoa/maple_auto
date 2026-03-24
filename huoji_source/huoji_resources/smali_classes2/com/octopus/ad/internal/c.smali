.class public Lcom/octopus/ad/internal/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/internal/c$b;,
        Lcom/octopus/ad/internal/c$a;,
        Lcom/octopus/ad/internal/c$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private b:I

.field private final c:Lcom/octopus/ad/internal/c$b;

.field private d:J

.field private e:J

.field private final f:Lcom/octopus/ad/internal/a;

.field private g:Lcom/octopus/ad/internal/o;

.field private h:Lcom/octopus/ad/internal/c$c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/octopus/ad/internal/c;->b:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->d:J

    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->e:J

    sget-object v0, Lcom/octopus/ad/internal/c$c;->a:Lcom/octopus/ad/internal/c$c;

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->h:Lcom/octopus/ad/internal/c$c;

    iput-object p1, p0, Lcom/octopus/ad/internal/c;->f:Lcom/octopus/ad/internal/a;

    new-instance p1, Lcom/octopus/ad/internal/c$b;

    invoke-direct {p1, p0}, Lcom/octopus/ad/internal/c$b;-><init>(Lcom/octopus/ad/internal/c;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/c;->c:Lcom/octopus/ad/internal/c$b;

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/internal/c;->d:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/c$b;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/c;->c:Lcom/octopus/ad/internal/c$b;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/c;Lcom/octopus/ad/internal/o;)Lcom/octopus/ad/internal/o;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/c;->g:Lcom/octopus/ad/internal/o;

    return-object p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/a;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/c;->f:Lcom/octopus/ad/internal/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/internal/c;->d:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/o;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/c;->g:Lcom/octopus/ad/internal/o;

    return-object p0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/internal/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget v2, p0, Lcom/octopus/ad/internal/c;->b:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    throw v1

    :catch_0
    :goto_0
    iput-object v0, p0, Lcom/octopus/ad/internal/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/c;->g:Lcom/octopus/ad/internal/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/o;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->g:Lcom/octopus/ad/internal/o;

    :cond_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/c;->e()V

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->stop:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->e:J

    sget-object v0, Lcom/octopus/ad/internal/c$c;->a:Lcom/octopus/ad/internal/c$c;

    iput-object v0, p0, Lcom/octopus/ad/internal/c;->h:Lcom/octopus/ad/internal/c$c;

    return-void
.end method

.method public a(I)V
    .locals 2

    iget v0, p0, Lcom/octopus/ad/internal/c;->b:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/octopus/ad/internal/c;->b:I

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/internal/c;->h:Lcom/octopus/ad/internal/c$c;

    sget-object v0, Lcom/octopus/ad/internal/c$c;->a:Lcom/octopus/ad/internal/c$c;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdFetcher refresh mPeriod changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/octopus/ad/internal/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    const-string v0, "Resetting AdFetcher"

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/c;->a()V

    invoke-virtual {p0}, Lcom/octopus/ad/internal/c;->b()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 12

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->start:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/octopus/ad/internal/c;->d()V

    sget-object v0, Lcom/octopus/ad/internal/c$1;->a:[I

    iget-object v1, p0, Lcom/octopus/ad/internal/c;->h:Lcom/octopus/ad/internal/c$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->fetcher_start_single:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/octopus/ad/internal/c$a;

    invoke-direct {v1, p0, v2}, Lcom/octopus/ad/internal/c$a;-><init>(Lcom/octopus/ad/internal/c;Lcom/octopus/ad/internal/c$1;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/octopus/ad/internal/c;->b:I

    if-gtz v0, :cond_2

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->fetcher_start_single:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/internal/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/octopus/ad/internal/c$a;

    invoke-direct {v1, p0, v2}, Lcom/octopus/ad/internal/c$a;-><init>(Lcom/octopus/ad/internal/c;Lcom/octopus/ad/internal/c$1;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    sget-object v0, Lcom/octopus/ad/internal/c$c;->b:Lcom/octopus/ad/internal/c$c;

    :goto_0
    iput-object v0, p0, Lcom/octopus/ad/internal/c;->h:Lcom/octopus/ad/internal/c$c;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->fetcher_start_auto:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/octopus/ad/internal/c;->b:I

    iget-wide v5, p0, Lcom/octopus/ad/internal/c;->e:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    iget-wide v9, p0, Lcom/octopus/ad/internal/c;->d:J

    cmp-long v1, v9, v7

    if-eqz v1, :cond_3

    int-to-long v7, v0

    sub-long/2addr v5, v9

    sub-long v5, v7, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_3
    move-wide v7, v3

    sget-object v1, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v3, Lcom/octopus/ad/R$string;->request_delayed_by_x_ms:I

    invoke-static {v3, v7, v8}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/octopus/ad/internal/c;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v6, Lcom/octopus/ad/internal/c$a;

    invoke-direct {v6, p0, v2}, Lcom/octopus/ad/internal/c$a;-><init>(Lcom/octopus/ad/internal/c;Lcom/octopus/ad/internal/c$1;)V

    int-to-long v9, v0

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    sget-object v0, Lcom/octopus/ad/internal/c$c;->c:Lcom/octopus/ad/internal/c$c;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->d:J

    iput-wide v0, p0, Lcom/octopus/ad/internal/c;->e:J

    return-void
.end method
