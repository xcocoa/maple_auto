.class public final Lcom/anythink/expressad/video/signal/a/n;
.super Lcom/anythink/expressad/video/signal/a/g;
.source ""


# instance fields
.field private t:Lcom/anythink/expressad/video/module/AnythinkVideoView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/a/g;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    return-void
.end method


# virtual methods
.method public final alertWebViewShowed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->alertWebViewShowed()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->alertWebViewShowed()V

    return-void
.end method

.method public final closeVideoOperate(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/g;->closeVideoOperate(II)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->closeVideoOperate(II)V

    :cond_0
    return-void
.end method

.method public final dismissAllAlert()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->dismissAllAlert()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->dismissAllAlert()V

    return-void
.end method

.method public final getBorderViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewHeight()I

    move-result v0

    return v0
.end method

.method public final getBorderViewLeft()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewLeft()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewLeft()I

    move-result v0

    return v0
.end method

.method public final getBorderViewRadius()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewRadius()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewRadius()I

    move-result v0

    return v0
.end method

.method public final getBorderViewTop()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewTop()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewTop()I

    move-result v0

    return v0
.end method

.method public final getBorderViewWidth()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getBorderViewWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getBorderViewWidth()I

    move-result v0

    return v0
.end method

.method public final getCurrentProgress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hideAlertView(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->hideAlertView(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->hideAlertView(I)V

    return-void
.end method

.method public final isH5Canvas()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->isH5Canvas()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->isH5Canvas()Z

    move-result v0

    return v0
.end method

.method public final progressOperate(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/g;->progressOperate(II)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->progressOperate(II)V

    :cond_0
    return-void
.end method

.method public final setCover(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setCover(Z)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->setCover(Z)V

    return-void
.end method

.method public final setScaleFitXY(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setScaleFitXY(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->setScaleFitXY(I)V

    return-void
.end method

.method public final setVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->setVisible(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->setVisible(I)V

    return-void
.end method

.method public final showAlertView()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showAlertView()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/anythink/expressad/video/signal/a/g;->showAlertView()V

    return-void
.end method

.method public final showIVRewardAlertView(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showIVRewardAlertView(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->showIVRewardAlertView(Ljava/lang/String;)V

    return-void
.end method

.method public final showVideoLocation(IIIIIIIII)V
    .locals 11

    invoke-super/range {p0 .. p9}, Lcom/anythink/expressad/video/signal/a/g;->showVideoLocation(IIIIIIIII)V

    move-object v0, p0

    iget-object v1, v0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->showVideoLocation(IIIIIIIII)V

    :cond_0
    return-void
.end method

.method public final soundOperate(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/a/g;->soundOperate(II)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(II)V

    :cond_0
    return-void
.end method

.method public final soundOperate(IILjava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/anythink/expressad/video/signal/a/g;->soundOperate(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->soundOperate(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final videoOperate(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/anythink/expressad/video/signal/a/g;->videoOperate(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/a/n;->t:Lcom/anythink/expressad/video/module/AnythinkVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/video/module/AnythinkVideoView;->videoOperate(I)V

    :cond_0
    return-void
.end method
