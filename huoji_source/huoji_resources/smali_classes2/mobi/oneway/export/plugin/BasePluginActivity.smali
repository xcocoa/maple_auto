.class public Lmobi/oneway/export/plugin/BasePluginActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lmobi/oneway/export/plugin/IActivityInterface;


# instance fields
.field public hostActivity:Lmobi/oneway/export/AdShowActivity;

.field public isPluginMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    return-void
.end method


# virtual methods
.method public attach(Lmobi/oneway/export/AdShowActivity;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Lmobi/oneway/export/AdShowActivity;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Lmobi/oneway/export/AdShowActivity;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Lmobi/oneway/export/AdShowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHostActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Lmobi/oneway/export/AdShowActivity;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Lmobi/oneway/export/AdShowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMainLooper()Landroid/os/Looper;
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Lmobi/oneway/export/AdShowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Lmobi/oneway/export/AdShowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Lmobi/oneway/export/AdShowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->hostActivity:Lmobi/oneway/export/AdShowActivity;

    invoke-virtual {v0, p1, p2}, Lmobi/oneway/export/AdShowActivity;->onKeyDownInHost(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/plugin/BasePluginActivity;->isPluginMode:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :cond_0
    return-void
.end method
