.class public final Lcom/anythink/core/common/a/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/a/c;

.field private b:Lcom/anythink/core/common/f/av;

.field private c:Lcom/anythink/core/api/ATBaseAdAdapter;

.field private d:Lcom/anythink/core/api/BaseAd;

.field private e:Lcom/anythink/core/common/f/b;

.field private f:Ljava/lang/String;

.field private g:Lcom/anythink/core/common/f/h;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/c$a;->a:Lcom/anythink/core/common/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/common/a/c$a;)Lcom/anythink/core/api/ATBaseAdAdapter;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/core/common/a/c$a;Lcom/anythink/core/api/ATBaseAdAdapter;)Lcom/anythink/core/api/ATBaseAdAdapter;
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/core/common/a/c$a;Lcom/anythink/core/common/f/av;)Lcom/anythink/core/common/f/av;
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    return-object p1
.end method

.method private a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-void
.end method

.method private a(Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/c$a;->d:Lcom/anythink/core/api/BaseAd;

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/av;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    return-void
.end method

.method public static synthetic b(Lcom/anythink/core/common/a/c$a;)Lcom/anythink/core/common/f/b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/core/common/a/c$a;)Lcom/anythink/core/common/f/av;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/anythink/core/common/f/b;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->a:Lcom/anythink/core/common/a/c;

    invoke-static {v0}, Lcom/anythink/core/common/a/c;->a(Lcom/anythink/core/common/a/c;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdxDefaultInternal generateAdxAdCacheInfo has release:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",initTrackingInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->g:Lcom/anythink/core/common/f/h;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->g:Lcom/anythink/core/common/f/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->a:Lcom/anythink/core/common/a/c;

    invoke-static {v0}, Lcom/anythink/core/common/a/c;->a(Lcom/anythink/core/common/a/c;)Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_3
    iput-object v1, p0, Lcom/anythink/core/common/a/c$a;->d:Lcom/anythink/core/api/BaseAd;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->E(I)V

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->g:Lcom/anythink/core/common/f/h;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->aj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getBaseAdObject(Landroid/content/Context;)Lcom/anythink/core/api/BaseAd;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/a/c$a;->d:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalIsAdReady()Z

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->a:Lcom/anythink/core/common/a/c;

    invoke-static {v1}, Lcom/anythink/core/common/a/c;->a(Lcom/anythink/core/common/a/c;)Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->g:Lcom/anythink/core/common/f/h;

    iget-object v4, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    invoke-static {v0, v1, v4}, Lcom/anythink/core/common/o/v;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/f/av;)Lcom/anythink/core/common/f/h;

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->d:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v1}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/h;->V()Lcom/anythink/core/common/f/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/BaseAd;->setTrackingInfo(Lcom/anythink/core/common/f/h;)V

    :cond_7
    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/av;->M()Lcom/anythink/core/common/f/q;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/q;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    iget-object v4, p0, Lcom/anythink/core/common/a/c$a;->g:Lcom/anythink/core/common/f/h;

    new-array v2, v2, [Lcom/anythink/core/api/BaseAd;

    iget-object v5, p0, Lcom/anythink/core/common/a/c$a;->d:Lcom/anythink/core/api/BaseAd;

    aput-object v5, v2, v3

    invoke-static {v0, v1, v4, v2}, Lcom/anythink/core/b/d/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/av;Lcom/anythink/core/common/f/h;[Lcom/anythink/core/api/BaseAd;)V

    new-instance v0, Lcom/anythink/core/common/f/b;

    invoke-direct {v0}, Lcom/anythink/core/common/f/b;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/api/ATBaseAdAdapter;)V

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/b;->c(J)V

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/b;->b(J)V

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->B()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/f/b;->a(J)V

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->d:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/b;->a(Lcom/anythink/core/api/BaseAd;)V

    :cond_8
    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->a:Lcom/anythink/core/common/a/c;

    invoke-static {v0}, Lcom/anythink/core/common/a/c;->a(Lcom/anythink/core/common/a/c;)Ljava/lang/String;

    iput-object p1, p0, Lcom/anythink/core/common/a/c$a;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/core/common/a/c$a;->g:Lcom/anythink/core/common/f/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->a:Lcom/anythink/core/common/a/c;

    invoke-static {v0}, Lcom/anythink/core/common/a/c;->a(Lcom/anythink/core/common/a/c;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdxDefaultInternal generateAdxAdCacheInfo has release:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",initTrackingInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/a/c$a;->g:Lcom/anythink/core/common/f/h;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/anythink/core/common/a/c$a;->a()Lcom/anythink/core/common/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->a:Lcom/anythink/core/common/a/c;

    invoke-static {v0}, Lcom/anythink/core/common/a/c;->a(Lcom/anythink/core/common/a/c;)Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/core/common/a/c$a;->c:Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-object v0, p0, Lcom/anythink/core/common/a/c$a;->d:Lcom/anythink/core/api/BaseAd;

    iput-object v0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Lcom/anythink/core/common/f/av;)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Lcom/anythink/core/common/f/av;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->b:Lcom/anythink/core/common/f/av;

    return-object v0
.end method

.method public final f()Lcom/anythink/core/common/f/b;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/a/c$a;->e:Lcom/anythink/core/common/f/b;

    return-object v0
.end method
