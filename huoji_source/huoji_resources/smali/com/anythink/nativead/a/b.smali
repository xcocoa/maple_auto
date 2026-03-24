.class public final Lcom/anythink/nativead/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeMaterial;


# instance fields
.field public a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;


# direct methods
.method public constructor <init>(Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    return-void
.end method


# virtual methods
.method public final getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdChoiceIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdChoiceIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getAdFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getAdIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdIconView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdLogo()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdLogoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdLogoView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->isNativeExpress()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdMediaView([Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public final getAdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getAdType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public final getAdvertiserInfoOperate()Lcom/anythink/core/api/IATAdvertiserInfoOperate;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getAdvertiserInfoOperate()Lcom/anythink/core/api/IATAdvertiserInfoOperate;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdvertiserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getAppCommentNum()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAppCommentNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getAppDownloadButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAppDownloadButton()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAppPrice()D
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getAppPrice()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getCallToActionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getCallToActionText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getDescriptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDescriptionText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getDomain()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getDownloadProgress()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDownloadProgress()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDownloadStatus()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/a;->getDownloadStatus()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getImageUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getImageUrlList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMainImageHeight()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getMainImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getMainImageWidth()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getMainImageWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNativeAdInteractionType()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getNativeAdInteractionType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNativeExpressHeight()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getNativeExpressHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNativeExpressWidth()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getNativeExpressWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNativeType()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getNativeType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getNetworkInfoMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getNetworkInfoMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/nativead/unitgroup/a;->getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSlideView(IIILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/anythink/nativead/unitgroup/a;->getSlideView(IIILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 3

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getVideoDuration()D
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getVideoDuration()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoProgress()D
    .locals 2

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getVideoProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getWarning()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->getWarning()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final supportSetPermissionClickViewList()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->supportSetPermissionClickViewList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final supportSetPrivacyClickViewList()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->supportSetPrivacyClickViewList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
