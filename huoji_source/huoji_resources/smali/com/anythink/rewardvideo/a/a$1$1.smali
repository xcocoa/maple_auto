.class public final Lcom/anythink/rewardvideo/a/a$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

.field public final synthetic b:Lcom/anythink/rewardvideo/a/a$1;


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/a/a$1;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iput-object p2, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iget-object v1, v1, Lcom/anythink/rewardvideo/a/a$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/api/ATBaseAdAdapter;->setScenario(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->b()Lcom/anythink/core/api/IExHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iget-object v3, v3, Lcom/anythink/rewardvideo/a/a$1;->e:Lcom/anythink/core/api/ATEventInterface;

    invoke-interface {v0, v1, v2, v3}, Lcom/anythink/core/api/IExHandler;->createDownloadListener(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/BaseAd;Lcom/anythink/core/api/ATEventInterface;)Lcom/anythink/core/api/ATEventInterface;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->setAdDownloadListener(Lcom/anythink/core/api/ATEventInterface;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    iget-object v1, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iget-object v1, v1, Lcom/anythink/rewardvideo/a/a$1;->d:Landroid/app/Activity;

    new-instance v2, Lcom/anythink/rewardvideo/a/d;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/core/common/b/n;->B()Lcom/anythink/core/common/g/c;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iget-object v4, v4, Lcom/anythink/rewardvideo/a/a$1;->f:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-direct {v2, v0, v3, v4}, Lcom/anythink/rewardvideo/a/d;-><init>(Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;Lcom/anythink/core/common/g/c;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->internalShow(Landroid/app/Activity;Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;)V

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/a$1$1;->a:Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ai()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/au;->ah()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/anythink/core/common/f/h;->P()I

    move-result v5

    const/4 v6, 0x4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v7, p0, Lcom/anythink/rewardvideo/a/a$1$1;->b:Lcom/anythink/rewardvideo/a/a$1;

    iget-wide v7, v7, Lcom/anythink/rewardvideo/a/a$1;->g:J

    sub-long v7, v0, v7

    const-string v1, "4"

    invoke-static/range {v1 .. v8}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method
