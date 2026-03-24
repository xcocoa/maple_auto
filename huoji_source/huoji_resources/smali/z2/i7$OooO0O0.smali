.class public Lz2/i7$OooO0O0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ji;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/i7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooOOOO:Lz2/i7;


# direct methods
.method public constructor <init>(Lz2/i7;)V
    .locals 0

    iput-object p1, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0, p1, p2}, Lz2/i7;->OooO0o0(ILjava/lang/String;)V

    return-void
.end method

.method public doSpecialFuction(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lz2/c9;->OooO0oo()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lz2/b7;->OooO0Oo()Lz2/b7;

    move-result-object p1

    invoke-virtual {p1}, Lz2/b7;->OooO0oO()Lcom/cyjh/elfin/entity/Script;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lz2/ad;->OooO0o()Lz2/ad;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/Script;->getId()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lz2/i7$OooO0O0$OooO00o;

    invoke-direct {v2, p0}, Lz2/i7$OooO0O0$OooO00o;-><init>(Lz2/i7$OooO0O0;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lz2/ad;->OooOO0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lz2/ad$OooO00o;)V

    :cond_0
    return-void
.end method

.method public getForegroundPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0}, Lz2/i7;->OooO0oo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunningPackages()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/oi;->OooO0OO()Lz2/ni;

    move-result-object v0

    invoke-interface {v0}, Lz2/ni;->getRunningPackages()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inputText(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_VA_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v2}, Lz2/i7;->OooO0oo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_pxkj_engin_opera"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_engin_input"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public keyPress(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_VA_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v2}, Lz2/i7;->OooO0oo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_pxkj_engin_opera"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "key_engin_keypress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->OooO00o()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public killApp(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lz2/oi;->OooO0o()Lz2/oi;

    move-result-object v0

    invoke-virtual {v0}, Lz2/oi;->OooO0OO()Lz2/ni;

    move-result-object v0

    iget-object v1, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v1}, Lz2/i7;->OooOO0()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lz2/ni;->OooO00o(Ljava/lang/String;I)V

    return-void
.end method

.method public launchApp(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-static {v0}, Lz2/i7;->OooO00o(Lz2/i7;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-static {p1}, Lz2/i7;->OooO00o(Lz2/i7;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEngineStart(I)V
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0, p1}, Lz2/i7;->OooOOo(I)V

    return-void
.end method

.method public onKeyEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyEvent1: -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0, p1}, Lz2/i7;->OooOOoo(I)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0}, Lz2/i7;->OooOo00()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0}, Lz2/i7;->OooOo0()V

    return-void
.end method

.method public onScriptIsRunning()V
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0}, Lz2/i7;->OooOo0O()V

    return-void
.end method

.method public onSetControlBarVisiable(I)V
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0, p1}, Lz2/i7;->OooOo0o(I)V

    return-void
.end method

.method public onStartScript()V
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0}, Lz2/i7;->OooOo()V

    return-void
.end method

.method public onStopScript(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0, p1, p2}, Lz2/i7;->OooOoO0(ILjava/lang/String;)V

    return-void
.end method

.method public onUpdateControlBarPos(FII)V
    .locals 1

    iget-object v0, p0, Lz2/i7$OooO0O0;->OooOOOO:Lz2/i7;

    invoke-virtual {v0, p1, p2, p3}, Lz2/i7;->OooOoO(FII)V

    return-void
.end method
