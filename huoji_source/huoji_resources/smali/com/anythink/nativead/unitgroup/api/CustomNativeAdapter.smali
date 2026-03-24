.class public abstract Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;
.super Lcom/anythink/core/api/ATBaseAdAdapter;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAdReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isMixFormatAd()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/api/ATBaseAdAdapter;->mMixedFormatAdType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
