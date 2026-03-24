.class public Lcom/anythink/expressad/a/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/a/g$a;
    }
.end annotation


# static fields
.field public static a:J = 0x0L

.field private static final d:Ljava/lang/String; = "g"

.field private static final p:I = 0x1

.field private static final q:I = 0x2

.field private static final r:I


# instance fields
.field public b:Z

.field public c:Z

.field private e:I

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Lcom/anythink/expressad/d/a;

.field private i:Lcom/anythink/expressad/a/g$a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/webkit/WebView;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private s:Z

.field private t:Z

.field private final u:Ljava/lang/Runnable;

.field private final v:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/anythink/expressad/a/g;->e:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/anythink/expressad/a/g;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/a/g;->s:Z

    new-instance v0, Lcom/anythink/expressad/a/g$4;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/a/g$4;-><init>(Lcom/anythink/expressad/a/g;)V

    iput-object v0, p0, Lcom/anythink/expressad/a/g;->u:Ljava/lang/Runnable;

    new-instance v0, Lcom/anythink/expressad/a/g$5;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/a/g$5;-><init>(Lcom/anythink/expressad/a/g;)V

    iput-object v0, p0, Lcom/anythink/expressad/a/g;->v:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/a/g;->h:Lcom/anythink/expressad/d/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->c()Lcom/anythink/expressad/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/a/g;->h:Lcom/anythink/expressad/d/a;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/a/g;->h:Lcom/anythink/expressad/d/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/a/g;->m:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/a/g;->h:Lcom/anythink/expressad/d/a;

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->q()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/anythink/expressad/a/g;->e:I

    iget-object p1, p0, Lcom/anythink/expressad/a/g;->h:Lcom/anythink/expressad/d/a;

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->q()J

    move-result-wide v0

    :goto_0
    long-to-int p1, v0

    iput p1, p0, Lcom/anythink/expressad/a/g;->f:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/a/g;->h:Lcom/anythink/expressad/d/a;

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->r()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/anythink/expressad/a/g;->e:I

    iget-object p1, p0, Lcom/anythink/expressad/a/g;->h:Lcom/anythink/expressad/d/a;

    invoke-virtual {p1}, Lcom/anythink/expressad/d/a;->r()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/g;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/a/g;->o:I

    return p1
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object p1, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    iget-object p1, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    new-instance v0, Lcom/anythink/expressad/a/g$2;

    invoke-direct {v0, p0, p3, p2}, Lcom/anythink/expressad/a/g$2;-><init>(Lcom/anythink/expressad/a/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/anythink/expressad/a/g$3;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/a/g$3;-><init>(Lcom/anythink/expressad/a/g;)V

    iget-object p2, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/g;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/a/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lcom/anythink/expressad/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/a/g;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string p2, "utf-8"

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/anythink/expressad/a/g;->f:I

    iput p1, p0, Lcom/anythink/expressad/a/g;->e:I

    iget-object v0, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/anythink/expressad/a/g;->k:Ljava/lang/String;

    const-string v3, "*/*"

    const-string v4, "utf-8"

    move-object v1, p4

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/anythink/expressad/a/g;->m:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "Referer"

    iget-object p3, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {p2, p4, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {p1, p4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    iget-object p2, p0, Lcom/anythink/expressad/a/g;->i:Lcom/anythink/expressad/a/g$a;

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/anythink/expressad/a/g;->n:Ljava/lang/String;

    invoke-interface {p2, p3, p1, p4}, Lcom/anythink/expressad/a/g$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/anythink/expressad/a/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    new-instance v7, Lcom/anythink/expressad/a/g$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/a/g$1;-><init>(Lcom/anythink/expressad/a/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b()V
    .locals 4

    sget-object v0, Lcom/anythink/expressad/a/g;->d:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->f()V

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->i:Lcom/anythink/expressad/a/g$a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/a/g;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/anythink/expressad/a/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic b(Lcom/anythink/expressad/a/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/a/g;->t:Z

    return p0
.end method

.method private c()V
    .locals 4

    sget-object v0, Lcom/anythink/expressad/a/g;->d:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->f()V

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->i:Lcom/anythink/expressad/a/g$a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/expressad/a/g;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/anythink/expressad/a/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic c(Lcom/anythink/expressad/a/g;)V
    .locals 3

    sget-object v0, Lcom/anythink/expressad/a/g;->d:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->f()V

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->i:Lcom/anythink/expressad/a/g$a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    iget-object p0, p0, Lcom/anythink/expressad/a/g;->n:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Lcom/anythink/expressad/a/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic d(Lcom/anythink/expressad/a/g;)Lcom/anythink/expressad/a/g$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/a/g;->i:Lcom/anythink/expressad/a/g$a;

    return-object p0
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->h()V

    iget-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->v:Ljava/lang/Runnable;

    iget v2, p0, Lcom/anythink/expressad/a/g;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e()V
    .locals 4

    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->j()V

    iget-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->u:Ljava/lang/Runnable;

    iget v2, p0, Lcom/anythink/expressad/a/g;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic e(Lcom/anythink/expressad/a/g;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/a/g;->t:Z

    return v0
.end method

.method private f()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->j()V

    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->h()V

    return-void
.end method

.method public static synthetic f(Lcom/anythink/expressad/a/g;)V
    .locals 4

    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->h()V

    iget-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->v:Ljava/lang/Runnable;

    iget p0, p0, Lcom/anythink/expressad/a/g;->e:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->v:Ljava/lang/Runnable;

    iget v2, p0, Lcom/anythink/expressad/a/g;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic g(Lcom/anythink/expressad/a/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->j()V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic h(Lcom/anythink/expressad/a/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->h()V

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->u:Ljava/lang/Runnable;

    iget v2, p0, Lcom/anythink/expressad/a/g;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic i(Lcom/anythink/expressad/a/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/a/g;->m:Z

    return p0
.end method

.method public static synthetic j(Lcom/anythink/expressad/a/g;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    return-object p0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic k(Lcom/anythink/expressad/a/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->f()V

    return-void
.end method

.method public static synthetic l(Lcom/anythink/expressad/a/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/a/g;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic m(Lcom/anythink/expressad/a/g;)V
    .locals 4

    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->j()V

    iget-object v0, p0, Lcom/anythink/expressad/a/g;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->u:Ljava/lang/Runnable;

    iget p0, p0, Lcom/anythink/expressad/a/g;->f:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic n(Lcom/anythink/expressad/a/g;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/a/g;->s:Z

    return v0
.end method

.method public static synthetic o(Lcom/anythink/expressad/a/g;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/a/g;->f:I

    return p0
.end method

.method public static synthetic p(Lcom/anythink/expressad/a/g;)V
    .locals 3

    sget-object v0, Lcom/anythink/expressad/a/g;->d:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/anythink/expressad/a/g;->f()V

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    iget-object v1, p0, Lcom/anythink/expressad/a/g;->i:Lcom/anythink/expressad/a/g$a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    iget-object p0, p0, Lcom/anythink/expressad/a/g;->n:Ljava/lang/String;

    invoke-interface {v1, v2, p0}, Lcom/anythink/expressad/a/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic q(Lcom/anythink/expressad/a/g;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/a/g;->e:I

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/a/g$a;)V
    .locals 1

    const-string v0, "OverrideUrlLoadingListener can not be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/expressad/a/g;->i:Lcom/anythink/expressad/a/g$a;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/a/g$a;)V
    .locals 1

    const-string v0, "OverrideUrlLoadingListener can not be null"

    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/anythink/expressad/a/g;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/expressad/a/g;->j:Ljava/lang/String;

    iput-object p7, p0, Lcom/anythink/expressad/a/g;->i:Lcom/anythink/expressad/a/g$a;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
