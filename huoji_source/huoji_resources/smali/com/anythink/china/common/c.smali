.class public final Lcom/anythink/china/common/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/china/api/CustomAdapterDownloadListener;


# instance fields
.field public a:Lcom/anythink/core/api/ATBaseAdAdapter;

.field public b:Lcom/anythink/core/api/BaseAd;

.field public c:Lcom/anythink/core/api/ATAdInfo;

.field public d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/anythink/china/api/ATAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public e:J

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATEventInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/china/common/c;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    iput-object p2, p0, Lcom/anythink/china/common/c;->b:Lcom/anythink/core/api/BaseAd;

    if-eqz p3, :cond_0

    instance-of p1, p3, Lcom/anythink/china/api/ATAppDownloadListener;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/ref/WeakReference;

    check-cast p3, Lcom/anythink/china/api/ATAppDownloadListener;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/anythink/china/common/c;->d:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/china/common/c;->b:Lcom/anythink/core/api/BaseAd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/china/common/c;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {v0, v1}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATBaseAdAdapter;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/common/c;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-static {v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IJLjava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v7, Lcom/anythink/china/common/c$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/anythink/china/common/c$1;-><init>(Lcom/anythink/china/common/c;ILjava/lang/String;J)V

    const/4 p1, 0x2

    const/4 p2, 0x1

    invoke-virtual {v0, v7, p1, p2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method


# virtual methods
.method public final onDownloadFail(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/china/common/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/common/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/api/ATAppDownloadListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/anythink/china/api/ATAppDownloadListener;->onDownloadFail(Lcom/anythink/core/api/ATAdInfo;JJLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onDownloadFinish(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/china/common/c;->a()V

    :cond_0
    iget-wide v0, p0, Lcom/anythink/china/common/c;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/anythink/china/common/c;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/china/common/c;->g:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/china/common/c;->e:J

    sub-long/2addr v0, v2

    const/16 v2, 0x13

    invoke-direct {p0, v2, v0, v1, p4}, Lcom/anythink/china/common/c;->a(IJLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/china/common/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/api/ATAppDownloadListener;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/anythink/china/api/ATAppDownloadListener;->onDownloadFinish(Lcom/anythink/core/api/ATAdInfo;JLjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final onDownloadPause(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/china/common/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/common/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/api/ATAppDownloadListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/anythink/china/api/ATAppDownloadListener;->onDownloadPause(Lcom/anythink/core/api/ATAdInfo;JJLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onDownloadStart(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/china/common/c;->a()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/china/common/c;->e:J

    const/16 v0, 0x12

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p6}, Lcom/anythink/china/common/c;->a(IJLjava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/china/common/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/api/ATAppDownloadListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/anythink/china/api/ATAppDownloadListener;->onDownloadStart(Lcom/anythink/core/api/ATAdInfo;JJLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onDownloadUpdate(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/china/common/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/china/common/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/api/ATAppDownloadListener;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/anythink/china/api/ATAppDownloadListener;->onDownloadUpdate(Lcom/anythink/core/api/ATAdInfo;JJLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/china/common/c;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/china/common/c;->f:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/china/common/c;->f:Z

    const/16 v0, 0x14

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/anythink/china/common/c;->a(IJLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/china/common/c;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/api/ATAppDownloadListener;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/anythink/china/common/c;->c:Lcom/anythink/core/api/ATAdInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/anythink/china/api/ATAppDownloadListener;->onInstalled(Lcom/anythink/core/api/ATAdInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
