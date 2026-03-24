.class public final Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;
.super Lcom/anythink/expressad/video/module/a/a/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/video/bt/module/ATTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private V:Landroid/app/Activity;

.field private W:Lcom/anythink/expressad/foundation/d/c;

.field public final synthetic a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;Landroid/app/Activity;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-direct {p0}, Lcom/anythink/expressad/video/module/a/a/f;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->V:Landroid/app/Activity;

    iput-object p3, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->W:Lcom/anythink/expressad/foundation/d/c;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/anythink/expressad/video/signal/c;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->V:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->V:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/c;->a(Landroid/app/Activity;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    const/16 v0, 0x6c

    const-string v1, ""

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x71

    if-eq p1, v0, :cond_7

    const/16 v0, 0x75

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x80

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->n(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v1}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->o(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->W:Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {v0, v1, v2}, Lcom/anythink/expressad/video/bt/module/a/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->W:Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->V:Landroid/app/Activity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->W:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b$1;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b$1;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/Runnable;J)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-interface {v0, v2, v1}, Lcom/anythink/expressad/video/signal/d;->click(ILjava/lang/String;)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->W:Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v0, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->f:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_6

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVisible(I)V

    :cond_6
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->m(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Z

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/bt/module/b/h;->c()V

    :goto_2
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    iget-object v0, v0, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->k:Lcom/anythink/expressad/reward/player/c;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-static {v0}, Lcom/anythink/expressad/video/bt/module/ATTempContainer;->g(Lcom/anythink/expressad/video/bt/module/ATTempContainer;)Lcom/anythink/expressad/video/bt/module/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->W:Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/bt/module/b/h;->a(Lcom/anythink/expressad/foundation/d/c;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    new-instance v3, Lcom/anythink/expressad/video/signal/a/c$b;

    iget-object v4, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v4}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v4

    new-instance v5, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;

    iget-object v6, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/anythink/expressad/video/bt/module/ATTempContainer$d;-><init>(Lcom/anythink/expressad/video/bt/module/ATTempContainer;B)V

    invoke-direct {v3, v4, v5}, Lcom/anythink/expressad/video/signal/a/c$b;-><init>(Lcom/anythink/expressad/video/signal/c;Lcom/anythink/expressad/video/signal/c$a;)V

    invoke-interface {v0, v3}, Lcom/anythink/expressad/video/signal/c;->a(Lcom/anythink/expressad/video/signal/c$a;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/bt/module/ATTempContainer$b;->a:Lcom/anythink/expressad/video/bt/module/ATTempContainer;

    invoke-virtual {v0}, Lcom/anythink/expressad/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_9
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/module/a/a/f;->a(ILjava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
