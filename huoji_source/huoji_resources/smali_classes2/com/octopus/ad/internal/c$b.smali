.class public Lcom/octopus/ad/internal/c$b;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/octopus/ad/internal/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/c;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/c$b;->a:Lcom/octopus/ad/internal/c;

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/octopus/ad/internal/c$b;->a:Lcom/octopus/ad/internal/c;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/octopus/ad/internal/c;->b(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->isReadyToStart()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p1}, Lcom/octopus/ad/internal/c;->c(Lcom/octopus/ad/internal/c;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sget-object v0, Lcom/octopus/ad/internal/utilities/HaoboLog;->baseLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->new_ad_since:I

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {p1}, Lcom/octopus/ad/internal/c;->c(Lcom/octopus/ad/internal/c;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/octopus/ad/internal/c;->a(Lcom/octopus/ad/internal/c;J)J

    sget-object v0, Lcom/octopus/ad/internal/c$1;->b:[I

    invoke-static {p1}, Lcom/octopus/ad/internal/c;->b(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/octopus/ad/internal/n;

    invoke-direct {v0}, Lcom/octopus/ad/internal/n;-><init>()V

    :goto_0
    invoke-static {p1, v0}, Lcom/octopus/ad/internal/c;->a(Lcom/octopus/ad/internal/c;Lcom/octopus/ad/internal/o;)Lcom/octopus/ad/internal/o;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/octopus/ad/internal/nativead/b;

    invoke-static {p1}, Lcom/octopus/ad/internal/c;->b(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/a;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/internal/nativead/a;

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/nativead/b;-><init>(Lcom/octopus/ad/internal/nativead/a;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/octopus/ad/internal/f;

    invoke-static {p1}, Lcom/octopus/ad/internal/c;->b(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/a;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/f;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/octopus/ad/internal/f;

    invoke-static {p1}, Lcom/octopus/ad/internal/c;->b(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/a;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/f;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/octopus/ad/internal/f;

    invoke-static {p1}, Lcom/octopus/ad/internal/c;->b(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/a;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/internal/view/BannerAdViewImpl;

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/f;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl;)V

    goto :goto_0

    :goto_1
    invoke-static {p1}, Lcom/octopus/ad/internal/c;->d(Lcom/octopus/ad/internal/c;)Lcom/octopus/ad/internal/o;

    move-result-object p1

    invoke-interface {p1}, Lcom/octopus/ad/internal/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
