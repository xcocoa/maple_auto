.class public final Lcom/anythink/expressad/splash/c/d$2;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/splash/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/splash/c/d;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/c/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->g(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->g(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/foundation/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ay()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->c(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/splash/view/ATSplashView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->c(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/splash/view/ATSplashView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/splash/view/ATSplashView;->getSplashWebview()Lcom/anythink/expressad/splash/view/ATSplashWebview;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->b(Lcom/anythink/expressad/splash/c/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->c(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/splash/view/ATSplashView;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->c(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/expressad/splash/view/ATSplashView;

    move-result-object p1

    iget-object v4, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {v4}, Lcom/anythink/expressad/splash/c/d;->d(Lcom/anythink/expressad/splash/c/d;)Lcom/anythink/core/common/o/a/f$b;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;Lcom/anythink/core/common/o/a/f$b;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->e(Lcom/anythink/expressad/splash/c/d;)I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->f(Lcom/anythink/expressad/splash/c/d;)I

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1}, Lcom/anythink/expressad/splash/c/d;->e(Lcom/anythink/expressad/splash/c/d;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/anythink/expressad/splash/c/d;->b(Lcom/anythink/expressad/splash/c/d;I)V

    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    iget-object p1, p1, Lcom/anythink/expressad/splash/c/d;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    invoke-static {p1, v0}, Lcom/anythink/expressad/splash/c/d;->a(Lcom/anythink/expressad/splash/c/d;I)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/splash/c/d$2;->a:Lcom/anythink/expressad/splash/c/d;

    iget-object p1, p1, Lcom/anythink/expressad/splash/c/d;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
