.class public Lz2/hi$OooOO0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;


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

    iput-object p1, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doSpecialFuction(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lz2/ji;->doSpecialFuction(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getForegroundPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0}, Lz2/ji;->getForegroundPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRunningPackages()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0}, Lz2/ji;->getRunningPackages()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public inputText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0, p1}, Lz2/ji;->inputText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public keyPress(I)V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0, p1}, Lz2/ji;->keyPress(I)V

    :cond_0
    return-void
.end method

.method public killApp(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0, p1}, Lz2/ji;->killApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public launchApp(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/hi$OooOO0;->OooO00o:Lz2/hi;

    invoke-static {v0}, Lz2/hi;->OooO00o(Lz2/hi;)Lz2/ji;

    move-result-object v0

    invoke-interface {v0, p1}, Lz2/ji;->launchApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
