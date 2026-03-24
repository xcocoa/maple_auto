.class public interface abstract Lcom/anythink/core/api/IATThirdPartyMaterial;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;
.end method

.method public abstract getAdChoiceIconUrl()Ljava/lang/String;
.end method

.method public abstract getAdFrom()Ljava/lang/String;
.end method

.method public abstract getAdIconView()Landroid/view/View;
.end method

.method public abstract getAdLogo()Landroid/graphics/Bitmap;
.end method

.method public abstract getAdLogoView()Landroid/view/View;
.end method

.method public varargs abstract getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
.end method

.method public abstract getAdType()Ljava/lang/String;
.end method

.method public abstract getAdvertiserInfoOperate()Lcom/anythink/core/api/IATAdvertiserInfoOperate;
.end method

.method public abstract getAdvertiserName()Ljava/lang/String;
.end method

.method public abstract getAppCommentNum()I
.end method

.method public abstract getAppDownloadButton()Landroid/view/View;
.end method

.method public abstract getAppPrice()D
.end method

.method public abstract getCallToActionText()Ljava/lang/String;
.end method

.method public abstract getDescriptionText()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getDownloadProgress()I
.end method

.method public abstract getDownloadStatus()I
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
.end method

.method public abstract getImageUrlList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMainImageHeight()I
.end method

.method public abstract getMainImageUrl()Ljava/lang/String;
.end method

.method public abstract getMainImageWidth()I
.end method

.method public abstract getNativeAdInteractionType()I
.end method

.method public abstract getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;
.end method

.method public abstract getNativeExpressHeight()I
.end method

.method public abstract getNativeExpressWidth()I
.end method

.method public abstract getNativeType()I
.end method

.method public abstract getNetworkInfoMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShakeView(IILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
.end method

.method public abstract getSlideView(IIILcom/anythink/core/api/ATShakeViewListener;)Landroid/view/View;
.end method

.method public abstract getStarRating()Ljava/lang/Double;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getVideoDuration()D
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoProgress()D
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract getWarning()Ljava/lang/String;
.end method

.method public abstract supportSetPermissionClickViewList()Z
.end method

.method public abstract supportSetPrivacyClickViewList()Z
.end method
