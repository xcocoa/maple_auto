.class public final Lcom/anythink/expressad/reward/b/a$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/reward/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/reward/b/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/b/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_16

    const v1, 0xf462a

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->e(Lcom/anythink/expressad/reward/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->i(Lcom/anythink/expressad/reward/b/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/anythink/expressad/reward/b/a;->b()V

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->e(Lcom/anythink/expressad/reward/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/videocommon/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/a;->b()V

    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->i(Lcom/anythink/expressad/reward/b/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/anythink/expressad/reward/b/a;->b()V

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/videocommon/d/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->j(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->j(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->S()I

    move-result p1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    if-eqz p1, :cond_1d

    :try_start_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/reward/a/d;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->f(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/reward/b/a$c;->b(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/reward/a/d;->f(Z)Z

    move-result v0

    const-string v1, "load timeout task called for onVideoLoadFail after "

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/anythink/expressad/reward/a/d;->d(Z)V

    :try_start_3
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/reward/a/d;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->f(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/reward/b/a$c;->b(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/reward/a/d;->e(Z)V

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/reward/a/d;->f(Z)Z

    move-result v0

    const-string v3, "s exception"

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/reward/a/d;->d(Z)V

    :try_start_4
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/reward/a/d;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->f(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/reward/b/a$c;->b(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/reward/a/d;->e(Z)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_10
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/reward/a/d;->f(Z)Z

    move-result v0

    const-string v3, " s"

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/reward/a/d;->d(Z)V

    :try_start_5
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/reward/a/d;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_11
    :goto_5
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->f(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/reward/b/a$c;->b(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/anythink/expressad/reward/a/d;->e(Z)V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_15
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    goto/16 :goto_7

    :cond_16
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->e(Lcom/anythink/expressad/reward/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    sget-object v0, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/anythink/expressad/a;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    :cond_17
    :try_start_6
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->i(Lcom/anythink/expressad/reward/b/a;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/anythink/expressad/reward/b/a;->b()V

    :cond_18
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/videocommon/d/a;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    return-void

    :catch_2
    move-exception p1

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    return-void

    :cond_1a
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->b(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->b(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1b

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->b(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    goto :goto_6

    :cond_1b
    const/4 p1, 0x0

    :goto_6
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ap()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v2}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/anythink/expressad/reward/a/d;->a(Ljava/util/List;ZI)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->e(Lcom/anythink/expressad/reward/b/a;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->f(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/reward/b/a$c;->a(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->e(Lcom/anythink/expressad/reward/b/a;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/videocommon/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/a;->b()V

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$1;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object p1

    const-string v0, "load timeout"

    invoke-static {p1, v0}, Lcom/anythink/expressad/reward/b/a$c;->a(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;)V

    :cond_1d
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
