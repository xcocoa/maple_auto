.class public Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;
.super Lcn/haorui/sdk/core/ad/BaseAd;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeAdDataImpl"


# instance fields
.field private adPatternType:I

.field private context:Landroid/content/Context;

.field private desc:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private imgUrls:[Ljava/lang/String;

.field private isMute:Z

.field private mExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

.field private mediaView:Lcn/haorui/sdk/adsail_ad/MediaView;

.field private nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

.field private showDetail:Z

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V
    .locals 2
    .param p1    # Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-string v1, "AD_HR"

    invoke-direct {p0, v0, v1}, Lcn/haorui/sdk/core/ad/BaseAd;-><init>(Lcn/haorui/sdk/core/loader/d;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    return-object p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->adPatternType:I

    return p1
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->iconUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->imgUrls:[Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->title:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->desc:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Lcn/haorui/sdk/adsail_ad/MediaView;)Lcn/haorui/sdk/adsail_ad/MediaView;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->mediaView:Lcn/haorui/sdk/adsail_ad/MediaView;

    return-object p1
.end method

.method public static synthetic access$702(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->showDetail:Z

    return p1
.end method

.method public static synthetic access$802(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->isMute:Z

    return p1
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->context:Landroid/content/Context;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$1;

    invoke-direct {p3, p0, p4}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$1;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p3}, Lcn/haorui/sdk/adsail_ad/MediaView;->setNativeAdMediaListener(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getAdView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getAdView()Landroid/view/View;

    move-result-object p2

    const/4 p3, -0x1

    const/4 v0, -0x2

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAdPatternType()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->adPatternType:I

    return v0
.end method

.method public getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    return-object v0
.end method

.method public bridge synthetic getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    return-object v0
.end method

.method public getAdType()Lcn/haorui/sdk/core/ad/AdType;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/core/ad/AdType;->FEED:Lcn/haorui/sdk/core/ad/AdType;

    return-object v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->getVideoView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->imgUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->nativeAdSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public getIsMute()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->isMute:Z

    return v0
.end method

.method public getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->mediaView:Lcn/haorui/sdk/adsail_ad/MediaView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isShowDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->showDetail:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public setOnExposureListener(Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;)V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getAdView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->getAdView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setOnExposureListener(Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;)V

    :cond_0
    return-void
.end method
