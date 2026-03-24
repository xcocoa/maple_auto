.class public final Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/basead/e/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/common/b/d;->getTrackingInfo()Lcom/anythink/core/common/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Lcom/anythink/basead/e/i;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/h;->B(I)V

    iget p1, p1, Lcom/anythink/basead/e/i;->b:I

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/h;->C(I)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->k(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->l(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->i(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->j(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->g(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->h(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->m(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->n(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onRewarded()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->e(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->f(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    :cond_0
    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->c(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->d(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/basead/c/e;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onVideoAdPlayEnd()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->a(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter$1;->a:Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;->b(Lcom/anythink/network/onlineapi/OnlineApiATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .locals 0

    return-void
.end method
