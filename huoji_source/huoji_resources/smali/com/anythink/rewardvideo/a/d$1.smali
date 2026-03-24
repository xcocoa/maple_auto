.class public final Lcom/anythink/rewardvideo/a/d$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/rewardvideo/a/d;->onRewardedVideoAdClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/rewardvideo/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/rewardvideo/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/rewardvideo/a/d$1;->a:Lcom/anythink/rewardvideo/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d$1;->a:Lcom/anythink/rewardvideo/a/d;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/d;->a(Lcom/anythink/rewardvideo/a/d;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;->clearImpressionListener()V

    iget-object v0, p0, Lcom/anythink/rewardvideo/a/d$1;->a:Lcom/anythink/rewardvideo/a/d;

    invoke-static {v0}, Lcom/anythink/rewardvideo/a/d;->a(Lcom/anythink/rewardvideo/a/d;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardVideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalDestory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
