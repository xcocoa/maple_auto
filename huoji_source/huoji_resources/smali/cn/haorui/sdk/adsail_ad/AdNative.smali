.class public Lcn/haorui/sdk/adsail_ad/AdNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SPLASH_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "AdNative"


# instance fields
.field private context:Landroid/content/Context;

.field private shakeId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/AdNative;->sendADError(Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/adsail_ad/AdNative;[BLcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/AdNative;->showImage([BLcn/haorui/sdk/core/view/gif/GifImageView;)V

    return-void
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/adsail_ad/AdNative;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/AdNative;->shakeId:I

    return p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/adsail_ad/AdNative;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/adsail_ad/AdNative;Lz2/o000;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/haorui/sdk/adsail_ad/AdNative;->handleSplashView(Lz2/o000;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V

    return-void
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadImageSplashAd(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;Z)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadVideoSplashAd(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;Z)V

    return-void
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;ZLandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadNativeSplash(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/adsail_ad/AdNative;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;->isGif([B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Landroid/view/View;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadSplashAdOk(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Landroid/view/View;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/adsail_ad/AdNative;[BLandroid/view/View;ZLcn/haorui/sdk/core/ad/BaseAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/haorui/sdk/adsail_ad/AdNative;->showLayoutByWidthHeight([BLandroid/view/View;ZLcn/haorui/sdk/core/ad/BaseAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V

    return-void
.end method

.method private getImageBytes(Landroid/content/Context;I)[B
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private handleSplashView(Lz2/o000;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V
    .locals 9

    sget v0, Lcn/haorui/sdk/R$id;->adsail_skipView:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_shake_img:I

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v1, Lcn/haorui/sdk/R$id;->adsail_jump_btn:I

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_shakeRoot:I

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    sget v4, Lcn/haorui/sdk/R$id;->adsail_shake_text:I

    invoke-virtual {p2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcn/haorui/sdk/R$id;->adsail_SwipeViewParent:I

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcn/haorui/sdk/core/view/SwipeView;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v5

    const/4 v6, 0x4

    and-int/2addr v5, v6

    const/4 v8, 0x2

    if-eq v5, v6, :cond_4

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v5

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result p4

    and-int/2addr p4, v8

    if-ne p4, v8, :cond_a

    new-instance p4, Lcn/haorui/sdk/adsail_ad/AdNative$9;

    invoke-direct {p4, p0, p2, v2, p1}, Lcn/haorui/sdk/adsail_ad/AdNative$9;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Landroid/widget/TextView;Lz2/o000;)V

    invoke-virtual {v3, p4}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getClk_area()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p2

    check-cast p2, Lz2/o000;

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getClk_area()Ljava/lang/String;

    move-result-object p4

    :goto_0
    invoke-virtual {p2, p4}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_3

    invoke-virtual {p1, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p2

    check-cast p2, Lz2/o000;

    const-string p4, "\u70b9\u51fb\u4e0b\u8f7d\u6216\u8df3\u8f6c\u7b2c\u4e09\u65b9\u5e94\u7528"

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p2

    check-cast p2, Lz2/o000;

    const-string p4, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5\u6216\u8df3\u8f6c\u7b2c\u4e09\u65b9\u5e94\u7528"

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v1, Lcn/haorui/sdk/adsail_ad/AdNative$7;

    invoke-direct {v1, p0, p2, v3, p1}, Lcn/haorui/sdk/adsail_ad/AdNative$7;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Landroid/widget/RelativeLayout;Lz2/o000;)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v1

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_5

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v1

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_5

    const-string v1, "\u626d\u4e00\u626d\u624b\u673a"

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getClk_area()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Lcn/haorui/sdk/R$id;->adsail_shake_text_bottom:I

    invoke-virtual {p1, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v1

    check-cast v1, Lz2/o000;

    invoke-virtual {p3}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getClk_area()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Lz2/o000O000;->o000Oo00(Ljava/lang/CharSequence;)Lz2/o000O000;

    goto :goto_3

    :cond_6
    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lcn/haorui/sdk/R$id;->adsail_shake_text_bottom:I

    invoke-virtual {p1, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v1

    check-cast v1, Lz2/o000;

    const-string v2, "\u67e5\u770b\u8be6\u60c5\u6216\u8df3\u8f6c\u7b2c\u4e09\u65b9\u5e94\u7528"

    goto :goto_2

    :cond_7
    sget v1, Lcn/haorui/sdk/R$id;->adsail_shake_text_bottom:I

    invoke-virtual {p1, v1}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v1

    check-cast v1, Lz2/o000;

    const-string v2, "\u4e0b\u8f7d\u6216\u8df3\u8f6c\u7b2c\u4e09\u65b9\u5e94\u7528"

    goto :goto_2

    :goto_3
    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v1

    and-int/2addr v1, v8

    if-ne v1, v8, :cond_9

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v1

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_8

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v1

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_8

    const-string v1, "\u626d\u4e00\u626d\u624b\u673a\u6216\u70b9\u51fb\u56fe\u6807"

    goto :goto_4

    :cond_8
    const-string v1, "\u6447\u4e00\u6447\u624b\u673a\u6216\u70b9\u51fb\u56fe\u6807"

    :goto_4
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcn/haorui/sdk/adsail_ad/AdNative$8;

    invoke-direct {v1, p0, p4, p5}, Lcn/haorui/sdk/adsail_ad/AdNative$8;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcn/haorui/sdk/adsail_ad/AdNative;->showShakeImage(Landroid/content/Context;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    :cond_a
    :goto_5
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/HRConfig;->showLogo()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    sget p2, Lcn/haorui/sdk/R$id;->adsail_img_ad_tag:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    goto :goto_6

    :cond_b
    sget p2, Lcn/haorui/sdk/R$id;->adsail_img_ad_tag:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1, v7}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    :cond_c
    :goto_6
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

.method private loadImageSplashAd(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;)V
    .locals 7

    sget p5, Lcn/haorui/sdk/R$id;->adsail_splash_image:I

    invoke-virtual {p4, p5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    move-object v6, p5

    check-cast v6, Lcn/haorui/sdk/core/view/gif/GifImageView;

    const/4 p5, 0x0

    invoke-virtual {v6, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    sget p6, Lcn/haorui/sdk/R$id;->adsail_splash_video:I

    invoke-virtual {p4, p6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p6

    const/16 v0, 0x8

    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p5

    new-instance p5, Lcn/haorui/sdk/adsail_ad/AdNative$10;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v6}, Lcn/haorui/sdk/adsail_ad/AdNative$10;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Landroid/view/View;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    invoke-static {p2, p5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    return-void
.end method

.method private loadNativeSplash(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;ZLandroid/view/View;)V
    .locals 8

    invoke-virtual {p3, p4}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setAdRoot(Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;)V

    new-instance p5, Lcn/haorui/sdk/core/view/DownloadView;

    invoke-direct {p5}, Lcn/haorui/sdk/core/view/DownloadView;-><init>()V

    invoke-virtual {p5, p4, p2}, Lcn/haorui/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    new-instance v5, Lz2/o000;

    invoke-direct {v5, p4}, Lz2/o000;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p5

    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadNativeVideo(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    aget-object p5, p5, v0

    new-instance v7, Lcn/haorui/sdk/adsail_ad/AdNative$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcn/haorui/sdk/adsail_ad/AdNative$3;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Landroid/view/View;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;)V

    invoke-static {p5, v7}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    :goto_0
    return-void
.end method

.method private loadNativeVideo(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;Landroid/view/View;)V
    .locals 9

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v8, Lcn/haorui/sdk/adsail_ad/AdNative$5;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcn/haorui/sdk/adsail_ad/AdNative$5;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Landroid/view/View;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcn/haorui/sdk/adsail_ad/AdNative$6;

    invoke-direct {p3, p0, v8}, Lcn/haorui/sdk/adsail_ad/AdNative$6;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lz2/o000O0O0;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    const-class p3, Ljava/io/File;

    const-wide/32 v0, 0x5265c00

    move-object p1, p5

    move-wide p4, v0

    move-object p6, v8

    invoke-virtual/range {p1 .. p6}, Lz2/o000O000;->OooO0Oo(Ljava/lang/String;Ljava/lang/Class;JLz2/o000O0O0;)Lz2/o000O000;

    return-void
.end method

.method private loadSplashAdOk(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Landroid/view/View;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {p1 .. p2}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setAdView(Landroid/view/View;)V

    sget v0, Lcn/haorui/sdk/R$id;->adsail_skipView:I

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getIsHideSkipBtn()Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    invoke-virtual {v6, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->setShow(Z)V

    :try_start_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->getSplashShowTime()J

    move-result-wide v8

    long-to-int v0, v8

    invoke-virtual {v6, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->setTotalTime(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance v0, Lcn/haorui/sdk/adsail_ad/AdNative$11;

    invoke-direct {v0, v1, v4, v6, v5}, Lcn/haorui/sdk/adsail_ad/AdNative$11;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->setOnSkipListener(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;)V

    if-eqz v5, :cond_0

    new-instance v8, Lcn/haorui/sdk/adsail_ad/AdNative$12;

    invoke-direct {v8, v1, v0}, Lcn/haorui/sdk/adsail_ad/AdNative$12;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->setShow(Z)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_1

    new-instance v0, Lcn/haorui/sdk/adsail_ad/AdNative$13;

    invoke-direct {v0, v1, v2, v4}, Lcn/haorui/sdk/adsail_ad/AdNative$13;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/4 v5, 0x2

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_2

    sget v0, Lcn/haorui/sdk/R$id;->adsail_jump_btn:I

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v8, Lcn/haorui/sdk/adsail_ad/AdNative$14;

    invoke-direct {v8, v1, v2, v4}, Lcn/haorui/sdk/adsail_ad/AdNative$14;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/4 v8, 0x4

    and-int/2addr v0, v8

    const/16 v9, 0x8

    if-eq v0, v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v9

    if-ne v0, v9, :cond_6

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getPower_index()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;->getPower_type()I

    iget v0, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->shakeId:I

    if-nez v0, :cond_4

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->b()I

    move-result v0

    iput v0, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->shakeId:I

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v8

    if-eq v0, v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v9

    if-ne v0, v9, :cond_5

    const/4 v12, 0x2

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    :goto_1
    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v5

    invoke-virtual {v5}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPosId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v8

    invoke-virtual {v8}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getLoadedTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v10

    invoke-virtual {v10}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDclk()Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    move-result-object v10

    invoke-virtual {v0, v5, v8, v9, v10}, Lcn/haorui/sdk/core/loader/g;->a(Ljava/lang/String;JLcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)V

    sget-object v10, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual/range {p2 .. p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_delay()I

    move-result v0

    int-to-long v13, v0

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getPower_count()I

    move-result v15

    iget v0, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->shakeId:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v17

    new-instance v3, Lcn/haorui/sdk/adsail_ad/AdNative$15;

    invoke-direct {v3, v1, v2, v4}, Lcn/haorui/sdk/adsail_ad/AdNative$15;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V

    move/from16 v16, v0

    move-object/from16 v18, v3

    invoke-virtual/range {v10 .. v18}, Lcn/haorui/sdk/core/loader/g;->a(IIJIIILcn/haorui/sdk/core/loader/g$d;)V

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v0, v7}, Lcn/haorui/sdk/core/loader/g;->a(Z)V

    :cond_6
    invoke-virtual {v2, v6}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setSkipView(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V

    return-object v6
.end method

.method private loadVideoSplashAd(Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lz2/o000;ZLandroid/view/View;Z)V
    .locals 10

    move-object v5, p4

    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget v0, Lcn/haorui/sdk/R$id;->adsail_splash_image:I

    invoke-virtual {p4, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Lcn/haorui/sdk/adsail_ad/AdNative$16;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p8

    move-object v6, p3

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcn/haorui/sdk/adsail_ad/AdNative$16;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;ZLcn/haorui/sdk/adsail_ad/splash/HRSplashRootView;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/AdNative$17;

    move-object v2, p0

    invoke-direct {v1, p0, v9}, Lcn/haorui/sdk/adsail_ad/AdNative$17;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lz2/o000O0O0;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/io/File;

    const-wide/32 v3, 0x5265c00

    move-object p1, p5

    move-object p2, v0

    move-object p3, v1

    move-wide p4, v3

    move-object/from16 p6, v9

    invoke-virtual/range {p1 .. p6}, Lz2/o000O000;->OooO0Oo(Ljava/lang/String;Ljava/lang/Class;JLz2/o000O0O0;)Lz2/o000O000;

    return-void
.end method

.method private loadVideoView(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;ZZZFF)V
    .locals 8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setAdListener(Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V

    new-instance v7, Lcn/haorui/sdk/adsail_ad/AdNative$21;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/adsail_ad/AdNative$21;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;ZLjava/util/List;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V

    invoke-virtual {v6, v7}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setOnVideoLoadedListener(Lcn/haorui/sdk/adsail_ad/MediaView$OnVideoLoadedListener;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_cover()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoCover(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_endcover()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoEndCover(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setRecycler(Z)V

    const/16 p2, 0x8

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getWidth()I

    move-result p3

    invoke-virtual {v6, p3}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setConfigWidth(I)V

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getHeight()I

    move-result p1

    invoke-virtual {v6, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setConfigHeight(I)V

    invoke-virtual {v6, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setInitMute(Z)V

    invoke-virtual {v6, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    invoke-virtual {v6, p4}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    invoke-virtual {v6, p5}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setAutoStart(Z)V

    invoke-virtual {v6, p6}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setContainerWidth(F)V

    invoke-virtual {v6, p7}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setContainerHeight(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setPlayOnce(Z)V

    invoke-virtual {v6, p4}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcn/haorui/sdk/core/HRConfig;->showLogo()Z

    move-result p3

    if-nez p3, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v6, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p3

    const/16 p4, 0xb

    if-eq p3, p4, :cond_4

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p3

    const/16 p4, 0xc

    if-eq p3, p4, :cond_4

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p3

    const/16 p4, 0xd

    if-ne p3, p4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unsupported type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AdNative"

    invoke-static {p3, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/haorui/sdk/core/exception/a;->c:Ljava/lang/Integer;

    const-string p3, "\u4e0d\u652f\u6301\u7684\u5e7f\u544a\u7c7b\u578b"

    invoke-direct {p0, p2, p3, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;->sendADError(Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {v6}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->performVideoActions()V

    return-void
.end method

.method private sendADError(Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private showImage([BLcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 2

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;->isGif([B)Z

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

.method private showLayoutByWidthHeight([BLandroid/view/View;ZLcn/haorui/sdk/core/ad/BaseAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    iget-object v0, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    sget v0, Lcn/haorui/sdk/R$id;->adsail_layout_native_splash_bg:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_skipView:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_native_splash_ad_container:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RelativeLayout;

    sget v0, Lcn/haorui/sdk/R$id;->adsail_layout_native_splash_shake_img:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/view/gif/GifImageView;

    iget-object v0, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    sget v9, Lcn/haorui/sdk/R$layout;->adsail_layout_native_splash_1:I

    const/4 v10, 0x0

    invoke-static {v0, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getHrVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p7 .. p7}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getHrVideoView()Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v13, v12

    const/4 v0, 0x0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lcn/haorui/sdk/core/view/gif/GifImageView;

    iget-object v12, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-direct {v0, v12}, Lcn/haorui/sdk/core/view/gif/GifImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([B)V

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifWidth()I

    move-result v12

    invoke-virtual {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifHeight()I

    move-result v0

    :goto_1
    move v13, v12

    :goto_2
    move-object v12, v10

    goto :goto_3

    :cond_1
    array-length v0, v2

    invoke-static {v2, v11, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    move/from16 v25, v12

    move-object v12, v0

    move v0, v13

    move/from16 v13, v25

    goto :goto_3

    :cond_2
    move-object v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_3
    int-to-float v14, v13

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v14, v14, v15

    int-to-float v15, v0

    div-float/2addr v14, v15

    float-to-double v14, v14

    const-wide v16, 0x3fe570a3d70a3d71L    # 0.67

    cmpg-double v18, v14, v16

    if-gez v18, :cond_3

    iget-object v9, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    sget v14, Lcn/haorui/sdk/R$layout;->adsail_layout_native_splash_2:I

    invoke-static {v9, v14, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v14, 0x0

    :goto_4
    const/4 v15, -0x1

    invoke-virtual {v8, v9, v15, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    sget v8, Lcn/haorui/sdk/R$id;->activity_sdk_splash_mediaContainer:I

    invoke-virtual {v9, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    sget v10, Lcn/haorui/sdk/R$id;->adsail_layout_native_splash_ll:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    sget v11, Lcn/haorui/sdk/R$id;->layout_native_splash_imageview:I

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v15, Lcn/haorui/sdk/R$id;->layout_native_splash_title:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v19, v15

    sget v15, Lcn/haorui/sdk/R$id;->layout_native_splash_icon:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v20, v15

    sget v15, Lcn/haorui/sdk/R$id;->layout_native_splash_score:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v21, v15

    sget v15, Lcn/haorui/sdk/R$id;->layout_native_splash_desc:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v22, v15

    sget v15, Lcn/haorui/sdk/R$id;->adsail_layout_native_splash_logo_ll:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v23, v15

    sget v15, Lcn/haorui/sdk/R$id;->adsail_layout_native_splash_logo:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    sget v15, Lcn/haorui/sdk/R$id;->adsail_layout_native_splash_cid:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v24, v15

    sget v15, Lcn/haorui/sdk/R$id;->adsail_jump_btn:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/16 v15, 0x19

    if-eqz v5, :cond_4

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v2, -0x1

    invoke-virtual {v8, v5, v2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    invoke-virtual/range {p7 .. p7}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->getVideoThumb()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v5, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v15}, Lcn/haorui/sdk/core/utils/ImageUtil;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v11, v2}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([B)V

    invoke-virtual {v11}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setWidth(Ljava/lang/Integer;)V

    invoke-virtual {v11}, Lcn/haorui/sdk/core/view/gif/GifImageView;->getGifHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcn/haorui/sdk/core/ad/splash/SplashAd;->setHeight(Ljava/lang/Integer;)V

    invoke-virtual {v11}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    goto :goto_7

    :cond_5
    if-nez v12, :cond_6

    array-length v5, v2

    const/4 v8, 0x0

    invoke-static {v2, v8, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    if-eqz v12, :cond_7

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    array-length v5, v2

    invoke-static {v2, v8, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v5, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v15}, Lcn/haorui/sdk/core/utils/ImageUtil;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_8

    :goto_6
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_7
    new-instance v2, Lz2/o000;

    invoke-direct {v2, v3}, Lz2/o000;-><init>(Landroid/view/View;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVertical="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",width="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",height="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AdNative"

    invoke-static {v5, v3}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v7, 0x3fb1eb851eb851ecL    # 0.07

    const-wide v11, 0x3feb851eb851eb85L    # 0.86

    const/4 v15, 0x4

    if-eqz v14, :cond_b

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v5

    mul-double v3, v3, v11

    double-to-int v5, v3

    iput v5, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-double v11, v0

    mul-double v3, v3, v11

    int-to-double v11, v13

    div-double/2addr v3, v11

    double-to-int v0, v3

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v0

    mul-double v3, v3, v7

    double-to-int v0, v3

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p5 .. p5}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v15

    if-eq v0, v15, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_9

    goto :goto_8

    :cond_9
    move-object/from16 v0, v19

    goto :goto_9

    :cond_a
    :goto_8
    iget-object v0, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcn/haorui/sdk/R$drawable;->adsail_rock_btn:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v3, 0x3c

    invoke-virtual {v9, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v19

    const/16 v3, 0x8

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v4, v22

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v5, v21

    :goto_a
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    :cond_b
    move-object/from16 v0, v19

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v13, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v13, v13

    mul-double v13, v13, v11

    double-to-int v11, v13

    iput v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v11, -0x2

    iput v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v11, v6

    mul-double v11, v11, v7

    double-to-int v6, v11

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p5 .. p5}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v3

    and-int/2addr v3, v15

    if-eq v3, v15, :cond_d

    invoke-virtual/range {p5 .. p5}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v3

    const/16 v6, 0x8

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_c

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    goto :goto_c

    :cond_d
    :goto_b
    iget-object v3, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcn/haorui/sdk/R$drawable;->adsail_rock_btn:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v7, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v6, 0x3c

    invoke-virtual {v9, v6, v7, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v6, 0x0

    invoke-virtual {v9, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_c
    invoke-virtual/range {p4 .. p4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p4 .. p4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    goto :goto_d

    :cond_e
    const/16 v3, 0x8

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d
    invoke-virtual/range {p4 .. p4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p4 .. p4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_f
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :goto_e
    iget-object v0, v1, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcn/haorui/sdk/R$drawable;->adsail_black_oval_gray:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v3, v23

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p4 .. p4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    move-object/from16 v0, v20

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v0}, Lz2/o000O000;->o00oO0O(Landroid/view/View;)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual/range {p4 .. p4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    goto :goto_f

    :cond_10
    move-object/from16 v0, v20

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    invoke-virtual/range {p4 .. p4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual/range {p4 .. p4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v24

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    invoke-virtual/range {p4 .. p4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "\u70b9\u51fb\u8df3\u8f6c\u8be6\u60c5\u9875\u6216\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p5 .. p5}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v15

    if-ne v0, v15, :cond_12

    const-string v0, "\u70b9\u51fb/\u6447\u4e00\u6447\u8df3\u8f6c\u8be6\u60c5\u9875"

    goto :goto_10

    :cond_12
    invoke-virtual/range {p5 .. p5}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    const-string v0, "\u70b9\u51fb/\u626d\u52a8\u624b\u673a\u8df3\u8f6c\u8be6\u60c5\u9875"

    goto :goto_10

    :cond_13
    const-string v0, "\u70b9\u51fb\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p5 .. p5}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    and-int/2addr v0, v15

    if-ne v0, v15, :cond_14

    const-string v0, "\u70b9\u51fb/\u6447\u4e00\u6447\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    :goto_10
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_14
    invoke-virtual/range {p5 .. p5}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->getAdSlot()Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v0

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    const-string v0, "\u70b9\u51fb/\u626d\u52a8\u624b\u673a\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    goto :goto_10

    :cond_15
    :goto_11
    new-instance v0, Lcn/haorui/sdk/adsail_ad/AdNative$4;

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcn/haorui/sdk/adsail_ad/AdNative$4;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showShakeImage(Landroid/content/Context;Lcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 1

    sget v0, Lcn/haorui/sdk/R$raw;->adsail_new_shake:I

    invoke-direct {p0, p1, v0}, Lcn/haorui/sdk/adsail_ad/AdNative;->getImageBytes(Landroid/content/Context;I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->setBytes([BI)V

    invoke-virtual {p2}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public loadBannerAd(Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;)V
    .locals 9

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/haorui/sdk/R$layout;->adsail_banner_ad_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;

    invoke-virtual {v6, p2}, Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;->setAdListener(Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;)V

    new-instance v7, Lz2/o000;

    invoke-direct {v7, v6}, Lz2/o000;-><init>(Landroid/view/View;)V

    new-instance v0, Lcn/haorui/sdk/core/view/DownloadView;

    invoke-direct {v0}, Lcn/haorui/sdk/core/view/DownloadView;-><init>()V

    invoke-virtual {v0, v6, p1}, Lcn/haorui/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    sget v0, Lcn/haorui/sdk/R$id;->adsail_banner_image:I

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdNative"

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->showLogo()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcn/haorui/sdk/R$id;->adsail_img_ad_tag:I

    invoke-virtual {v7, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000o000(I)Lz2/o000O000;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcn/haorui/sdk/R$id;->adsail_img_ad_tag:I

    invoke-virtual {v7, v0}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object v0

    check-cast v0, Lz2/o000;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/o000O000;->o000000(Ljava/lang/String;)Lz2/o000O000;

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v8, Lcn/haorui/sdk/adsail_ad/AdNative$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcn/haorui/sdk/adsail_ad/AdNative$1;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/banner/IBannerAdListener;Lcn/haorui/sdk/adsail_ad/banner/BannerAdSlot;Lcn/haorui/sdk/core/view/gif/GifImageView;Lcn/haorui/sdk/adsail_ad/banner/HRBannerRootView;Lz2/o000;)V

    invoke-static {v0, v8}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/haorui/sdk/core/exception/a;->c:Ljava/lang/Integer;

    const-string v0, "unsupported type"

    invoke-direct {p0, p2, v0, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;->sendADError(Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "empty srcUrls"

    invoke-static {v1, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->b:Ljava/lang/Integer;

    invoke-direct {p0, p2, p1, v0}, Lcn/haorui/sdk/adsail_ad/AdNative;->sendADError(Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadFullScreenVideoAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;Lcn/haorui/sdk/core/ad/fullscreenvideo/FullScreenVideoAdLoader;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadRewardVideoAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;)V

    return-void
.end method

.method public loadInterstitialAd(Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;)V
    .locals 4

    invoke-virtual {p1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/interstitial/InterstitialAdSlot;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdNative"

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Lcn/haorui/sdk/adsail_ad/AdNative$18;

    invoke-direct {v1, p0, p2, p1}, Lcn/haorui/sdk/adsail_ad/AdNative$18;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;)V

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDrawing()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    if-eqz p2, :cond_2

    new-instance v0, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;-><init>(Lcn/haorui/sdk/platform/hr/interstitial/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;[B)V

    invoke-static {}, Lcn/haorui/sdk/core/utils/SdkHandler;->getInstance()Lcn/haorui/sdk/core/utils/SdkHandler;

    move-result-object p1

    new-instance v1, Lcn/haorui/sdk/adsail_ad/AdNative$19;

    invoke-direct {v1, p0, p2, v0}, Lcn/haorui/sdk/adsail_ad/AdNative$19;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/interstitial/IInterstitialAdListener;Lcn/haorui/sdk/adsail_ad/interstitial/NativeInterstitialAd;)V

    invoke-virtual {p1, v1}, Lcn/haorui/sdk/core/utils/SdkHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/haorui/sdk/core/exception/a;->c:Ljava/lang/Integer;

    const-string v0, "\u4e0d\u652f\u6301\u5e7f\u544a\u7c7b\u578b"

    invoke-direct {p0, p2, v0, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;->sendADError(Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_4
    :goto_1
    const-string p1, "empty srcUrls"

    invoke-static {v2, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/haorui/sdk/core/exception/a;->b:Ljava/lang/Integer;

    invoke-direct {p0, p2, p1, v0}, Lcn/haorui/sdk/adsail_ad/AdNative;->sendADError(Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadNativeAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;ZZFF)V
    .locals 8

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadVideoView(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;ZZZFF)V

    return-void
.end method

.method public loadPasterAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcn/haorui/sdk/adsail_ad/AdNative;->loadVideoView(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;ZZZFF)V

    return-void
.end method

.method public loadRewardVideoAd(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;)V
    .locals 4

    new-instance v0, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/AdNative;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setAdListener(Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    new-instance v3, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    invoke-direct {v3, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;)V

    invoke-direct {v2, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setTitle(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setDesc(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setAdPatternType(I)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setIconUrl(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setImgUrls([Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setMediaView(Lcn/haorui/sdk/adsail_ad/MediaView;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v2

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;->getVideoIsMute()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->setVideoMute(Z)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl$Builder;->build()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdDataImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcn/haorui/sdk/activity/HRRewardVideoPlayerActivity;->setRewardMediaView(Ljava/lang/String;Lcn/haorui/sdk/adsail_ad/MediaView;)V

    invoke-virtual {p3, v2}, Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;->addRewardMediaViewLocalId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setPlayOnce(Z)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseFullScreenVideoAdLoader;->getVideoIsMute()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->mute()V

    :cond_0
    new-instance p1, Lcn/haorui/sdk/adsail_ad/AdNative$20;

    invoke-direct {p1, p0, p2, v1}, Lcn/haorui/sdk/adsail_ad/AdNative$20;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/nativ/INativeAdListener;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView;->setOnPreparedListener(Lcn/haorui/sdk/adsail_ad/nativ/NormalMediaView$IPreparedListener;)V

    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAdPatternType()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AdNative"

    invoke-static {p3, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/haorui/sdk/core/exception/a;->c:Ljava/lang/Integer;

    const-string p3, "\u4e0d\u652f\u6301\u7684\u5e7f\u544a\u7c7b\u578b"

    invoke-direct {p0, p2, p3, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;->sendADError(Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public loadSplashAd(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;Landroid/view/View;Z)V
    .locals 10

    new-instance v8, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;

    invoke-direct {v8, p1, p3, p5}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;-><init>(Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;Z)V

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v9, Lcn/haorui/sdk/adsail_ad/AdNative$2;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v8

    move-object v4, p2

    move v5, p5

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcn/haorui/sdk/adsail_ad/AdNative$2;-><init>(Lcn/haorui/sdk/adsail_ad/AdNative;Lcn/haorui/sdk/adsail_ad/splash/SplashAdSlot;Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;Lcn/haorui/sdk/adsail_ad/splash/ISplashAdListener;ZLandroid/view/View;Lcn/haorui/sdk/platform/hr/splash/HRHRAdNativeWrapper;)V

    invoke-virtual {v8, v9}, Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl;->setOnAdShowListener(Lcn/haorui/sdk/adsail_ad/splash/SplashAdImpl$IAdShowListener;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, v8}, Lcn/haorui/sdk/adsail_ad/IAdListener;->onADLoaded(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "AdNative"

    const-string p3, "empty srcUrls"

    invoke-static {p1, p3}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/haorui/sdk/core/exception/a;->b:Ljava/lang/Integer;

    const-string p3, "\u56fe\u7247url\u4e3a\u7a7a"

    invoke-direct {p0, p2, p3, p1}, Lcn/haorui/sdk/adsail_ad/AdNative;->sendADError(Lcn/haorui/sdk/adsail_ad/IAdListener;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
