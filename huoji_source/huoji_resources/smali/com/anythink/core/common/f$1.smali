.class public final Lcom/anythink/core/common/f$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/v;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/anythink/core/common/b/a;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:[I

.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:Lcom/anythink/core/common/f;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/f/v;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/b/a;Landroid/content/Context;[ILjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-object p2, p0, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iput-object p3, p0, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/core/common/f$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    iput-object p6, p0, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    iput-object p7, p0, Lcom/anythink/core/common/f$1;->f:[I

    iput-object p8, p0, Lcom/anythink/core/common/f$1;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v0, v0, Lcom/anythink/core/common/f/v;->d:I

    if-eqz v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v0, v0, Lcom/anythink/core/common/f/v;->d:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/common/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v0, v0, Lcom/anythink/core/common/f/v;->d:I

    if-nez v0, :cond_2

    const-string v0, "anythink"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PlacementId("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") the load api calls are not allowed in Auto-load mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :cond_2
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v3, v0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    if-nez v3, :cond_3

    new-instance v3, Lcom/anythink/core/common/n;

    invoke-direct {v3}, Lcom/anythink/core/common/n;-><init>()V

    iput-object v3, v0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    :cond_3
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/anythink/core/common/n;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/anythink/core/common/n;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/n;->a(Lcom/anythink/core/common/b/a;)V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v4, v3, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    iput-object v4, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    iget v0, v0, Lcom/anythink/core/common/f/v;->d:I

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eq v0, v4, :cond_4

    iput v5, v3, Lcom/anythink/core/common/f;->f:I

    goto :goto_0

    :cond_4
    iget v0, v3, Lcom/anythink/core/common/f;->f:I

    add-int/2addr v0, v5

    iput v0, v3, Lcom/anythink/core/common/f;->f:I

    :goto_0
    invoke-static {v3}, Lcom/anythink/core/common/f;->c(Lcom/anythink/core/common/f;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "PlacementId("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") start load type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v3, v3, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/n;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v6, v7}, Lcom/anythink/core/common/b/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/common/o/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iput-object v0, v3, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    :goto_1
    move-object v3, v0

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v6, v6, Lcom/anythink/core/common/f/v;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    iget-object v0, v0, Lcom/anythink/core/common/f;->i:Lcom/anythink/core/common/j/c;

    if-eqz v0, :cond_6

    invoke-interface {v0, v6, v7}, Lcom/anythink/core/common/j/c;->a(Ljava/lang/String;Lcom/anythink/core/common/b/a;)V

    :cond_6
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v13, 0x0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/common/o/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_a

    :cond_7
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->d(Lcom/anythink/core/common/f;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "anythink"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Placement("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is loading."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    const-string v3, "type_start_load"

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v5}, Lcom/anythink/core/common/f;->e(Lcom/anythink/core/common/f;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v6, v6, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/anythink/core/common/e;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_8
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->p()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->v()Z

    move-result v15

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget v9, v0, Lcom/anythink/core/common/f/v;->d:I

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v12

    const/4 v0, 0x0

    if-nez v15, :cond_b

    const/16 v0, 0xd

    if-ne v9, v0, :cond_9

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/anythink/core/d/h;->d(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    goto :goto_2

    :cond_9
    const/16 v0, 0xe

    if-ne v9, v0, :cond_a

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/anythink/core/d/h;->e(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    goto :goto_2

    :cond_a
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/anythink/core/d/h;->c(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    :cond_b
    :goto_2
    iget-object v6, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v6}, Lcom/anythink/core/common/f;->f(Lcom/anythink/core/common/f;)Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startLoad() >>> loadType: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mPlacementId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " strategyType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_c

    const-string v7, "\u672c\u5730\u7f13\u5b58\u7b56\u7565\u4e3a\u7a7a"

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Lcom/anythink/core/d/f;->aR()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " isInDebugMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->f:[I

    aget v10, v6, v13

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v11, v6, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    iget-object v8, v6, Lcom/anythink/core/common/f/v;->i:Lcom/anythink/core/common/f/c;

    move-object v6, v3

    move-object/from16 v16, v8

    move-object v8, v0

    move-object v4, v12

    move-object/from16 v12, v16

    invoke-static/range {v6 .. v12}, Lcom/anythink/core/common/o/v;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;IILjava/util/Map;Lcom/anythink/core/common/f/c;)Lcom/anythink/core/common/f/h;

    move-result-object v6

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/f/au;->y(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->g:Ljava/util/Map;

    if-eqz v7, :cond_d

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/f/h;->b(Ljava/util/Map;)V

    :cond_d
    if-nez v0, :cond_f

    if-nez v15, :cond_f

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v7, v7, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v7, v7, Lcom/anythink/core/common/f/v;->b:Lcom/anythink/core/api/ATMediationRequestInfo;

    if-eqz v7, :cond_f

    :cond_e
    const-string v7, "anythink"

    const-string v8, "request default adsource for splash."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v7}, Lcom/anythink/core/common/f;->f(Lcom/anythink/core/common/f;)Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "startLoad() >>> DefaultAdSource started. requestId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " mPlacementId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v8, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v10, v7, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    invoke-static {v7, v8, v3, v9, v10}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/f/v;Lcom/anythink/core/common/n;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-object v3, v0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/au;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v15

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v3, v3, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    const/16 v21, 0x0

    const/16 v22, 0x3

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v15 .. v22}, Lcom/anythink/core/d/h;->a(Lcom/anythink/core/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/d/h$b;I)V

    monitor-exit v2

    return-void

    :cond_f
    iget-object v7, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/anythink/core/d/h;->f(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_10

    if-nez v15, :cond_10

    if-eqz v7, :cond_10

    goto :goto_4

    :cond_10
    move-object v7, v0

    :goto_4
    if-eqz v7, :cond_11

    :try_start_1
    invoke-static {v7, v6}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V

    invoke-static {v7, v6}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;)V
    :try_end_1
    .catch Lcom/anythink/core/common/f/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-static {v3, v5, v6, v0, v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    monitor-exit v2

    return-void

    :cond_11
    :goto_5
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/v;->c()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->c()I

    move-result v0

    if-lez v0, :cond_17

    if-eqz v7, :cond_17

    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v8

    iget-object v9, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    iget-object v10, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/f/b;

    move-result-object v8

    if-eqz v8, :cond_15

    iget-object v8, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v8}, Lcom/anythink/core/common/f;->f(Lcom/anythink/core/common/f;)Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Upstatus vail count:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "::Setting UpstatuCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/anythink/core/d/f;->i()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/anythink/core/d/f;->i()I

    move-result v8

    if-lt v0, v8, :cond_13

    invoke-virtual {v6, v13}, Lcom/anythink/core/common/f/h;->b(Z)V

    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Lcom/anythink/core/common/f/h;->E(I)V

    invoke-static {v14}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v6}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    invoke-static {v14}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v0

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-boolean v13, v0, Lcom/anythink/core/common/f;->d:Z

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v0, v0, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/n;->b(Lcom/anythink/core/common/b/a;)V

    :cond_12
    monitor-exit v2

    return-void

    :cond_13
    iget-object v8, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    if-eqz v8, :cond_14

    invoke-interface {v8}, Lcom/anythink/core/common/b/a;->onAdLoaded()V

    iget-object v8, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v8, v8, Lcom/anythink/core/common/f;->g:Lcom/anythink/core/common/n;

    iget-object v9, v1, Lcom/anythink/core/common/f$1;->d:Lcom/anythink/core/common/b/a;

    invoke-virtual {v8, v9}, Lcom/anythink/core/common/n;->b(Lcom/anythink/core/common/b/a;)V

    :cond_14
    iget-object v8, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v8}, Lcom/anythink/core/common/f;->f(Lcom/anythink/core/common/f;)Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Upstatus vail count:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "::Setting UpstatuCount:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/anythink/core/d/f;->i()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "::StartFilledLoad"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    const/16 v8, 0x9

    iput v8, v0, Lcom/anythink/core/common/f/v;->d:I

    invoke-virtual {v6, v8}, Lcom/anythink/core/common/f/h;->x(I)V

    goto :goto_7

    :cond_15
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    :goto_6
    invoke-virtual {v0}, Lcom/anythink/core/common/f;->b()V

    goto :goto_7

    :cond_16
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    goto :goto_6

    :cond_17
    :goto_7
    if-eqz v7, :cond_19

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->g(Lcom/anythink/core/common/f;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->h(Lcom/anythink/core/common/f;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_19

    invoke-virtual {v7}, Lcom/anythink/core/d/f;->at()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-gez v0, :cond_19

    const-string v0, "2008"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v6, v3}, Lcom/anythink/core/common/f/h;->E(I)V

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v3}, Lcom/anythink/core/common/f;->i(Lcom/anythink/core/common/f;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v13, 0x1

    :cond_18
    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    new-instance v4, Lcom/anythink/core/common/f/g;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-static {v3, v13, v6, v4, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0, v5}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Z)Z

    monitor-exit v2

    return-void

    :cond_19
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->j(Lcom/anythink/core/common/f;)Z

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0}, Lcom/anythink/core/common/f;->k(Lcom/anythink/core/common/f;)J

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v0, v13}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;Z)Z

    if-eqz v7, :cond_1a

    invoke-static {}, Lcom/anythink/core/a/b;->a()Lcom/anythink/core/a/b;

    move-result-object v0

    iget-object v8, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v14, v8, v7}, Lcom/anythink/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/d/f;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "2009"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v6, v3}, Lcom/anythink/core/common/f/h;->E(I)V

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    new-instance v4, Lcom/anythink/core/common/f/g;

    invoke-virtual {v0}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v0, v7}, Lcom/anythink/core/common/f/g;-><init>(Lcom/anythink/core/api/AdError;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-static {v3, v5, v6, v4, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f;ZLcom/anythink/core/common/f/h;Ljava/lang/Throwable;Lcom/anythink/core/common/f/v;)V

    monitor-exit v2

    return-void

    :cond_1a
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-virtual {v0}, Lcom/anythink/core/common/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "anythink"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Placement("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is loading."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v0, v0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    const-string v3, "type_start_load"

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    invoke-static {v5}, Lcom/anythink/core/common/f;->e(Lcom/anythink/core/common/f;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v6, v6, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/anythink/core/common/e;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1b
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/anythink/core/d/h;->g(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-boolean v5, v0, Lcom/anythink/core/common/f;->d:Z

    iget-object v0, v0, Lcom/anythink/core/common/f;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/g;

    invoke-virtual {v4}, Lcom/anythink/core/common/g;->f()V

    goto :goto_8

    :cond_1c
    const/4 v0, 0x2

    if-nez v15, :cond_1e

    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Lcom/anythink/core/d/f;->aJ()Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1d
    const/4 v0, 0x3

    const/16 v22, 0x3

    goto :goto_9

    :cond_1e
    const/16 v22, 0x2

    :goto_9
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v15

    iget-object v0, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    iget-object v4, v4, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    new-instance v5, Lcom/anythink/core/common/f$1$1;

    invoke-direct {v5, v1, v6, v14, v3}, Lcom/anythink/core/common/f$1$1;-><init>(Lcom/anythink/core/common/f$1;Lcom/anythink/core/common/f/h;Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v16, v7

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v15 .. v22}, Lcom/anythink/core/d/h;->a(Lcom/anythink/core/d/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/d/h$b;I)V

    monitor-exit v2

    return-void

    :cond_1f
    :goto_a
    const-string v0, "3002"

    const-string v3, ""

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    iget-object v3, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->a:Lcom/anythink/core/common/f/v;

    invoke-virtual {v3, v4, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/common/f/v;Lcom/anythink/core/api/AdError;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->A()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "anythink"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Please check these params in your code (AppId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", AppKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/n;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", PlacementId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/anythink/core/common/f$1;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, v1, Lcom/anythink/core/common/f$1;->h:Lcom/anythink/core/common/f;

    iput-boolean v13, v0, Lcom/anythink/core/common/f;->d:Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method
