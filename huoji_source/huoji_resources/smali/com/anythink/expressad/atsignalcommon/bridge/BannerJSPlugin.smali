.class public Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;
.super Lcom/anythink/expressad/atsignalcommon/windvane/AbsFeedBackForH5;
.source ""


# instance fields
.field private final h:Ljava/lang/String;

.field private i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/windvane/AbsFeedBackForH5;-><init>()V

    const-string v0, "BannerJSBridge"

    iput-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cai(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->cai(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public click(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->click(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->getFileInfo(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public getNetstat(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->getNetstat(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public gial(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->gial(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->handlerH5Exception(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->increaseOfferFrequence(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public init(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->init(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/windvane/l;->initialize(Landroid/content/Context;Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;)V

    :try_start_0
    instance-of v0, p1, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    iput-object p1, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->install(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public onJSBridgeConnect(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->onJSBridgeConnect(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->openURL(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->readyStatus(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->reportUrls(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public resetCountdown(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->resetCountdown(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public sendImpressions(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->sendImpressions(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/atsignalcommon/bridge/BannerJSPlugin;->i:Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/bridge/IBannerJSBridge;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
