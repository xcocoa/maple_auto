.class public final Lcom/anythink/expressad/reward/a/c$k;
.super Lcom/anythink/expressad/atsignalcommon/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;

.field private final c:Z

.field private final e:Z

.field private f:Ljava/lang/String;

.field private final g:Lcom/anythink/expressad/reward/a/c$j;

.field private final h:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/anythink/expressad/videocommon/a$a;

.field private final m:Lcom/anythink/expressad/foundation/d/c;

.field private n:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private o:J

.field private p:Z

.field private q:Z

.field private final r:Ljava/lang/Runnable;

.field private final s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;ZZLjava/lang/String;Lcom/anythink/expressad/reward/a/c$j;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Ljava/util/concurrent/CopyOnWriteArrayList;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/lang/Runnable;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/reward/a/c$j;",
            "Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/videocommon/a$a;",
            "Lcom/anythink/expressad/foundation/d/c;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-direct/range {p0 .. p0}, Lcom/anythink/expressad/atsignalcommon/a/b;-><init>()V

    iput-object v9, v8, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/anythink/expressad/reward/a/c$k;->b:Ljava/lang/Runnable;

    move/from16 v0, p3

    iput-boolean v0, v8, Lcom/anythink/expressad/reward/a/c$k;->c:Z

    move/from16 v0, p4

    iput-boolean v0, v8, Lcom/anythink/expressad/reward/a/c$k;->e:Z

    move-object/from16 v10, p5

    iput-object v10, v8, Lcom/anythink/expressad/reward/a/c$k;->f:Ljava/lang/String;

    move-object/from16 v11, p6

    iput-object v11, v8, Lcom/anythink/expressad/reward/a/c$k;->g:Lcom/anythink/expressad/reward/a/c$j;

    move-object/from16 v0, p7

    iput-object v0, v8, Lcom/anythink/expressad/reward/a/c$k;->h:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-object/from16 v12, p8

    iput-object v12, v8, Lcom/anythink/expressad/reward/a/c$k;->i:Ljava/lang/String;

    move-object/from16 v13, p10

    iput-object v13, v8, Lcom/anythink/expressad/reward/a/c$k;->j:Ljava/lang/String;

    move-object/from16 v14, p9

    iput-object v14, v8, Lcom/anythink/expressad/reward/a/c$k;->k:Ljava/lang/String;

    move-object/from16 v15, p11

    iput-object v15, v8, Lcom/anythink/expressad/reward/a/c$k;->l:Lcom/anythink/expressad/videocommon/a$a;

    move-object/from16 v0, p12

    iput-object v0, v8, Lcom/anythink/expressad/reward/a/c$k;->m:Lcom/anythink/expressad/foundation/d/c;

    move-object/from16 v0, p13

    iput-object v0, v8, Lcom/anythink/expressad/reward/a/c$k;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-wide/from16 v0, p14

    iput-wide v0, v8, Lcom/anythink/expressad/reward/a/c$k;->o:J

    new-instance v7, Lcom/anythink/expressad/reward/a/c$k$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p11

    move-object/from16 v4, p10

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object v10, v7

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/reward/a/c$k$1;-><init>(Lcom/anythink/expressad/reward/a/c$k;Lcom/anythink/expressad/reward/a/c$j;Lcom/anythink/expressad/videocommon/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v8, Lcom/anythink/expressad/reward/a/c$k;->s:Ljava/lang/Runnable;

    new-instance v7, Lcom/anythink/expressad/reward/a/c$k$2;

    move-object v0, v7

    move-object v11, v7

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/anythink/expressad/reward/a/c$k$2;-><init>(Lcom/anythink/expressad/reward/a/c$k;Lcom/anythink/expressad/reward/a/c$j;Lcom/anythink/expressad/videocommon/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v8, Lcom/anythink/expressad/reward/a/c$k;->r:Ljava/lang/Runnable;

    if-eqz v9, :cond_0

    const-wide/16 v0, 0x1388

    invoke-virtual {v9, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->s:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/expressad/reward/a/c$k;->p:Z

    if-nez v0, :cond_7

    const-string v0, "wfr=1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/c$k;->i:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/c$k;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/c$k;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->b:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->l:Lcom/anythink/expressad/videocommon/a$a;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/videocommon/a$a;->a(Z)V

    :cond_2
    iget-boolean p2, p0, Lcom/anythink/expressad/reward/a/c$k;->c:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->m:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result p2

    const/16 v1, 0x11f

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->m:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result p2

    const/16 v1, 0x5e

    if-eqz p2, :cond_4

    :goto_0
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->m:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/c$k;->l:Lcom/anythink/expressad/videocommon/a$a;

    invoke-static {v1, p2, v2}, Lcom/anythink/expressad/videocommon/a;->a(ILjava/lang/String;Lcom/anythink/expressad/videocommon/a$a;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->m:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/c$k;->l:Lcom/anythink/expressad/videocommon/a$a;

    invoke-static {v1, p2, v2}, Lcom/anythink/expressad/videocommon/a;->b(ILjava/lang/String;Lcom/anythink/expressad/videocommon/a$a;)V

    :goto_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->g:Lcom/anythink/expressad/reward/a/c$j;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/anythink/expressad/reward/a/c$j;->a()V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->r:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    const-wide/16 v2, 0x1388

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    invoke-static {p1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->b(Landroid/webkit/WebView;)V

    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/c$k;->p:Z

    :cond_7
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/atsignalcommon/a/b;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/anythink/expressad/reward/a/c$k;->j:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->r:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->r:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->l:Lcom/anythink/expressad/videocommon/a$a;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/videocommon/a$a;->a(Z)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->g:Lcom/anythink/expressad/reward/a/c$j;

    if-eqz p1, :cond_3

    invoke-interface {p1, p3}, Lcom/anythink/expressad/reward/a/c$j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/atsignalcommon/a/b;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "TempalteWindVaneWebviewClient preLoadTemplate onReceivedSslError: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, ""

    if-nez p3, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/c$k;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/c$k;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->r:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->l:Lcom/anythink/expressad/videocommon/a$a;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/videocommon/a$a;->a(Z)V

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->g:Lcom/anythink/expressad/reward/a/c$j;

    if-eqz p1, :cond_5

    if-nez p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-interface {p1, p2}, Lcom/anythink/expressad/reward/a/c$j;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public final readyState(Landroid/webkit/WebView;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->readyState(Landroid/webkit/WebView;I)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->r:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->s:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean p1, p0, Lcom/anythink/expressad/reward/a/c$k;->q:Z

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-ne p2, p1, :cond_6

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->b:Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->a:Landroid/os/Handler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/c$k;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/c$k;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->l:Lcom/anythink/expressad/videocommon/a$a;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/videocommon/a$a;->a(Z)V

    :cond_3
    iget-boolean p2, p0, Lcom/anythink/expressad/reward/a/c$k;->c:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/anythink/expressad/reward/a/c$k;->e:Z

    const/16 v0, 0x11f

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_4
    iget-boolean p2, p0, Lcom/anythink/expressad/reward/a/c$k;->e:Z

    const/16 v0, 0x5e

    if-eqz p2, :cond_5

    :goto_0
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->m:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->l:Lcom/anythink/expressad/videocommon/a$a;

    invoke-static {v0, p2, v1}, Lcom/anythink/expressad/videocommon/a;->a(ILjava/lang/String;Lcom/anythink/expressad/videocommon/a$a;)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->m:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/c$k;->l:Lcom/anythink/expressad/videocommon/a$a;

    invoke-static {v0, p2, v1}, Lcom/anythink/expressad/videocommon/a;->b(ILjava/lang/String;Lcom/anythink/expressad/videocommon/a$a;)V

    :goto_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$k;->g:Lcom/anythink/expressad/reward/a/c$j;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/anythink/expressad/reward/a/c$j;->a()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$k;->g:Lcom/anythink/expressad/reward/a/c$j;

    if-eqz v0, :cond_7

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "state "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/anythink/expressad/reward/a/c$j;->a(Ljava/lang/String;)V

    :cond_7
    :goto_2
    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/c$k;->q:Z

    :cond_8
    return-void
.end method
