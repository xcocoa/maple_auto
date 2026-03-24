.class public final Lcom/anythink/expressad/advanced/c/a$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/advanced/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/advanced/c/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/c/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setVideoReady(Z)V

    :cond_1
    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/a;->b(Lcom/anythink/expressad/advanced/c/a;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;I)V

    return-void

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setEndCardReady(Z)V

    :cond_3
    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/a;->b(Lcom/anythink/expressad/advanced/c/a;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;I)V

    return-void

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    instance-of v0, p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/a;->b(Lcom/anythink/expressad/advanced/c/a;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;I)V

    goto :goto_0

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_7

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v1}, Lcom/anythink/expressad/advanced/c/a;->c(Lcom/anythink/expressad/advanced/c/a;)Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v1}, Lcom/anythink/expressad/advanced/c/a;->b(Lcom/anythink/expressad/advanced/c/a;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;Ljava/lang/String;I)V

    return-void

    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_7

    instance-of v1, v0, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/advanced/c/a$1;->a:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v2, v1, v0, p1}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_7
    :goto_0
    return-void
.end method
