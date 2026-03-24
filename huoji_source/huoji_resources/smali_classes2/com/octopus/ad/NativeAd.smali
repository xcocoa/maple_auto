.class public final Lcom/octopus/ad/NativeAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/AdLifeControl;
.implements Lcom/octopus/ad/IBidding;


# instance fields
.field private final a:Lcom/octopus/ad/internal/nativead/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/NativeAdListener;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/octopus/ad/internal/nativead/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/octopus/ad/internal/nativead/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    invoke-virtual {v0, p3}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/NativeAdListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->g()V

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    iget-object v0, v0, Lcom/octopus/ad/internal/nativead/a;->a:Lcom/octopus/ad/internal/c;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/c;->a()V

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/octopus/ad/NativeAd;->cancel()V

    return-void
.end method

.method public getAdSlotId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/internal/nativead/a;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public loadAd()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/nativead/a;->a(Lcom/octopus/ad/internal/network/a$a;)Z

    return-void
.end method

.method public onCreateLifeCycle()V
    .locals 0

    return-void
.end method

.method public onDestroyLifeCycle()V
    .locals 0

    return-void
.end method

.method public onPauseLifeCycle()V
    .locals 0

    return-void
.end method

.method public onRestartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onResumeLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStartLifeCycle()V
    .locals 0

    return-void
.end method

.method public onStopLifeCycle()V
    .locals 0

    return-void
.end method

.method public openAdInNativeBrowser(Z)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/nativead/a;->b(Z)V

    return-void
.end method

.method public sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/octopus/ad/internal/nativead/a;->sendLossNotice(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendWinNotice(I)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/nativead/a;->sendWinNotice(I)V

    return-void
.end method

.method public setAdSlotId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/nativead/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/nativead/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/NativeAd;->a:Lcom/octopus/ad/internal/nativead/a;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/nativead/a;->d(Ljava/lang/String;)V

    return-void
.end method
