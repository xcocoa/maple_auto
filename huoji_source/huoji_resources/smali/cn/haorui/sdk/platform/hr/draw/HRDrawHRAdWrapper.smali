.class public Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;
.super Lcn/haorui/sdk/platform/hr/HRAdLoader;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/haorui/sdk/platform/hr/HRAdLoader<",
        "Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;",
        "Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;",
        "Lcn/haorui/sdk/core/ad/draw/DrawAdListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdSailDrawAdWrapper"


# instance fields
.field private adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

.field private hasExposed:Z

.field private hasloaded:Z

.field private recyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/HRAdLoader;-><init>(Lcn/haorui/sdk/core/loader/b;Lcn/haorui/sdk/core/ad/AdSlot;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->hasExposed:Z

    iput-boolean p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->hasloaded:Z

    new-instance p2, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$5;

    invoke-direct {p2, p0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$5;-><init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->recyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    new-instance p2, Lcn/haorui/sdk/adsail_ad/AdNative;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/loader/b;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->hasExposed:Z

    return p0
.end method

.method public static synthetic access$1002(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->hasExposed:Z

    return p1
.end method

.method public static synthetic access$1100(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$1200(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$1300(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;[BLcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->showImage([BLcn/haorui/sdk/core/view/gif/GifImageView;)V

    return-void
.end method

.method public static synthetic access$1400(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$1500(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$1600(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->hasloaded:Z

    return p0
.end method

.method public static synthetic access$1602(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->hasloaded:Z

    return p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->recyclerAdMediaListener:Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)Lcn/haorui/sdk/core/ad/AdSlot;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    return-object p0
.end method

.method private handleDownloadView(Landroid/view/View;Lcn/haorui/sdk/core/ad/BaseAdSlot;)V
    .locals 4

    :try_start_0
    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget v0, Lcn/haorui/sdk/R$id;->adsail_download_layer_textview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " | "

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u5e94\u7528\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, " \u6743\u9650\u8be6\u60c5> | \u9690\u79c1\u534f\u8bae > | \u529f\u80fd\u4ecb\u7ecd >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$6;

    invoke-direct {v1, p0, p2, p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$6;-><init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Lcn/haorui/sdk/core/ad/BaseAdSlot;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method private isGif([B)Z
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "47494638"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method private loadImage()V
    .locals 10

    iget-object v0, p0, Lcn/haorui/sdk/platform/BasePlatformLoader;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/haorui/sdk/R$layout;->adsail_draw_ad_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;

    new-instance v1, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;

    invoke-direct {v1, p0, v0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$2;-><init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;)V

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;->setAdListener(Lcn/haorui/sdk/core/ad/draw/DrawAdListener;)V

    new-instance v1, Lz2/o000;

    invoke-direct {v1, v0}, Lz2/o000;-><init>(Landroid/view/View;)V

    new-instance v9, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v3

    invoke-direct {v9, v3, v2}, Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;-><init>(Lcn/haorui/sdk/core/ad/AdSlot;Landroid/view/View;)V

    sget v2, Lcn/haorui/sdk/R$id;->adsail_draw_ad_image:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_draw_ad_detail_logo:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_draw_ad_detail_title:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_draw_ad_detail_desc:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v4, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v4}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcn/haorui/sdk/core/view/DownloadView;

    invoke-direct {v2}, Lcn/haorui/sdk/core/view/DownloadView;-><init>()V

    iget-object v3, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v3, Lcn/haorui/sdk/core/ad/BaseAdSlot;

    invoke-virtual {v2, v0, v3}, Lcn/haorui/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdSailDrawAdWrapper"

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    sget-object v1, Lcn/haorui/sdk/core/exception/a;->c:Ljava/lang/Integer;

    const-string v2, "unsupported type"

    invoke-direct {v0, v2, v1}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    goto/16 :goto_3

    :cond_2
    :goto_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig;->showLogo()Z

    move-result v2

    if-nez v2, :cond_3

    sget v2, Lcn/haorui/sdk/R$id;->adsail_img_ad_tag:I

    invoke-virtual {v1, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v1

    check-cast v1, Lz2/o000;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget v2, Lcn/haorui/sdk/R$id;->adsail_img_ad_tag:I

    invoke-virtual {v1, v2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v1

    check-cast v1, Lz2/o000;

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    :cond_4
    :goto_1
    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    new-instance v2, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;

    move-object v3, v2

    move-object v4, p0

    move-object v7, v9

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$3;-><init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Lcn/haorui/sdk/core/view/gif/GifImageView;Landroid/widget/ImageView;Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;Lcn/haorui/sdk/adsail_ad/draw/HRDrawRootView;)V

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    new-instance v1, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;

    invoke-direct {v1, p0, v9}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$4;-><init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;Lcn/haorui/sdk/platform/hr/draw/HRDrawAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_5
    :goto_2
    const-string v0, "empty srcUrls"

    invoke-static {v3, v0}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcn/haorui/sdk/platform/hr/HRPlatformError;

    sget-object v2, Lcn/haorui/sdk/core/exception/a;->b:Ljava/lang/Integer;

    invoke-direct {v1, v0, v2}, Lcn/haorui/sdk/platform/hr/HRPlatformError;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/draw/DrawAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/haorui/sdk/core/loader/AdPlatformError;->post(Lcn/haorui/sdk/core/loader/IAdLoadListener;)V

    :goto_3
    return-void
.end method

.method private loadVideo()V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->adNative:Lcn/haorui/sdk/adsail_ad/AdNative;

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    new-instance v2, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;

    invoke-direct {v2, p0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper$1;-><init>(Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;)V

    invoke-virtual {v0, v1, v2}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadPasterAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V

    return-void
.end method

.method private showImage([BLcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 2

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->isGif([B)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([B)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/HRAdLoader;->adSlot:Lcn/haorui/sdk/core/ad/AdSlot;

    check-cast v0, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->loadVideo()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/haorui/sdk/platform/hr/draw/HRDrawHRAdWrapper;->loadImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
