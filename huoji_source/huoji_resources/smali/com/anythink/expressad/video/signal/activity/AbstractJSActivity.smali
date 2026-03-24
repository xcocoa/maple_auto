.class public abstract Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;
.super Lcom/anythink/expressad/activity/ATBaseActivity;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/signal/factory/IJSFactory;


# static fields
.field public static final t:Ljava/lang/String; = "AbstractJSActivity"


# instance fields
.field public u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;-><init>()V

    new-instance v0, Lcom/anythink/expressad/video/signal/factory/a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/signal/factory/a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    return-void
.end method

.method private static b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/video/signal/factory/IJSFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    return-void
.end method

.method public getActivityProxy()Lcom/anythink/expressad/video/signal/a;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/factory/IJSFactory;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lcom/anythink/expressad/video/signal/i;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/factory/IJSFactory;->getIJSRewardVideoV1()Lcom/anythink/expressad/video/signal/i;

    move-result-object v0

    return-object v0
.end method

.method public getJSBTModule()Lcom/anythink/expressad/video/signal/b;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/factory/IJSFactory;->getJSBTModule()Lcom/anythink/expressad/video/signal/b;

    move-result-object v0

    return-object v0
.end method

.method public getJSCommon()Lcom/anythink/expressad/video/signal/c;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/factory/IJSFactory;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    return-object v0
.end method

.method public getJSContainerModule()Lcom/anythink/expressad/video/signal/e;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/factory/IJSFactory;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v0

    return-object v0
.end method

.method public getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/factory/IJSFactory;->getJSNotifyProxy()Lcom/anythink/expressad/video/signal/g;

    move-result-object v0

    return-object v0
.end method

.method public getJSVideoModule()Lcom/anythink/expressad/video/signal/j;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->u:Lcom/anythink/expressad/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/factory/IJSFactory;->getJSVideoModule()Lcom/anythink/expressad/video/signal/j;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getJSContainerModule()Lcom/anythink/expressad/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/e;->miniCardShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/a;->g()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/video/signal/a;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/a;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/a;->a(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/expressad/activity/ATBaseActivity;->onResume()V

    sget-boolean v0, Lcom/anythink/expressad/foundation/f/b;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getJSCommon()Lcom/anythink/expressad/video/signal/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/video/signal/a;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/video/signal/activity/AbstractJSActivity;->getActivityProxy()Lcom/anythink/expressad/video/signal/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/anythink/expressad/video/signal/a;->a(I)V

    return-void
.end method
