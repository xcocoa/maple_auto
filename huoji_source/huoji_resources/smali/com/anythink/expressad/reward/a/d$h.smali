.class public final Lcom/anythink/expressad/reward/a/d$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/reward/a/d;

.field private b:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

.field private c:Ljava/lang/String;

.field private d:Lcom/anythink/expressad/foundation/d/c;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/anythink/expressad/videocommon/e/d;

.field private i:I

.field private j:Lcom/anythink/expressad/reward/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;ILcom/anythink/expressad/reward/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/foundation/d/c;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/videocommon/e/d;",
            "I",
            "Lcom/anythink/expressad/reward/a/d;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$h;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$h;->b:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iput-object p3, p0, Lcom/anythink/expressad/reward/a/d$h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/reward/a/d$h;->d:Lcom/anythink/expressad/foundation/d/c;

    iput-object p5, p0, Lcom/anythink/expressad/reward/a/d$h;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/anythink/expressad/reward/a/d$h;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/anythink/expressad/reward/a/d$h;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/anythink/expressad/reward/a/d$h;->h:Lcom/anythink/expressad/videocommon/e/d;

    iput p9, p0, Lcom/anythink/expressad/reward/a/d$h;->i:I

    iput-object p10, p0, Lcom/anythink/expressad/reward/a/d$h;->j:Lcom/anythink/expressad/reward/a/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retry load template url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/anythink/expressad/videocommon/a$a;

    invoke-direct {v6}, Lcom/anythink/expressad/videocommon/a$a;-><init>()V

    new-instance v0, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Lcom/anythink/expressad/videocommon/a$a;->a(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$h;->e:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d$h;->d:Lcom/anythink/expressad/foundation/d/c;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d$h;->e:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/anythink/expressad/video/signal/a/j;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d$h;->d:Lcom/anythink/expressad/foundation/d/c;

    invoke-direct {v1, v2, v3}, Lcom/anythink/expressad/video/signal/a/j;-><init>(Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    iget v2, p0, Lcom/anythink/expressad/reward/a/d$h;->i:I

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/signal/a/c;->a(I)V

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$h;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/signal/a/c;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$h;->h:Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/signal/a/c;->a(Lcom/anythink/expressad/videocommon/e/d;)V

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/d$h;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->l(Lcom/anythink/expressad/reward/a/d;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/video/signal/a/j;->b(Z)V

    new-instance v11, Lcom/anythink/expressad/reward/a/d$j;

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/d$h;->b:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/d$h;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/d$h;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/expressad/reward/a/d$h;->d:Lcom/anythink/expressad/foundation/d/c;

    iget-object v8, p0, Lcom/anythink/expressad/reward/a/d$h;->j:Lcom/anythink/expressad/reward/a/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/anythink/expressad/reward/a/d$j;-><init>(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$h;Landroid/os/Handler;)V

    invoke-virtual {v0, v11}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/anythink/expressad/atsignalcommon/windvane/e;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/atsignalcommon/base/BaseWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
