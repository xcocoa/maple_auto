.class public Lz2/hi$OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/hi;


# direct methods
.method public constructor <init>(Lz2/hi;)V
    .locals 0

    iput-object p1, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0}, Lz2/ji;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0}, Lz2/ji;->onResume()V

    :cond_0
    return-void
.end method

.method public onScriptIsRunning()V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0}, Lz2/ji;->onScriptIsRunning()V

    :cond_0
    return-void
.end method

.method public onSetControlBarVisiable(I)V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0, p1}, Lz2/ji;->onSetControlBarVisiable(I)V

    :cond_0
    return-void
.end method

.method public onStartScript()V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0}, Lz2/ji;->onStartScript()V

    :cond_0
    return-void
.end method

.method public onStopScript(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lz2/ji;->onStopScript(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpdateControlBarPos(FII)V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooO0o;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lz2/ji;->onUpdateControlBarPos(FII)V

    :cond_0
    return-void
.end method
