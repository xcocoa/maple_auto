.class public abstract Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/splashad/api/IATSplashEyeAd;


# instance fields
.field public mATSplashEyeAdListener:Lcom/anythink/splashad/api/ATSplashEyeAdListener;

.field public mAtBaseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

.field public mEyeAdContainer:Landroid/view/ViewGroup;

.field public mSplashView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mAtBaseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    return-void
.end method


# virtual methods
.method public abstract customResourceDestory()V
.end method

.method public final destroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mAtBaseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;

    invoke-virtual {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->cleanImpressionListener()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mAtBaseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->internalDestory()V

    iput-object v1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mAtBaseAdAdapter:Lcom/anythink/core/api/ATBaseAdAdapter;

    :cond_1
    iput-object v1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mATSplashEyeAdListener:Lcom/anythink/splashad/api/ATSplashEyeAdListener;

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mSplashView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mSplashView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mSplashView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mSplashView:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mEyeAdContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mEyeAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mEyeAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iput-object v1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mEyeAdContainer:Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->customResourceDestory()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public getSplashEyeAdListener()Lcom/anythink/splashad/api/ATSplashEyeAdListener;
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mATSplashEyeAdListener:Lcom/anythink/splashad/api/ATSplashEyeAdListener;

    return-object v0
.end method

.method public setEyeAdContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mEyeAdContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setSplashView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mSplashView:Landroid/view/View;

    return-void
.end method

.method public abstract show(Landroid/content/Context;Landroid/graphics/Rect;)V
.end method

.method public final show(Landroid/content/Context;Landroid/graphics/Rect;Lcom/anythink/splashad/api/ATSplashEyeAdListener;)V
    .locals 0

    iput-object p3, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->mATSplashEyeAdListener:Lcom/anythink/splashad/api/ATSplashEyeAdListener;

    invoke-virtual {p0, p1, p2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEyeAd;->show(Landroid/content/Context;Landroid/graphics/Rect;)V

    return-void
.end method
