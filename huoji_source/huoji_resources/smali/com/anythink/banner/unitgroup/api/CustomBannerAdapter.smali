.class public abstract Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
.super Lcom/anythink/core/api/ATBaseAdAdapter;
.source ""


# instance fields
.field public mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBannerView()Landroid/view/View;
.end method

.method public isAdReady()Z
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMixFormatAd()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mMixedFormatAdType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final releaseLoadResource()V
    .locals 0

    invoke-super {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->releaseLoadResource()V

    return-void
.end method

.method public final setAdEventListener(Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    return-void
.end method
