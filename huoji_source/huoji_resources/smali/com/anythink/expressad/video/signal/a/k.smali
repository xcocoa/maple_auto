.class public final Lcom/anythink/expressad/video/signal/a/k;
.super Lcom/anythink/expressad/video/signal/a/d;
.source ""


# instance fields
.field private k:Lcom/anythink/expressad/video/module/AnythinkContainerView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/a/d;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    return-void
.end method


# virtual methods
.method public final configurationChanged(III)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/video/signal/a/d;->configurationChanged(III)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->configurationChanged(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final endCardShowing()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->endCardShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->endCardShowing()Z

    move-result v0

    return v0
.end method

.method public final hideAlertWebview()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->hideAlertWebview()V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->hideAlertWebview()V

    :cond_0
    return-void
.end method

.method public final install(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->install(Lcom/anythink/expressad/foundation/d/c;)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->install(Lcom/anythink/expressad/foundation/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final ivRewardAdsWithoutVideo(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->ivRewardAdsWithoutVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final miniCardLoaded()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->miniCardLoaded()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->miniCardLoaded()Z

    move-result v0

    return v0
.end method

.method public final miniCardShowing()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->miniCardShowing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->miniCardShowing()Z

    move-result v0

    return v0
.end method

.method public final orientation(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->orientation(Landroid/content/res/Configuration;)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->orientation(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->preLoadData(Lcom/anythink/expressad/video/signal/factory/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final readyStatus(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->readyStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->readyStatus(I)V

    return-void
.end method

.method public final resizeMiniCard(III)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/video/signal/a/d;->resizeMiniCard(III)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->resizeMiniCard(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showAlertWebView()Z
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->showAlertWebView()Z

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showAlertWebView()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final showEndcard(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->showEndcard(I)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showEndcard(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showMiniCard(IIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Lcom/anythink/expressad/video/signal/a/d;->showMiniCard(IIIII)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showMiniCard(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showPlayableView()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->showPlayableView()V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showPlayableView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final showVideoClickView(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->showVideoClickView(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->showVideoClickView(I)V

    :cond_0
    return-void
.end method

.method public final toggleCloseBtn(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/d;->toggleCloseBtn(I)V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->toggleCloseBtn(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final webviewshow()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/d;->webviewshow()V

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/k;->k:Lcom/anythink/expressad/video/module/AnythinkContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkContainerView;->webviewshow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
