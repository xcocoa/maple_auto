.class public abstract Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;
.super Lcom/anythink/core/api/ATBaseAdAdapter;
.source ""


# instance fields
.field public mATSplashSkipInfo:Lcom/anythink/splashad/api/ATSplashSkipInfo;

.field public mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final cleanImpressionListener()V
    .locals 0

    return-void
.end method

.method public getSplashEyeAd()Lcom/anythink/splashad/api/IATSplashEyeAd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSplashSkipInfo()Lcom/anythink/splashad/api/ATSplashSkipInfo;
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mATSplashSkipInfo:Lcom/anythink/splashad/api/ATSplashSkipInfo;

    return-object v0
.end method

.method public final internalFormatShow(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/core/api/ATCommonImpressionListener;)V
    .locals 1

    new-instance v0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;

    invoke-direct {v0, p0, p3}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter$1;-><init>(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/ATCommonImpressionListener;)V

    iput-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mImpressionListener:Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    invoke-virtual {p0, p1, p2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public final isCustomSkipView()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mATSplashSkipInfo:Lcom/anythink/splashad/api/ATSplashSkipInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/splashad/api/ATSplashSkipInfo;->canUseCustomSkipView()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isMixFormatAd()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mMixedFormatAdType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCustomSkipView()Z
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->getMixedFormatAdType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setSplashSkipInfo(Lcom/anythink/splashad/api/ATSplashSkipInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;->mATSplashSkipInfo:Lcom/anythink/splashad/api/ATSplashSkipInfo;

    return-void
.end method

.method public abstract show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end method

.method public startSplashCustomSkipViewClickEye()V
    .locals 0

    return-void
.end method
