.class public Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailRecyclerAdDataAdapter"


# instance fields
.field private adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

.field private hrInteractionListenerAdapter:Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;

.field private iAdExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

.field private isAdExposure:Z

.field private nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

.field private shakeId:I


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V
    .locals 0
    .param p1    # Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->isAdExposure:Z

    return p0
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->isAdExposure:Z

    return p1
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->shakeId:I

    return p0
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->shakeId:I

    return p1
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->hrInteractionListenerAdapter:Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;

    return-object p0
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 8
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;

    invoke-direct {v2, p0, p2, v0, p1}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$1;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcn/haorui/sdk/core/view/TouchAdContainer;

    invoke-static {p2, v0, v1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdUtils;->getInfo(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;

    move-result-object p2

    const/4 v0, 0x1

    aget-object v1, p2, v0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v5, Lcn/haorui/sdk/core/view/TouchAdContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/haorui/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcn/haorui/sdk/core/view/TouchPositionListener;

    iget-object v7, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-direct {v6, v7}, Lcn/haorui/sdk/core/view/TouchPositionListener;-><init>(Lcn/haorui/sdk/core/ad/IAd;)V

    invoke-virtual {v5, v6}, Lcn/haorui/sdk/core/view/TouchAdContainer;->setTouchPositionListener(Lcn/haorui/sdk/core/view/TouchPositionListener;)V

    invoke-virtual {v5, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/HRConfig;->showFeedAdLogo()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v6, 0x41500000    # 13.0f

    mul-float v0, v0, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v0, v6

    float-to-int v0, v0

    const/4 v6, -0x2

    invoke-direct {v1, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x55

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcn/haorui/sdk/R$drawable;->adsail_ad:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    invoke-virtual {p2, v5, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v5, v1

    :goto_2
    new-instance p2, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-direct {p2, v0, p4}, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->hrInteractionListenerAdapter:Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0, p1, v5, p3, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {p1, p4}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    const-string p1, "adsail_media_view"

    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    instance-of v1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdExposureListener()Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->setOnExposureListener(Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    new-instance v1, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v3}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-direct {v1, v2, v3, p3}, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;-><init>(Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    invoke-interface {v0, p1, p2, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V

    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    instance-of v1, v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdExposureListener()Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;->setOnExposureListener(Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    new-instance v1, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v3}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-direct {v1, v2, v3, p2}, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;-><init>(Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->destroy()V

    :cond_1
    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->shakeId:I

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(I)V

    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getActionText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAdExposureListener()Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->iAdExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    const/16 v1, 0xc

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getStyle_id()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdPatternType()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xd

    return v0

    :cond_2
    const/16 v0, 0xb

    return v0

    :cond_3
    return v1
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/ad/IAd;->getAdView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_intro()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_intor_url()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppPermissionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/core/domain/HRAdInfo$PermissionBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_permission()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPremissionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_permission_url()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getData()Lcn/haorui/sdk/core/utils/ResultBean;
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/utils/ResultBean;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/ResultBean;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPrice(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setEcpm(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_code()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_code(Ljava/lang/String;)V

    const-string v1, "AD_HR"

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setSdkName(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeepLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_duration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFromLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIconTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getInteractionType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsOperationContent()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPlatFormEcpm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    const-string v0, "AD_HR"

    return-object v0
.end method

.method public getPrivacyAgreement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPrivacy_agreement()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRecyclerType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAdValid()Z
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getExpire_timestamp()I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x1a8ce0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v4}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v4

    check-cast v4, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isNativeExpress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mute()V
    .locals 2

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->mute()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->pause()V

    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 2

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->pause()V

    :cond_0
    return-void
.end method

.method public replay()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPatternType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdPatternType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdSailRecyclerAdDataAdapter"

    invoke-static {v1, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$3;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$3;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->resume()V

    :cond_0
    return-void
.end method

.method public resumeVideo()V
    .locals 2

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->resume()V

    :cond_0
    return-void
.end method

.method public setExpressMediaListener(Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 0

    return-void
.end method

.method public setOnADExposureListener(Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->iAdExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

    return-void
.end method

.method public startVideo()V
    .locals 4

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$2;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter$2;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    instance-of v0, v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->stop()V

    :cond_0
    return-void
.end method

.method public unmute()V
    .locals 2

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRRecyclerAdDataAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getMediaView()Lcn/haorui/sdk/adsail_ad/MediaView;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/MediaView;->unmute()V

    :cond_0
    return-void
.end method
