.class public Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;
.super Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OctopusATNativeUnifiedAd"


# instance fields
.field private mAdResponse:Lcom/octopus/ad/NativeAdResponse;

.field private mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/octopus/ad/NativeAdResponse;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    invoke-virtual {p0}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->setAdData()V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getChildView(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->getChildView(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    return-void
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/octopus/ad/NativeAdResponse;->getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getClickViewList()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->getChildView(Ljava/util/List;Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    new-instance v1, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd$1;-><init>(Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/octopus/ad/NativeAdResponse;->bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V

    return-void
.end method

.method public setAdData()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setDescriptionText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setIconImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setMainImageUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getImageUrls()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setImageUrlList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/octopus/ad/topon/OctopusATNativeUnifiedAd;->mAdResponse:Lcom/octopus/ad/NativeAdResponse;

    invoke-interface {v0}, Lcom/octopus/ad/NativeAdResponse;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->setCallToActionText(Ljava/lang/String;)V

    return-void
.end method
