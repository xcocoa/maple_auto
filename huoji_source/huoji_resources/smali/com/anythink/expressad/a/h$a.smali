.class public final Lcom/anythink/expressad/a/h$a;
.super Lcom/anythink/expressad/foundation/g/g/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final h:I = 0xa


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/a/h;

.field private final e:Ljava/util/concurrent/Semaphore;

.field private final f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/anythink/expressad/c/b;

.field private m:Lcom/anythink/expressad/foundation/d/c;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Lcom/anythink/expressad/a/g$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/a/h;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/c/b;Lcom/anythink/expressad/foundation/d/c;ZZI)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/g/a;-><init>()V

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/expressad/a/h$a;->e:Ljava/util/concurrent/Semaphore;

    new-instance p1, Lcom/anythink/expressad/a/h$a$1;

    invoke-direct {p1, p0}, Lcom/anythink/expressad/a/h$a$1;-><init>(Lcom/anythink/expressad/a/h$a;)V

    iput-object p1, p0, Lcom/anythink/expressad/a/h$a;->q:Lcom/anythink/expressad/a/g$a;

    iput-object p2, p0, Lcom/anythink/expressad/a/h$a;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/expressad/a/h$a;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/a/h$a;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/expressad/a/h$a;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/expressad/a/h$a;->k:Ljava/lang/String;

    iput-object p7, p0, Lcom/anythink/expressad/a/h$a;->l:Lcom/anythink/expressad/c/b;

    iput-object p8, p0, Lcom/anythink/expressad/a/h$a;->m:Lcom/anythink/expressad/foundation/d/c;

    iput-boolean p9, p0, Lcom/anythink/expressad/a/h$a;->n:Z

    iput-boolean p10, p0, Lcom/anythink/expressad/a/h$a;->o:Z

    iput p11, p0, Lcom/anythink/expressad/a/h$a;->p:I

    return-void
.end method

.method private a(Ljava/lang/String;ZZLcom/anythink/expressad/foundation/d/c;I)Lcom/anythink/expressad/a/c$b;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    iget-object v3, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v3}, Lcom/anythink/expressad/a/h;->a(Lcom/anythink/expressad/a/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/anythink/expressad/a/h$a;->f:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/anythink/expressad/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, v0, Lcom/anythink/expressad/a/h$a;->m:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Lcom/anythink/expressad/foundation/d/h;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v3, Lcom/anythink/expressad/a/c$b;

    invoke-direct {v3}, Lcom/anythink/expressad/a/c$b;-><init>()V

    new-instance v4, Lcom/anythink/expressad/a/f;

    invoke-direct {v4}, Lcom/anythink/expressad/a/f;-><init>()V

    :try_start_0
    invoke-static {v1}, Lcom/anythink/expressad/a/h$a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :cond_2
    move-object v5, v2

    goto :goto_1

    :catch_0
    move-object v6, v2

    :catch_1
    :goto_0
    move-object v5, v2

    move-object v2, v6

    :goto_1
    const/4 v6, 0x0

    move-object v8, v1

    const/4 v1, 0x0

    :goto_2
    const/16 v7, 0xa

    if-ge v1, v7, :cond_15

    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v7}, Lcom/anythink/expressad/a/h;->b(Lcom/anythink/expressad/a/h;)Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_3

    return-object v9

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v10, p4

    invoke-virtual {v4, v8, v12, v13, v10}, Lcom/anythink/expressad/a/f;->a(Ljava/lang/String;ZZLcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/a/f$a;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/anythink/expressad/a/h;->a(Lcom/anythink/expressad/a/h;Lcom/anythink/expressad/a/f$a;)Lcom/anythink/expressad/a/f$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v7}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-virtual {v3, v8}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/anythink/expressad/a/c$b;->a(Z)V

    iget-object v1, v0, Lcom/anythink/expressad/a/h$a;->l:Lcom/anythink/expressad/c/b;

    if-eqz v1, :cond_15

    sget v1, Lcom/anythink/expressad/c/a;->a:I

    goto/16 :goto_9

    :cond_4
    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v7}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v7

    iget-object v7, v7, Lcom/anythink/expressad/a/f$a;->h:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v11, 0x1

    if-nez v7, :cond_6

    invoke-virtual {v3, v8}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v2}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v2

    iget-object v2, v2, Lcom/anythink/expressad/a/f$a;->h:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/a/c$b;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/anythink/expressad/a/c$b;->b(I)V

    iget-object v2, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v2}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/expressad/a/f$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/expressad/a/c$b;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/anythink/expressad/a/c$b;->a(Z)V

    if-nez v1, :cond_5

    invoke-static {}, Lcom/anythink/expressad/a/a/a;->a()Lcom/anythink/expressad/a/a/a;

    move-result-object v7

    iget-object v1, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v1

    iget-object v9, v1, Lcom/anythink/expressad/a/f$a;->h:Ljava/lang/String;

    iget-object v11, v0, Lcom/anythink/expressad/a/h$a;->k:Ljava/lang/String;

    move-object/from16 v10, p4

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p5

    invoke-virtual/range {v7 .. v14}, Lcom/anythink/expressad/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;ZZI)V

    :cond_5
    iget-object v1, v0, Lcom/anythink/expressad/a/h$a;->l:Lcom/anythink/expressad/c/b;

    if-eqz v1, :cond_15

    sget v1, Lcom/anythink/expressad/c/a;->a:I

    iget-object v1, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    iget-object v1, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    iget-object v1, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    goto/16 :goto_9

    :cond_6
    invoke-virtual {v3, v11}, Lcom/anythink/expressad/a/c$b;->a(Z)V

    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->l:Lcom/anythink/expressad/c/b;

    if-eqz v7, :cond_7

    sget v7, Lcom/anythink/expressad/c/a;->a:I

    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v7}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v7}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v7}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    :cond_7
    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v7}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v7

    iget v7, v7, Lcom/anythink/expressad/a/f$a;->f:I

    const/16 v14, 0x12d

    if-eq v7, v14, :cond_9

    const/16 v14, 0x12e

    if-eq v7, v14, :cond_9

    const/16 v14, 0x133

    if-ne v7, v14, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_11

    invoke-virtual {v3}, Lcom/anythink/expressad/a/c$b;->b()V

    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v7}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v7

    iget-object v7, v7, Lcom/anythink/expressad/a/f$a;->a:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v3, v11}, Lcom/anythink/expressad/a/c$b;->b(Z)V

    invoke-virtual {v3, v8}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a
    iget-object v7, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v7}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v7

    iget-object v7, v7, Lcom/anythink/expressad/a/f$a;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/anythink/expressad/a/h$a;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v9

    move-object v5, v2

    goto :goto_6

    :cond_b
    :goto_5
    invoke-virtual {v3, v11}, Lcom/anythink/expressad/a/c$b;->b(Z)V

    invoke-virtual {v3, v7}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_c
    invoke-static {v7}, Lcom/anythink/expressad/a/h$a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    :try_start_2
    invoke-static {v7}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    nop

    :cond_d
    :goto_6
    invoke-static {v7}, Lcom/anythink/expressad/foundation/h/s$a;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_5

    :cond_e
    iget-object v8, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v8}, Lcom/anythink/expressad/a/h;->a(Lcom/anythink/expressad/a/h;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v0, Lcom/anythink/expressad/a/h$a;->f:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/anythink/expressad/d/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_f
    iget-object v8, v0, Lcom/anythink/expressad/a/h$a;->m:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v8, :cond_10

    invoke-virtual {v8, v7}, Lcom/anythink/expressad/foundation/d/h;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_10
    move-object v8, v7

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_11
    iget-object v2, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v2}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v2

    iget v2, v2, Lcom/anythink/expressad/a/f$a;->f:I

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_12

    const/4 v2, 0x1

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    :goto_7
    if-eqz v2, :cond_14

    invoke-virtual {v3, v11}, Lcom/anythink/expressad/a/c$b;->b(Z)V

    invoke-virtual {v3, v8}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v1

    iget-object v1, v1, Lcom/anythink/expressad/a/f$a;->g:Ljava/lang/String;

    if-nez v1, :cond_13

    goto :goto_8

    :cond_13
    iget-object v1, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v1

    iget-object v9, v1, Lcom/anythink/expressad/a/f$a;->g:Ljava/lang/String;

    :goto_8
    invoke-virtual {v3, v9}, Lcom/anythink/expressad/a/c$b;->c(Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    invoke-virtual {v3, v6}, Lcom/anythink/expressad/a/c$b;->b(Z)V

    invoke-virtual {v3, v8}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    if-nez v1, :cond_15

    invoke-static {}, Lcom/anythink/expressad/a/a/a;->a()Lcom/anythink/expressad/a/a/a;

    move-result-object v7

    iget-object v1, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v1

    iget-object v9, v1, Lcom/anythink/expressad/a/f$a;->h:Ljava/lang/String;

    iget-object v11, v0, Lcom/anythink/expressad/a/h$a;->k:Ljava/lang/String;

    move-object/from16 v10, p4

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p5

    invoke-virtual/range {v7 .. v14}, Lcom/anythink/expressad/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;ZZI)V

    :cond_15
    :goto_9
    return-object v3
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/h$a;)V
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/a/h$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/h$a;ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->d(Lcom/anythink/expressad/a/h;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v2, v0, v1}, Lcom/anythink/expressad/a/h;->a(Lcom/anythink/expressad/a/h;J)J

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a;->l:Lcom/anythink/expressad/c/b;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {p1}, Lcom/anythink/expressad/a/h;->e(Lcom/anythink/expressad/a/h;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {p0}, Lcom/anythink/expressad/a/h;->f(Lcom/anythink/expressad/a/h;)Z

    sget p0, Lcom/anythink/expressad/c/a;->b:I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {p1}, Lcom/anythink/expressad/a/h;->e(Lcom/anythink/expressad/a/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/anythink/expressad/a/h$a;->l:Lcom/anythink/expressad/c/b;

    if-eqz p0, :cond_2

    sget p0, Lcom/anythink/expressad/c/a;->b:I

    :cond_2
    return-void
.end method

.method private a(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->d(Lcom/anythink/expressad/a/h;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v2, v0, v1}, Lcom/anythink/expressad/a/h;->a(Lcom/anythink/expressad/a/h;J)J

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a;->l:Lcom/anythink/expressad/c/b;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {p1}, Lcom/anythink/expressad/a/h;->e(Lcom/anythink/expressad/a/h;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {p1}, Lcom/anythink/expressad/a/h;->f(Lcom/anythink/expressad/a/h;)Z

    sget p1, Lcom/anythink/expressad/c/a;->b:I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {p1}, Lcom/anythink/expressad/a/h;->e(Lcom/anythink/expressad/a/h;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/anythink/expressad/a/h$a;->l:Lcom/anythink/expressad/c/b;

    if-eqz p1, :cond_2

    sget p1, Lcom/anythink/expressad/c/a;->b:I

    :cond_2
    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/h$a;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/a/h$a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->m:Lcom/anythink/expressad/foundation/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    :cond_0
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/s$a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->c(I)V

    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {p1}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/a/c$b;->b(Z)V

    return v1

    :cond_1
    invoke-static {p1}, Lcom/anythink/expressad/a/h$a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/a/c$b;->c(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->c(I)V

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private static b(I)Z
    .locals 1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x133

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/anythink/expressad/foundation/h/s$a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 22

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->h(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->h(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/e;

    :cond_0
    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    new-instance v1, Lcom/anythink/expressad/a/c$b;

    invoke-direct {v1}, Lcom/anythink/expressad/a/c$b;-><init>()V

    invoke-static {v0, v1}, Lcom/anythink/expressad/a/h;->a(Lcom/anythink/expressad/a/h;Lcom/anythink/expressad/a/c$b;)Lcom/anythink/expressad/a/c$b;

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    iget-object v1, v6, Lcom/anythink/expressad/a/h$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->e(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    iget-object v1, v6, Lcom/anythink/expressad/a/h$a;->g:Ljava/lang/String;

    iget-boolean v2, v6, Lcom/anythink/expressad/a/h$a;->n:Z

    iget-boolean v3, v6, Lcom/anythink/expressad/a/h$a;->o:Z

    iget-object v4, v6, Lcom/anythink/expressad/a/h$a;->m:Lcom/anythink/expressad/foundation/d/c;

    iget v5, v6, Lcom/anythink/expressad/a/h$a;->p:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/a/h$a;->a(Ljava/lang/String;ZZLcom/anythink/expressad/foundation/d/c;I)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/anythink/expressad/a/h;->a(Lcom/anythink/expressad/a/h;Lcom/anythink/expressad/a/c$b;)Lcom/anythink/expressad/a/c$b;

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->a(Z)V

    :cond_1
    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->b(Lcom/anythink/expressad/a/h;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->g()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    iget-object v2, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v2}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v2

    iget v2, v2, Lcom/anythink/expressad/a/f$a;->f:I

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/a/c$b;->a(I)V

    :cond_4
    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/a/h$a;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/s$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0xc8

    iget-object v2, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v2}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v2

    iget v2, v2, Lcom/anythink/expressad/a/f$a;->f:I

    if-ne v0, v2, :cond_6

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXCEPTION_CAMPAIGN_NOT_ACTIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->b(I)V

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "302"

    const-string v1, "startWebViewHtmlParser"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/anythink/expressad/a/g;

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->i(Lcom/anythink/expressad/a/h;)Z

    move-result v0

    invoke-direct {v7, v0}, Lcom/anythink/expressad/a/g;-><init>(Z)V

    iget-object v8, v6, Lcom/anythink/expressad/a/h$a;->i:Ljava/lang/String;

    iget-object v9, v6, Lcom/anythink/expressad/a/h$a;->j:Ljava/lang/String;

    iget-object v10, v6, Lcom/anythink/expressad/a/h$a;->k:Ljava/lang/String;

    iget-object v11, v6, Lcom/anythink/expressad/a/h$a;->f:Landroid/content/Context;

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->f()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v6, Lcom/anythink/expressad/a/h$a;->q:Lcom/anythink/expressad/a/g$a;

    invoke-virtual/range {v7 .. v14}, Lcom/anythink/expressad/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/a/g$a;)V

    goto :goto_0

    :cond_5
    :try_start_0
    new-instance v15, Lcom/anythink/expressad/a/g;

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->i(Lcom/anythink/expressad/a/h;)Z

    move-result v0

    invoke-direct {v15, v0}, Lcom/anythink/expressad/a/g;-><init>(Z)V

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->i:Ljava/lang/String;

    iget-object v1, v6, Lcom/anythink/expressad/a/h$a;->j:Ljava/lang/String;

    iget-object v2, v6, Lcom/anythink/expressad/a/h$a;->k:Ljava/lang/String;

    iget-object v3, v6, Lcom/anythink/expressad/a/h$a;->f:Landroid/content/Context;

    iget-object v4, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v4}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v20

    iget-object v4, v6, Lcom/anythink/expressad/a/h$a;->q:Lcom/anythink/expressad/a/g$a;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v15 .. v21}, Lcom/anythink/expressad/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/a/g$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    return-void

    :cond_6
    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->l:Lcom/anythink/expressad/c/b;

    if-eqz v0, :cond_7

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    sget v0, Lcom/anythink/expressad/c/a;->a:I

    :cond_7
    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->b(I)V

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    iget-object v1, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v1

    iget-object v1, v1, Lcom/anythink/expressad/a/f$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->b(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    iget-object v1, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v1

    iget v1, v1, Lcom/anythink/expressad/a/f$a;->f:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->a(I)V

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    iget-object v1, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/a/f$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->a(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    iget-object v1, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->c(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/f$a;

    move-result-object v1

    iget-object v1, v1, Lcom/anythink/expressad/a/f$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/a/c$b;->c(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v6, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/anythink/expressad/a/h$a;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
