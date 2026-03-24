.class public final Lcom/anythink/expressad/reward/a/c$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/videocommon/b/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/reward/a/c;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/reward/a/c$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/anythink/expressad/reward/a/c$i;

.field public final synthetic e:Lcom/anythink/expressad/reward/a/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/a/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/reward/a/c$i;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/c$2;->e:Lcom/anythink/expressad/reward/a/c;

    iput-object p2, p0, Lcom/anythink/expressad/reward/a/c$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/reward/a/c$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/reward/a/c$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/expressad/reward/a/c$2;->d:Lcom/anythink/expressad/reward/a/c$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "url"

    const-string v1, "request_id"

    const-string v2, "unit_id"

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/anythink/expressad/videocommon/b/l;->b(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x69

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/c$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/c$2;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/c$2;->c:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/c$2;->e:Lcom/anythink/expressad/reward/a/c;

    invoke-static {v4}, Lcom/anythink/expressad/reward/a/c;->a(Lcom/anythink/expressad/reward/a/c;)Lcom/anythink/expressad/reward/a/c$h;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/c$2;->d:Lcom/anythink/expressad/reward/a/c$i;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/anythink/expressad/reward/a/c$2;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/c$2;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/c$2;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Lcom/anythink/expressad/reward/a/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/anythink/expressad/videocommon/b/l;->b(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/16 v5, 0xcd

    iput v5, v4, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/c$2;->a:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/c$2;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/reward/a/c$2;->c:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$2;->e:Lcom/anythink/expressad/reward/a/c;

    invoke-static {p1}, Lcom/anythink/expressad/reward/a/c;->a(Lcom/anythink/expressad/reward/a/c;)Lcom/anythink/expressad/reward/a/c$h;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$2;->d:Lcom/anythink/expressad/reward/a/c$i;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$2;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/anythink/expressad/reward/a/c$i;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "message"

    const-string v1, "url"

    const-string v2, "request_id"

    const-string v3, "unit_id"

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/anythink/expressad/videocommon/b/l;->b(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    const/16 v6, 0xcd

    iput v6, v5, Landroid/os/Message;->what:I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v7, p0, Lcom/anythink/expressad/reward/a/c$2;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    iget-object v8, p0, Lcom/anythink/expressad/reward/a/c$2;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/anythink/expressad/reward/a/c$2;->c:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$2;->e:Lcom/anythink/expressad/reward/a/c;

    invoke-static {p1}, Lcom/anythink/expressad/reward/a/c;->a(Lcom/anythink/expressad/reward/a/c;)Lcom/anythink/expressad/reward/a/c$h;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/c$2;->d:Lcom/anythink/expressad/reward/a/c$i;

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/anythink/expressad/reward/a/c$2;->a:Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/anythink/expressad/reward/a/c$i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v5

    invoke-virtual {v5, p2, v4}, Lcom/anythink/expressad/videocommon/b/l;->b(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/16 v5, 0x69

    iput v5, v4, Landroid/os/Message;->what:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/c$2;->a:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/expressad/reward/a/c$2;->b:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/expressad/reward/a/c$2;->c:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$2;->e:Lcom/anythink/expressad/reward/a/c;

    invoke-static {p2}, Lcom/anythink/expressad/reward/a/c;->a(Lcom/anythink/expressad/reward/a/c;)Lcom/anythink/expressad/reward/a/c$h;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/c$2;->d:Lcom/anythink/expressad/reward/a/c$i;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/reward/a/c$2;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/anythink/expressad/reward/a/c$i;->a(Ljava/lang/String;)V

    :cond_1
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_2
    return-void
.end method
