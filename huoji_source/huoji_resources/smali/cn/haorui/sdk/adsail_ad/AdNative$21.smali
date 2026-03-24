.class public Lcn/haorui/sdk/adsail_ad/AdNative$21;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/haorui/sdk/adsail_ad/AdNative;->loadVideoView(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;ZZZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

.field public final synthetic val$adDatas:Ljava/util/List;

.field public final synthetic val$adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

.field public final synthetic val$adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

.field public final synthetic val$showDetail:Z


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;ZLjava/util/List;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->this$0:Lcn/haorui/sdk/adsail_ad/AdNative;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    iput-boolean p3, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$showDetail:Z

    iput-object p4, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adDatas:Ljava/util/List;

    iput-object p5, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded(Lcn/haorui/sdk/adsail_ad/MediaView;)V
    .locals 3

    new-instance v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-direct {v1, v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    invoke-direct {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setDesc(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setAdPatternType(I)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adSlot:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setImgUrls([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setMediaView(Lcn/haorui/sdk/adsail_ad/MediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$showDetail:Z

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setShowDetail(Z)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->build()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adDatas:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast p1, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setMsAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adListener:Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative$21;->val$adDatas:Ljava/util/List;

    invoke-interface {p1, v0}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADLoaded(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
