.class public final Lcom/anythink/expressad/splash/c/c$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/splash/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/splash/c/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/splash/c/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/splash/c/c$1;->a:Lcom/anythink/expressad/splash/c/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c$1;->a:Lcom/anythink/expressad/splash/c/c;

    invoke-static {v0}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/splash/c/c;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/splash/c/c;Lcom/anythink/expressad/foundation/d/c;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/splash/c/c$1;->a:Lcom/anythink/expressad/splash/c/c;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c$1;->a:Lcom/anythink/expressad/splash/c/c;

    invoke-static {v1}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/splash/c/c;)Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/splash/c/c$1;->a:Lcom/anythink/expressad/splash/c/c;

    invoke-static {v1}, Lcom/anythink/expressad/splash/c/c;->b(Lcom/anythink/expressad/splash/c/c;)I

    invoke-static {v0, p1}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/splash/c/c;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    instance-of v1, v0, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/splash/c/c$1;->a:Lcom/anythink/expressad/splash/c/c;

    invoke-static {v2, v1, v0, p1}, Lcom/anythink/expressad/splash/c/c;->a(Lcom/anythink/expressad/splash/c/c;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_3
    :goto_0
    return-void
.end method
