.class public final Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;
.super Lcom/anythink/basead/e/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-direct {p0, p2, p3}, Lcom/anythink/basead/e/f;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/h;)V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/basead/e/i;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/basead/e/f;->onAdClick(Lcom/anythink/basead/e/i;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->k(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->l(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayClicked()V

    :cond_0
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->i(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->j(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onAdShow(Lcom/anythink/basead/e/i;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/anythink/basead/e/f;->onAdShow(Lcom/anythink/basead/e/i;)V

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->g(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {p1}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->h(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayStart()V

    :cond_0
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->m(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->n(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public final onRewarded()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->e(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->f(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onReward()V

    :cond_0
    return-void
.end method

.method public final onShowFailed(Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->c(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->d(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

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

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->a(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter$1;->c:Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;->b(Lcom/anythink/network/adx/AdxATRewardedVideoAdapter;)Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/rewardvideo/unitgroup/api/CustomRewardedVideoEventListener;->onRewardedVideoAdPlayEnd()V

    :cond_0
    return-void
.end method

.method public final onVideoAdPlayStart()V
    .locals 0

    return-void
.end method
