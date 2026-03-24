.class public final Lcom/anythink/rewardvideo/a/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;Lcom/anythink/core/api/ATEventInterface;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Lcom/anythink/core/api/ATEventInterface;

.field public final synthetic f:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

.field public final synthetic g:J

.field public final synthetic h:Lcom/anythink/rewardvideo/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/a/a;Lcom/anythink/core/common/f/b;Ljava/lang/String;Ljava/util/Map;Landroid/app/Activity;Lcom/anythink/core/api/ATEventInterface;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;J)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a$1;->h:Lcom/anythink/rewardvideo/a/a;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/common/f/b;

    iput-object p3, p0, Lcom/anythink/rewardvideo/a/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/rewardvideo/a/a$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/anythink/rewardvideo/a/a$1;->d:Landroid/app/Activity;

    iput-object p6, p0, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/core/api/ATEventInterface;

    iput-object p7, p0, Lcom/anythink/rewardvideo/a/a$1;->f:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    iput-wide p8, p0, Lcom/anythink/rewardvideo/a/a$1;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/anythink/core/common/f/h;->B:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5, v6}, Lcom/anythink/core/common/o/h;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/anythink/core/common/f/h;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->h:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/a;->a(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/anythink/core/common/o/v;->a(Landroid/content/Context;Lcom/anythink/core/common/f/h;)V

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->c:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/anythink/core/common/o/v;->a(Ljava/util/Map;Lcom/anythink/core/common/f/h;)V

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->h:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/a;->b(Lcom/anythink/rewardvideo/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/anythink/core/common/o/v;->a(Ljava/lang/String;Lcom/anythink/core/common/f/h;)V

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->h:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v1}, Lcom/anythink/rewardvideo/a/a;->a(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/b;)V

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->h:Lcom/anythink/rewardvideo/a/a;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/a;->a(Lcom/anythink/rewardvideo/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v1

    const/16 v2, 0xd

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getUnitGroupInfo()Lcom/anythink/core/common/f/av;

    move-result-object v4

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;Lcom/anythink/core/common/f/av;J)V

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1;->a:Lcom/anythink/core/common/f/b;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/b;->d()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v0

    check-cast v0, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1;->d:Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/d;->refreshActivityContext(Landroid/app/Activity;)V

    :cond_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    new-instance v2, Lcom/anythink/rewardvideo/a/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/anythink/rewardvideo/a/a$1$1;-><init>(Lcom/anythink/rewardvideo/a/a$1;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
