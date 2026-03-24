.class public Lmobi/oneway/export/AdShowActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field public iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

.field public pluginActivityClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/oneway/export/AdShowActivity;->pluginActivityClass:Ljava/lang/Class;

    iput-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    :try_start_0
    const-string v0, "mobi.oneway.sdk.AdShowActivity"

    invoke-static {v0}, Lmobi/oneway/export/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/AdShowActivity;->pluginActivityClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/plugin/IActivityInterface;

    iput-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    invoke-interface {v0, p0}, Lmobi/oneway/export/plugin/IActivityInterface;->attach(Lmobi/oneway/export/AdShowActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectClass:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {v0}, Lmobi/oneway/export/g/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmobi/oneway/export/plugin/IActivityInterface;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/plugin/IActivityInterface;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDownInHost(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lmobi/oneway/export/plugin/IActivityInterface;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lmobi/oneway/export/AdShowActivity;->iActivityInterface:Lmobi/oneway/export/plugin/IActivityInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmobi/oneway/export/plugin/IActivityInterface;->onStop()V

    :cond_0
    return-void
.end method
