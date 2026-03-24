.class public Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;
.super Lcom/anythink/nativead/unitgroup/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/nativead/unitgroup/api/CustomNativeAd$NativeType;,
        Lcom/anythink/nativead/unitgroup/api/CustomNativeAd$NativeAdConst;
    }
.end annotation


# static fields
.field public static IS_AUTO_PLAY_KEY:Ljava/lang/String; = "is_auto_play"

.field public static final MAX_STAR_RATING:D = 5.0

.field public static final MIN_STAR_RATING:D


# instance fields
.field private adAppInfo:Lcom/anythink/core/api/ATAdAppInfo;

.field private adLogoView:Landroid/view/View;

.field private mAdChoiceIconUrl:Ljava/lang/String;

.field private mAdFrom:Ljava/lang/String;

.field private mAdvertiserName:Ljava/lang/String;

.field private mAppCommentNum:I

.field private mAppDownloadButton:Landroid/view/View;

.field private mAppPrice:D

.field private mCallToAction:Ljava/lang/String;

.field private mClickDestinationUrl:Ljava/lang/String;

.field private mCloseViewListener:Landroid/view/View$OnClickListener;

.field private mDomain:Ljava/lang/String;

.field private mIconImageUrl:Ljava/lang/String;

.field private mImageUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainImageHeight:I

.field private mMainImageUrl:Ljava/lang/String;

.field private mMainImageWidth:I

.field private mNativeExpressHeight:I

.field private mNativeExpressWidth:I

.field private mNetworkInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mStarRating:Ljava/lang/Double;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoUrl:Ljava/lang/String;

.field private mVideoWidth:I

.field private mWarning:Ljava/lang/String;

.field private nInteractionType:I

.field private showId:Ljava/lang/String;

.field private videoDuration:D


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/anythink/nativead/unitgroup/a;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->nInteractionType:I

    return-void
.end method


# virtual methods
.method public final bindDislikeListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCloseViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/anythink/nativead/unitgroup/a;->getNativePrepareInfo()Lcom/anythink/nativead/api/ATNativePrepareInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->getCloseView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCloseViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final checkHasCloseViewListener()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCloseViewListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clear(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCloseViewListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public getAdAppInfo()Lcom/anythink/core/api/ATAdAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->adAppInfo:Lcom/anythink/core/api/ATAdAppInfo;

    return-object v0
.end method

.method public final getAdChoiceIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdChoiceIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAdFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getAdIconView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdLogo()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdLogoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->adLogoView:Landroid/view/View;

    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAdvertiserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdvertiserName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppCommentNum()I
    .locals 1

    iget v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAppCommentNum:I

    return v0
.end method

.method public getAppDownloadButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAppDownloadButton:Landroid/view/View;

    return-object v0
.end method

.method public getAppPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAppPrice:D

    return-wide v0
.end method

.method public getCallToActionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCallToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAdContainer()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mIconImageUrl:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mImageUrlList:Ljava/util/List;

    return-object v0
.end method

.method public getMainImageHeight()I
    .locals 1

    iget v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageHeight:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMainImageWidth()I
    .locals 1

    iget v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageWidth:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNativeAdInteractionType()I
    .locals 1

    iget v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->nInteractionType:I

    return v0
.end method

.method public getNativeCustomVideo()Lcom/anythink/core/api/ATCustomVideo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeExpressHeight()I
    .locals 1

    iget v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mNativeExpressHeight:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNativeExpressWidth()I
    .locals 1

    iget v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mNativeExpressWidth:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNativeType()I
    .locals 1

    const/4 v0, 0x1

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

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mNetworkInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getShowId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->videoDuration:D

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    iget v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoHeight:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVideoProgress()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    iget v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoWidth:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getWarning()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mWarning:Ljava/lang/String;

    return-object v0
.end method

.method public impressionTrack(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 0

    return-void
.end method

.method public prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
    .locals 0

    return-void
.end method

.method public registerDownloadConfirmListener()V
    .locals 0

    return-void
.end method

.method public registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;Lcom/anythink/core/basead/b/b;)V

    return-void
.end method

.method public registerListener(Landroid/view/View;Ljava/util/List;Landroid/widget/FrameLayout$LayoutParams;Lcom/anythink/core/basead/b/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Lcom/anythink/core/basead/b/b;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/anythink/nativead/api/ATNativePrepareInfo;

    invoke-direct {v0}, Lcom/anythink/nativead/api/ATNativePrepareInfo;-><init>()V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setTitleView(Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setDescView(Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->f()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setAdFromView(Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setCloseView(Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setCtaView(Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->g()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setAdLogoView(Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setMainImageView(Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->h()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setDomainView(Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setWarningView(Landroid/view/View;)V

    invoke-virtual {p4}, Lcom/anythink/core/basead/b/b;->b()Landroid/view/View;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setIconView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setClickViewList(Ljava/util/List;)V

    invoke-virtual {v0, p3}, Lcom/anythink/nativead/api/ATNativePrepareInfo;->setChoiceViewLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p0, p1, v0}, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V

    return-void
.end method

.method public resumeVideo()V
    .locals 0

    return-void
.end method

.method public final setAdAppInfo(Lcom/anythink/core/api/ATAdAppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->adAppInfo:Lcom/anythink/core/api/ATAdAppInfo;

    return-void
.end method

.method public final setAdChoiceIconUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdChoiceIconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setAdFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdFrom:Ljava/lang/String;

    return-void
.end method

.method public final setAdLogoView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->adLogoView:Landroid/view/View;

    return-void
.end method

.method public setAdvertiserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAdvertiserName:Ljava/lang/String;

    return-void
.end method

.method public setAppCommentNum(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAppCommentNum:I

    return-void
.end method

.method public setAppDownloadButton(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAppDownloadButton:Landroid/view/View;

    return-void
.end method

.method public setAppPrice(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mAppPrice:D

    return-void
.end method

.method public final setCallToActionText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mCallToAction:Ljava/lang/String;

    return-void
.end method

.method public final setDescriptionText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mText:Ljava/lang/String;

    return-void
.end method

.method public final setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mDomain:Ljava/lang/String;

    return-void
.end method

.method public final setIconImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mIconImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setImageUrlList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mImageUrlList:Ljava/util/List;

    return-void
.end method

.method public setMainImageHeight(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageHeight:I

    return-void
.end method

.method public final setMainImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setMainImageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mMainImageWidth:I

    return-void
.end method

.method public setNativeExpressHeight(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mNativeExpressHeight:I

    return-void
.end method

.method public setNativeExpressWidth(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mNativeExpressWidth:I

    return-void
.end method

.method public final setNativeInteractionType(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->nInteractionType:I

    return-void
.end method

.method public final setNetworkInfoMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mNetworkInfoMap:Ljava/util/Map;

    return-void
.end method

.method public final setShowId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->showId:Ljava/lang/String;

    return-void
.end method

.method public final setStarRating(Ljava/lang/Double;)V
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mStarRating:Ljava/lang/Double;

    :cond_1
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public final setVideoDuration(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->videoDuration:D

    return-void
.end method

.method public setVideoHeight(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoHeight:I

    return-void
.end method

.method public setVideoMute(Z)V
    .locals 0

    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoWidth(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mVideoWidth:I

    return-void
.end method

.method public final setWarning(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/nativead/unitgroup/api/CustomNativeAd;->mWarning:Ljava/lang/String;

    return-void
.end method

.method public supportSetPermissionClickViewList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportSetPrivacyClickViewList()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public unregeisterDownloadConfirmListener()V
    .locals 0

    return-void
.end method
