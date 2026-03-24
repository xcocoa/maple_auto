.class public final Lcom/anythink/expressad/reward/a/d$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/reward/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/a/d;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_"

    :try_start_0
    iget v4, v2, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1d

    const/16 v5, 0x9

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x6

    const/4 v10, 0x0

    if-eq v4, v5, :cond_18

    const/16 v5, 0x10

    if-eq v4, v5, :cond_18

    const/16 v5, 0x11

    const/4 v11, 0x1

    if-eq v4, v5, :cond_16

    const-string v5, "  mExcludes:"

    const/4 v6, 0x5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    :try_start_1
    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->g(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v4}, Lcom/anythink/expressad/reward/a/d;->h(Lcom/anythink/expressad/reward/a/d;)Z

    invoke-static {v2, v3}, Lcom/anythink/expressad/reward/a/d;->a(Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v2, v2, Lcom/anythink/expressad/reward/a/d;->s:Z

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iput-boolean v11, v2, Lcom/anythink/expressad/reward/a/d;->s:Z

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/anythink/expressad/reward/a/b;->a()V

    return-void

    :pswitch_1
    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->ap()I

    move-result v2

    iget-object v5, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v5}, Lcom/anythink/expressad/reward/a/d;->e(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    invoke-static {v5, v7, v4, v2}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/util/List;ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->g(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v4}, Lcom/anythink/expressad/reward/a/d;->h(Lcom/anythink/expressad/reward/a/d;)Z

    invoke-static {v2, v3}, Lcom/anythink/expressad/reward/a/d;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v2, v2, Lcom/anythink/expressad/reward/a/d;->s:Z

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iput-boolean v11, v2, Lcom/anythink/expressad/reward/a/d;->s:Z

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/anythink/expressad/reward/a/b;->a()V

    :cond_2
    return-void

    :cond_3
    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->h(Lcom/anythink/expressad/reward/a/d;)Z

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v2, v2, Lcom/anythink/expressad/reward/a/d;->t:Z

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iput-boolean v11, v2, Lcom/anythink/expressad/reward/a/d;->t:Z

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    :cond_5
    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    const-string v4, "errorCode: 3401 errorMessage: resource load timeout"

    invoke-interface {v2, v4}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->e(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->e(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->e(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :catch_0
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/foundation/d/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_7

    :try_start_2
    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v6

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->S()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/anythink/expressad/videocommon/b/l;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v7

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/anythink/expressad/videocommon/b/l;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v6, 0x1

    :cond_8
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v7

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/anythink/expressad/videocommon/b/l;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    if-nez v4, :cond_a

    if-nez v6, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v8}, Lcom/anythink/expressad/reward/a/d;->f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->Z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/anythink/expressad/videocommon/a;->a(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/a$a;

    move-result-object v7

    if-nez v7, :cond_a

    const/4 v4, 0x1

    :cond_a
    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cmpt=1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object v7

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/anythink/expressad/videocommon/b/l;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/anythink/expressad/foundation/d/c;->w()I

    move-result v6

    invoke-static {v6, v5}, Lcom/anythink/expressad/videocommon/a;->a(ILcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/videocommon/a$a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :cond_b
    return-void

    :pswitch_2
    :try_start_3
    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->h(Lcom/anythink/expressad/reward/a/d;)Z

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_c
    :try_start_4
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v2, v2, Lcom/anythink/expressad/reward/a/d;->t:Z

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iput-boolean v11, v2, Lcom/anythink/expressad/reward/a/d;->t:Z

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    const-string v3, "errorCode: 3506 errorMessage: data load failed"

    invoke-interface {v2, v3}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V

    return-void

    :cond_e
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v2, v2, Lcom/anythink/expressad/reward/a/d;->t:Z

    if-nez v2, :cond_12

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iput-boolean v11, v2, Lcom/anythink/expressad/reward/a/d;->t:Z

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    const-string v3, "errorCode: 3507 errorMessage: data load failed, errorMsg null"

    invoke-interface {v2, v3}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "=====================onVideoLoadFail=====================3333333 + "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isCalledLoadFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v4, v4, Lcom/anythink/expressad/reward/a/d;->t:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v3, v3, Lcom/anythink/expressad/reward/a/d;->t:Z

    if-nez v3, :cond_12

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iput-boolean v11, v3, Lcom/anythink/expressad/reward/a/d;->t:Z

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v3

    const-string v4, "errorCode: 3507 errorMessage: data load failed, errorMsg is "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_12
    return-void

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->d(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->h(Lcom/anythink/expressad/reward/a/d;)Z

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iget-boolean v3, v3, Lcom/anythink/expressad/reward/a/d;->t:Z

    if-nez v3, :cond_14

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    iput-boolean v11, v3, Lcom/anythink/expressad/reward/a/d;->t:Z

    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "errorCode: 3508 errorMessage: data load failed, exception is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/anythink/expressad/reward/a/b;->a(Ljava/lang/String;)V

    :cond_14
    return-void

    :pswitch_3
    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/anythink/expressad/reward/a/b;->b()V

    :cond_15
    sget v2, Lcom/anythink/expressad/foundation/g/a;->cq:I

    int-to-long v2, v2

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handler id obtain timeout,start load mTtcIds:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v4}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v4}, Lcom/anythink/expressad/reward/a/d;->b(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1e

    return-void

    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handler id obtain success,start load mTtcIds:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v4}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v4}, Lcom/anythink/expressad/reward/a/d;->b(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1e

    return-void

    :cond_16
    :try_start_6
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v3, v2, v10

    move-object v14, v3

    check-cast v14, Lcom/anythink/expressad/foundation/d/c;

    aget-object v3, v2, v11

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    aget-object v3, v2, v8

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    aget-object v3, v2, v7

    move-object/from16 v17, v3

    check-cast v17, Lcom/anythink/expressad/videocommon/e/d;

    aget-object v2, v2, v6

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    if-eqz v14, :cond_17

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v12, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static/range {v12 .. v17}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_17
    return-void

    :catch_2
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    sget-boolean v3, Lcom/anythink/expressad/a;->a:Z

    if-eqz v3, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    :cond_18
    :try_start_8
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    aget-object v3, v2, v10

    move-object v13, v3

    check-cast v13, Lcom/anythink/expressad/foundation/d/c;

    aget-object v3, v2, v8

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    aget-object v3, v2, v7

    move-object/from16 v17, v3

    check-cast v17, Lcom/anythink/expressad/videocommon/e/d;

    aget-object v3, v2, v6

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x7

    if-ne v4, v5, :cond_19

    aget-object v2, v2, v9

    check-cast v2, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    move-object v11, v2

    goto :goto_4

    :cond_19
    move-object v11, v3

    :goto_4
    if-eqz v13, :cond_1b

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->j(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-nez v2, :cond_1a

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->g(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v10, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v10}, Lcom/anythink/expressad/reward/a/d;->g(Lcom/anythink/expressad/reward/a/d;)Ljava/util/List;

    move-result-object v14

    const-string v15, ""

    invoke-static/range {v10 .. v17}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V

    return-void

    :cond_1a
    iget-object v10, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v10}, Lcom/anythink/expressad/reward/a/d;->j(Lcom/anythink/expressad/reward/a/d;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v14

    const-string v15, ""

    invoke-static/range {v10 .. v17}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/e/d;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1b
    return-void

    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    sget-boolean v3, Lcom/anythink/expressad/a;->a:Z

    if-eqz v3, :cond_1c

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    return-void

    :cond_1d
    iget-object v3, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v3}, Lcom/anythink/expressad/reward/a/d;->c(Lcom/anythink/expressad/reward/a/d;)Lcom/anythink/expressad/reward/a/b;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v2}, Lcom/anythink/expressad/reward/a/d;->f(Lcom/anythink/expressad/reward/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, v1, Lcom/anythink/expressad/reward/a/d$1;->a:Lcom/anythink/expressad/reward/a/d;

    invoke-virtual {v2}, Lcom/anythink/expressad/reward/a/d;->c()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_1e
    :goto_5
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void

    :catch_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
