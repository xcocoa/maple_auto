.class public final Lcom/anythink/expressad/advanced/c/a$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/videocommon/b/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/advanced/c/a;->d(Lcom/anythink/expressad/foundation/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/d/c;

.field public final synthetic b:I

.field public final synthetic c:Lcom/anythink/expressad/advanced/c/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/c/a;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/c/a$5;->c:Lcom/anythink/expressad/advanced/c/a;

    iput-object p2, p0, Lcom/anythink/expressad/advanced/c/a$5;->a:Lcom/anythink/expressad/foundation/d/c;

    const/4 p1, 0x2

    iput p1, p0, Lcom/anythink/expressad/advanced/c/a$5;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/advanced/c/a;->d()Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/a$5;->c:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/c/a;->d(Lcom/anythink/expressad/advanced/c/a;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x4

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$5;->a:Lcom/anythink/expressad/foundation/d/c;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v0, p0, Lcom/anythink/expressad/advanced/c/a$5;->b:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/anythink/expressad/advanced/c/a$5;->c:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {v0}, Lcom/anythink/expressad/advanced/c/a;->d(Lcom/anythink/expressad/advanced/c/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/advanced/c/a;->d()Ljava/lang/String;

    iget-object p2, p0, Lcom/anythink/expressad/advanced/c/a$5;->c:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {p2}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/advanced/c/a$5;->c:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {p2}, Lcom/anythink/expressad/advanced/c/a;->a(Lcom/anythink/expressad/advanced/c/a;)Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/advanced/view/ATNativeAdvancedView;->setEndCardReady(Z)V

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v0, 0x2

    iput v0, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/anythink/expressad/advanced/c/a$5;->c:Lcom/anythink/expressad/advanced/c/a;

    invoke-static {p1}, Lcom/anythink/expressad/advanced/c/a;->d(Lcom/anythink/expressad/advanced/c/a;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
