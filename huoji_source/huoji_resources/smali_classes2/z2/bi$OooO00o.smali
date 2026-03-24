.class public Lz2/bi$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/splashad/api/ATSplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/bi;->OooOO0O(Landroid/content/Context;Landroid/view/ViewGroup;Lz2/xh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lz2/xh;

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:Landroid/view/ViewGroup;

.field public final synthetic OooO0Oo:Lz2/bi;


# direct methods
.method public constructor <init>(Lz2/bi;Lz2/xh;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lz2/bi$OooO00o;->OooO0Oo:Lz2/bi;

    iput-object p2, p0, Lz2/bi$OooO00o;->OooO00o:Lz2/xh;

    iput-object p3, p0, Lz2/bi$OooO00o;->OooO0O0:Landroid/content/Context;

    iput-object p4, p0, Lz2/bi$OooO00o;->OooO0OO:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    return-void
.end method

.method public onAdDismiss(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V
    .locals 0

    iget-object p1, p0, Lz2/bi$OooO00o;->OooO00o:Lz2/xh;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lz2/xh;->OooO0OO(Lz2/ai;Lz2/ci;)V

    :cond_0
    return-void
.end method

.method public onAdLoadTimeout()V
    .locals 1

    iget-object v0, p0, Lz2/bi$OooO00o;->OooO00o:Lz2/xh;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/xh;->onAdLoadTimeout()V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Z)V
    .locals 2

    iget-object p1, p0, Lz2/bi$OooO00o;->OooO00o:Lz2/xh;

    if-eqz p1, :cond_0

    const-string p1, "222"

    const-string v0, "init onAdLoaded OK:"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lz2/bi$OooO00o;->OooO0Oo:Lz2/bi;

    invoke-static {p1}, Lz2/bi;->OooO00o(Lz2/bi;)Lcom/anythink/splashad/api/ATSplashAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/splashad/api/ATSplashAd;->isAdReady()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lz2/bi$OooO00o;->OooO0Oo:Lz2/bi;

    invoke-static {p1}, Lz2/bi;->OooO00o(Lz2/bi;)Lcom/anythink/splashad/api/ATSplashAd;

    move-result-object p1

    iget-object v0, p0, Lz2/bi$OooO00o;->OooO0O0:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lz2/bi$OooO00o;->OooO0OO:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0, v1}, Lcom/anythink/splashad/api/ATSplashAd;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .locals 0

    return-void
.end method

.method public onNoAdError(Lcom/anythink/core/api/AdError;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoAdError code :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YunJingAdManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNoAdError msg :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lz2/bi$OooO00o;->OooO00o:Lz2/xh;

    if-eqz v0, :cond_0

    new-instance v1, Lz2/zh;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lz2/zh;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lz2/xh;->OooO0Oo(Lz2/zh;)V

    :cond_0
    return-void
.end method
