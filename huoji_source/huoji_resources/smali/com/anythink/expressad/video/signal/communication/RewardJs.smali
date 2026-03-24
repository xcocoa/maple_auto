.class public Lcom/anythink/expressad/video/signal/communication/RewardJs;
.super Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/communication/IRewardBridge;


# instance fields
.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->install(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->cai(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->gial(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cai(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->cai(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$9;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public feedbackLayoutOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/AbsFeedBackForH5;->feedbackLayoutOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public feedbackOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/AbsFeedBackForH5;->feedbackOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public feedbackPopupOperate(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/AbsFeedBackForH5;->feedbackPopupOperate(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$1;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public gial(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->gial(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$10;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$7;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->install(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$2;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$3;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->openURL(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$8;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$6;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$4;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/h/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/BaseRewardJs;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/signal/communication/RewardJs;->j:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/video/signal/communication/RewardJs$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/video/signal/communication/RewardJs$5;-><init>(Lcom/anythink/expressad/video/signal/communication/RewardJs;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
