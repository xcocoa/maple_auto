.class public Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/haorui/sdk/core/ad/recycler/RecyclerAdData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HRPreRenderAdapter"


# instance fields
.field private adView:Landroid/widget/RelativeLayout;

.field private adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

.field private containerWidth:I

.field private expressMediaListener:Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

.field private iAdExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

.field private imgLoadListener:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;

.field private interactionListener:Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

.field private isAdExposure:Z

.field private isImageLoad:Z

.field private isUpDownStyle:Z

.field private nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

.field private shakeId:I


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;)V
    .locals 1
    .param p1    # Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isImageLoad:Z

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    iput-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isAdExposure:Z

    return p0
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isAdExposure:Z

    return p1
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    return-object p0
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isImageLoad:Z

    return p0
.end method

.method public static synthetic access$1002(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isImageLoad:Z

    return p1
.end method

.method public static synthetic access$1100(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic access$1200(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Landroid/content/Context;I)[B
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->getImageBytes(Landroid/content/Context;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->shakeId:I

    return p0
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->shakeId:I

    return p1
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->interactionListener:Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->expressMediaListener:Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->sendAdError(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;[B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isGif([B)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->imgLoadListener:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;

    return-object p0
.end method

.method private closeAd(Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;

    invoke-direct {v0, p0, p2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$9;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method private handleDownloadView(Landroid/content/Context;Landroid/view/View;Lcn/haorui/sdk/core/ad/BaseAdSlot;)V
    .locals 3

    :try_start_0
    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getInteractionType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    sget p1, Lcn/haorui/sdk/R$id;->adsail_download_layer_textview:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " | "

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "\u5e94\u7528\u540d\u79f0\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u5e94\u7528\u7248\u672c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u5e94\u7528\u5927\u5c0f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getApp_size()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u5f00\u53d1\u8005\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getDeveloper()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, " \u6743\u9650\u8be6\u60c5> | \u9690\u79c1\u534f\u8bae > | \u529f\u80fd\u4ecb\u7ecd >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$4;

    invoke-direct {v0, p0, p3, p2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$4;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Lcn/haorui/sdk/core/ad/BaseAdSlot;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
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

.method private renderStyle(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/haorui/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    :try_start_0
    iget-object v10, v1, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v10}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContainer()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    move-result-object v11

    const/4 v14, 0x1

    const/4 v15, 0x4

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContainer()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;->getPadding()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lt v13, v15, :cond_0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v15, 0x3

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-int v11, v11

    int-to-float v13, v13

    mul-float v13, v13, v10

    float-to-int v13, v13

    int-to-float v14, v14

    mul-float v14, v14, v10

    float-to-int v14, v14

    int-to-float v12, v12

    mul-float v12, v12, v10

    float-to-int v12, v12

    invoke-virtual {v2, v11, v13, v14, v12}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContainer()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x4

    if-lt v12, v13, :cond_1

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v11

    const-string v12, ""

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v13, v12}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->createRectangleDrawable(Ljava/util/List;ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "#"

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x4

    if-lt v2, v13, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v13

    invoke-virtual {v13}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v10

    float-to-int v13, v13

    iput v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v13

    invoke-virtual {v13}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v10

    float-to-int v13, v13

    iput v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v13

    invoke-virtual {v13}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v10

    float-to-int v13, v13

    iput v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v13

    invoke-virtual {v13}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getMargin()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v10

    float-to-int v13, v13

    iput v13, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v13, 0x4

    if-lt v2, v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x3

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v13

    invoke-virtual {v13}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v10

    float-to-int v13, v13

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v10

    float-to-int v14, v14

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getPadding()Ljava/util/List;

    move-result-object v15

    const/4 v11, 0x2

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-int v11, v11

    invoke-virtual {v3, v2, v13, v14, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x14

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getTitle()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_7
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    if-eqz v2, :cond_d

    if-eqz v4, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x4

    if-lt v2, v11, :cond_8

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-int v11, v11

    iput v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-int v11, v11

    iput v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x2

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-int v11, v11

    iput v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getMargin()Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x3

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-int v11, v11

    iput v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v11, 0x4

    if-lt v2, v11, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v2

    const/4 v11, 0x3

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-int v11, v11

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v13

    invoke-virtual {v13}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v10

    float-to-int v13, v13

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getPadding()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v10

    float-to-int v14, v14

    invoke-virtual {v4, v2, v11, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0x14

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getContent()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_d
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v2

    if-eqz v2, :cond_f

    if-eqz v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_e

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerTopLeftRadius(I)V

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerTopRightRadius(I)V

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerBottomRightRadius(I)V

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v5, v2}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerBottomLeftRadius(I)V

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_f

    invoke-virtual/range {p5 .. p5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_16

    if-eqz v6, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->isHide()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_11
    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v4

    if-lez v4, :cond_13

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getLines()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x4

    if-lt v2, v4, :cond_14

    invoke-virtual/range {p6 .. p6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getMargin()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getPadding()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_15

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    const/4 v11, 0x2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v10

    float-to-int v11, v11

    const/4 v13, 0x3

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v6, v2, v4, v5, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getSize()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getDislike()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v11

    invoke-virtual {v11}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getColor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->createRectangleDrawable(Ljava/util/List;ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v2

    if-eqz v2, :cond_19

    if-eqz v7, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->isHide()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_17
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/HRConfig;->showLogo()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x4

    if-lt v2, v4, :cond_19

    invoke-virtual/range {p7 .. p7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getLogo()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->getMargin()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    if-eqz v2, :cond_1e

    if-eqz v8, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->isHide()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_1a
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1b

    invoke-virtual/range {p8 .. p8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getPadding()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1c

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    const/4 v6, 0x3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getSource()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v3

    if-lez v3, :cond_1d

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_1d
    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz v9, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1f

    invoke-virtual/range {p9 .. p9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getMargin()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getPadding()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_20

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v10

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v10

    float-to-int v4, v4

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v10

    float-to-int v5, v5

    const/4 v6, 0x3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getText()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v3

    if-lez v3, :cond_21

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_21
    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$TextBean;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_23

    invoke-virtual {v2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getSize()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getButton()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    move-result-object v5

    invoke-virtual {v5}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v5

    invoke-virtual {v5}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->createRectangleDrawable(Ljava/util/List;ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_5
    return-void
.end method

.method private sendAdError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getLoaderListener()Lcn/haorui/sdk/core/loader/IAdLoadListener;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdListener;

    invoke-interface {v0, p2, p1}, Lcn/haorui/sdk/core/loader/IAdLoadListener;->onAdRenderFail(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private showLeftRightStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    sget v1, Lcn/haorui/sdk/R$layout;->adsail_item_pre_render_smallimage:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x191

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v5

    if-ne v5, v4, :cond_0

    sget v1, Lcn/haorui/sdk/R$layout;->adsail_item_pre_render_smallimage_left:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    sget v2, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_smallimage_rootView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_1
    sget v2, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_smallimage_imageview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcn/haorui/sdk/core/view/RoundImageView;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_smallimage_logo:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_smallimage_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_smallimage_content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_smallimage_fromtext:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_smallimage_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    sget v2, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_smallimage_shake_image:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v12, Lcn/haorui/sdk/R$id;->adsail_shakeRoot:I

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    sget v13, Lcn/haorui/sdk/R$id;->adsail_shake_img:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v14, Lcn/haorui/sdk/R$id;->adsail_shake_text:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iget-object v15, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v15}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v15, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v15}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getContent()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v15, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v15}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v15, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v15}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v15

    const/4 v4, 0x4

    and-int/2addr v15, v4

    move-object/from16 p3, v9

    const/4 v9, 0x0

    if-ne v15, v4, :cond_2

    invoke-direct {v10, v0, v12, v13}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v2, "\u6447\u4e00\u6447"

    :goto_0
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v4, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v4}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v4

    const/16 v15, 0x8

    and-int/2addr v4, v15

    if-ne v4, v15, :cond_3

    invoke-direct {v10, v0, v12, v13}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v2, "\u626d\u4e00\u626d"

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v9

    new-instance v4, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;

    invoke-direct {v4, v10, v5, v0, v3}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$6;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Lcn/haorui/sdk/core/view/RoundImageView;Landroid/content/Context;F)V

    invoke-static {v2, v4}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    invoke-direct {v10, v7}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showLogo(Landroid/widget/ImageView;)V

    invoke-direct {v10, v11, v1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->closeAd(Landroid/widget/TextView;Landroid/view/View;)V

    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v6

    move-object v4, v8

    move-object v6, v11

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->renderStyle(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/haorui/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_5
    return-void
.end method

.method private showLogo(Landroid/widget/ImageView;)V
    .locals 8

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lz2/o000;

    invoke-direct {v1, p1}, Lz2/o000;-><init>(Landroid/view/View;)V

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$10;

    invoke-direct {v7, p0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$10;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v7}, Lz2/o000O000;->o00000o0(Ljava/lang/String;ZZIILz2/o000OO00;)Lz2/o000O000;

    :cond_0
    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->showLogo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$11;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showThreeImageStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_11

    sget v2, Lcn/haorui/sdk/R$layout;->adsail_item_pre_render_three_img:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_three_img_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v3, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_three_img_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v4, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_three_img_close:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/TextView;

    sget v4, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_three_img_logo:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/widget/ImageView;

    sget v4, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_three_img_fromtext:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    sget v4, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_three_img_type:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/widget/TextView;

    sget v4, Lcn/haorui/sdk/R$id;->ms_item_pre_render_three_shake_image:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget v5, Lcn/haorui/sdk/R$id;->adsail_shakeRoot:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    sget v11, Lcn/haorui/sdk/R$id;->adsail_shake_img:I

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v12, Lcn/haorui/sdk/R$id;->adsail_shake_text:I

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v13}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v13

    invoke-virtual {v13}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v13

    const/4 v14, 0x4

    and-int/2addr v13, v14

    const/4 v15, 0x0

    if-ne v13, v14, :cond_0

    invoke-direct {v10, v0, v5, v11}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v4, "\u6447\u4e00\u6447"

    :goto_0
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v13, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v13}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v13

    invoke-virtual {v13}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v13

    const/16 v14, 0x8

    and-int/2addr v13, v14

    if-ne v13, v14, :cond_1

    invoke-direct {v10, v0, v5, v11}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v4, "\u626d\u4e00\u626d"

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v4, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v4}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v4}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v4

    invoke-virtual {v4}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->getInteractionType()I

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\u70b9\u51fb\u6d4f\u89c8"

    goto :goto_2

    :cond_2
    const-string v4, "\u70b9\u51fb\u4e0b\u8f7d"

    :goto_2
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {v10, v7}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showLogo(Landroid/widget/ImageView;)V

    invoke-direct {v10, v6, v2}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->closeAd(Landroid/widget/TextView;Landroid/view/View;)V

    sget v4, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_three_img_containerll:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    iget-object v11, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v11}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-ge v4, v11, :cond_10

    iget-object v12, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v12}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v4

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 p6, v8

    move-object/from16 p4, v9

    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_3
    new-instance v13, Lcn/haorui/sdk/core/view/RoundImageView;

    invoke-direct {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v11

    if-eqz v11, :cond_d

    const/4 v11, 0x3

    if-nez v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getLeft()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x4

    if-lt v14, v15, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getLeft()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v11

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v11

    move/from16 p4, v0

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x2

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getLeft()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    move/from16 v19, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v18, v11

    const/4 v11, 0x4

    if-lt v0, v11, :cond_5

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerTopLeftRadius(I)V

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerTopRightRadius(I)V

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerBottomRightRadius(I)V

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerBottomLeftRadius(I)V

    goto :goto_4

    :cond_4
    move/from16 v19, v0

    move/from16 v18, v11

    :cond_5
    :goto_4
    move/from16 v0, p4

    move v11, v15

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    const/4 v11, 0x5

    const/4 v14, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_5
    if-ne v4, v14, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getCenter()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v14

    invoke-virtual {v14}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x4

    if-lt v14, v15, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getCenter()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x3

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v15

    move/from16 p4, v11

    const/4 v11, 0x1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v0

    const/4 v15, 0x2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getCenter()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_7

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    move/from16 v19, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v18, v11

    const/4 v11, 0x4

    if-lt v0, v11, :cond_8

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerTopLeftRadius(I)V

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerTopRightRadius(I)V

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerBottomRightRadius(I)V

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerBottomLeftRadius(I)V

    goto :goto_6

    :cond_7
    move/from16 v19, v0

    move/from16 v18, v11

    :cond_8
    :goto_6
    move/from16 v11, p4

    const/4 v0, 0x2

    goto :goto_7

    :cond_9
    move v14, v0

    const/4 v0, 0x2

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v20

    :goto_7
    if-ne v4, v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getRight()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v15, 0x4

    if-lt v0, v15, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getRight()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x3

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v15

    move/from16 p4, v11

    const/4 v11, 0x1

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getMargin()Ljava/util/List;

    move-result-object v0

    const/4 v15, 0x2

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreatives()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->getChilds()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->getRight()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    move-result-object v15

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->getBorder()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getClip()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_a

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v18

    move/from16 v19, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v18, v11

    const/4 v11, 0x4

    if-lt v0, v11, :cond_b

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerTopLeftRadius(I)V

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerTopRightRadius(I)V

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerBottomRightRadius(I)V

    invoke-virtual {v15}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->getRadius()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x3

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v13, v0}, Lcn/haorui/sdk/core/view/RoundImageView;->setCornerBottomLeftRadius(I)V

    goto :goto_8

    :cond_a
    move/from16 v19, v0

    move/from16 v18, v11

    :cond_b
    :goto_8
    move/from16 v15, p4

    move-object/from16 p4, v9

    goto :goto_9

    :cond_c
    move-object/from16 p4, v9

    move v15, v11

    :goto_9
    move/from16 v11, v18

    move/from16 v0, v19

    goto :goto_a

    :cond_d
    move-object/from16 p4, v9

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x5

    :goto_a
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 p6, v8

    const/4 v8, -0x2

    move-object/from16 v17, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-direct {v9, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    add-int/lit8 v6, v5, 0x1

    if-lez v5, :cond_e

    int-to-float v5, v15

    mul-float v5, v5, v1

    float-to-int v5, v5

    int-to-float v7, v14

    mul-float v7, v7, v1

    float-to-int v7, v7

    int-to-float v8, v11

    mul-float v8, v8, v1

    float-to-int v8, v8

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v9, v5, v7, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :cond_e
    invoke-virtual {v2, v13, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    if-ne v4, v0, :cond_f

    iput-boolean v5, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isImageLoad:Z

    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isImageLoad:Z

    :goto_b
    new-instance v5, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;

    invoke-direct {v5, v10, v13}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$7;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Lcn/haorui/sdk/core/view/RoundImageView;)V

    invoke-static {v12, v5}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    move v5, v6

    :goto_c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v8, p6

    move-object/from16 v7, v17

    move-object/from16 v6, v18

    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_10
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 p6, v8

    move-object/from16 p4, v9

    if-eqz p2, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v1, 0x1f5

    if-ne v0, v1, :cond_11

    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v6, v18

    move-object/from16 v7, v17

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->renderStyle(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/haorui/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_11
    return-void
.end method

.method private showUpDownStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p5

    sget v3, Lcn/haorui/sdk/R$layout;->adsail_item_pre_render_large_image:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0xc9

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v6

    if-ne v6, v5, :cond_0

    sget v3, Lcn/haorui/sdk/R$layout;->adsail_item_pre_render_large_image_top:I

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isUpDownStyle:Z

    sget v4, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_rootview:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    move/from16 v6, p4

    move/from16 v7, p6

    invoke-virtual {v4, v1, v6, v2, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    sget v6, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_content:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_imageview:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcn/haorui/sdk/core/view/RoundImageView;

    sget v8, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_logo:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    sget v9, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_fromtext:I

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    sget v11, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_close:I

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    sget v12, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_shake_image:I

    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    sget v13, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_shake_text:I

    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget v14, Lcn/haorui/sdk/R$id;->adsail_shakeRoot:I

    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    sget v15, Lcn/haorui/sdk/R$id;->adsail_shake_img:I

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v5, Lcn/haorui/sdk/R$id;->adsail_shake_text:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v16, v3

    iget-object v3, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v3

    move-object/from16 p4, v11

    const/4 v11, 0x4

    and-int/2addr v3, v11

    const-string v11, "\u626d\u4e00\u626d"

    move-object/from16 v17, v8

    const-string v8, "\u6447\u4e00\u6447"

    move-object/from16 v18, v7

    const/4 v7, 0x4

    if-ne v3, v7, :cond_1

    invoke-direct {v10, v0, v14, v15}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iget-object v7, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v7}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v7

    invoke-virtual {v7}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v7

    const/16 v3, 0x8

    and-int/2addr v7, v3

    if-ne v7, v3, :cond_2

    invoke-direct {v10, v0, v14, v15}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iget-object v5, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v5

    invoke-virtual {v5}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v5

    const/4 v7, 0x4

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_3

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v5, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v5}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v5

    invoke-virtual {v5}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v5

    const/16 v7, 0x8

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_4

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    iget-object v3, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_5

    iget-object v3, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iget-object v1, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getImgUrls()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    new-instance v2, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;

    move-object/from16 v7, v18

    invoke-direct {v2, v10, v7, v0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$8;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Lcn/haorui/sdk/core/view/RoundImageView;I)V

    invoke-static {v1, v2}, Lcn/haorui/sdk/core/utils/HttpUtil;->asyncGetFile(Ljava/lang/String;Lcn/haorui/sdk/core/utils/HttpGetBytesCallback;)V

    goto :goto_2

    :cond_5
    move-object/from16 v7, v18

    :goto_2
    move-object/from16 v8, v17

    invoke-direct {v10, v8}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showLogo(Landroid/widget/ImageView;)V

    move-object/from16 v11, p4

    move-object/from16 v3, v16

    invoke-direct {v10, v11, v3}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->closeAd(Landroid/widget/TextView;Landroid/view/View;)V

    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_7

    :cond_6
    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->renderStyle(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/haorui/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_7
    return-void
.end method

.method private showVideoStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    sget v1, Lcn/haorui/sdk/R$layout;->adsail_item_pre_render_large_image:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0xc9

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v4

    if-ne v4, v3, :cond_0

    sget v1, Lcn/haorui/sdk/R$layout;->adsail_item_pre_render_large_image_top:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    sget v4, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_rootview:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_videocontainer:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    sget v5, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_title:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget v6, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_content:I

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget v7, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_imageview:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sget v8, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_logo:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    sget v9, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_fromtext:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    sget v11, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_close:I

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v12}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v12

    invoke-virtual {v12}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v12}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v12

    invoke-virtual {v12}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getContent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v12}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v12

    invoke-virtual {v12}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getIconTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v7, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_shake_image:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sget v13, Lcn/haorui/sdk/R$id;->adsail_item_pre_render_large_iamge_shake_text:I

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    sget v14, Lcn/haorui/sdk/R$id;->adsail_shakeRoot:I

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    sget v15, Lcn/haorui/sdk/R$id;->adsail_shake_img:I

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcn/haorui/sdk/core/view/gif/GifImageView;

    sget v3, Lcn/haorui/sdk/R$id;->adsail_shake_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v2

    const/4 v12, 0x4

    and-int/2addr v2, v12

    const-string v12, "\u626d\u4e00\u626d"

    move-object/from16 p5, v9

    const-string v9, "\u6447\u4e00\u6447"

    move-object/from16 p6, v6

    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    invoke-direct {v10, v0, v14, v15}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iget-object v6, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v6}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v6

    invoke-virtual {v6}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v6

    const/16 v2, 0x8

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_2

    invoke-direct {v10, v0, v14, v15}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showStartShakeImage(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v2

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v2}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAct_type()I

    move-result v2

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    invoke-direct {v10, v8}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showLogo(Landroid/widget/ImageView;)V

    invoke-direct {v10, v11, v1}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->closeAd(Landroid/widget/TextView;Landroid/view/View;)V

    iget-object v0, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    new-instance v1, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;

    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v3}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    new-instance v6, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;

    invoke-direct {v6, v10}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$5;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)V

    invoke-direct {v1, v2, v3, v6}, Lcn/haorui/sdk/platform/hr/recycler/HRAdMediaListenerAdapter;-><init>(Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdMediaListener;)V

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getCreative()Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, v10, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v5

    move-object/from16 v4, p6

    move-object v5, v6

    move-object v6, v11

    move-object v7, v8

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->renderStyle(Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcn/haorui/sdk/core/view/RoundImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V
    .locals 7
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

    iput-object p4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->interactionListener:Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance v6, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$1;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/content/Context;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    invoke-virtual {p3, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    invoke-direct {p1, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v0, Lcn/haorui/sdk/core/view/TouchAdContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/haorui/sdk/core/view/TouchAdContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->getAdView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$2;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$2;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)V

    invoke-virtual {v0, p1}, Lcn/haorui/sdk/core/view/TouchAdContainer;->setOnWindownEventListener(Lcn/haorui/sdk/core/view/TouchAdContainer$OnWindownEventListener;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p2, v0, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    iget-object p2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->interactionListener:Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;

    invoke-interface {p1, p2}, Lcn/haorui/sdk/core/ad/IAd;->setInteractionListener(Lcn/haorui/sdk/core/loader/InteractionListener;)V

    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    return-void
.end method

.method public bindMediaView(Landroid/view/ViewGroup;Lcn/haorui/sdk/core/ad/recycler/RecyclerAdMediaListener;)V
    .locals 0

    return-void
.end method

.method public createRectangleDrawable(Ljava/util/List;ILjava/lang/String;)Landroid/graphics/drawable/GradientDrawable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/drawable/GradientDrawable;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-lez p2, :cond_0

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    const/16 p2, 0x8

    new-array p2, p2, [F

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    aput v2, p2, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, p2, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x2

    aput v1, p2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, p2, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    aput v1, p2, p3

    const/4 p3, 0x5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    aput v1, p2, p3

    const/4 p3, 0x6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    aput v1, p2, p3

    const/4 p3, 0x7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    aput p1, p2, p3

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object p1
.end method

.method public destroy()V
    .locals 2

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->shakeId:I

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/loader/g;->a(I)V

    return-void
.end method

.method public getActionText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdExposureListener()Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->iAdExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

    return-object v0
.end method

.method public getAdPatternType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdPatternType()I

    move-result v0

    return v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 17

    move-object/from16 v8, p0

    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_13

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->isUpDownStyle:Z

    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->getContainerWidth()F

    move-result v0

    iget-object v1, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;->getContainerHeight()F

    move-result v1

    iget-object v2, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/loader/b;->getAccept_ad_width()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v2}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/loader/b;->getAccept_ad_width()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getAccept_ad_width()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v2, v11, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    :cond_0
    move v12, v0

    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getAccept_ad_height()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getAccept_ad_height()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v0}, Lcn/haorui/sdk/platform/BasePlatformLoader;->getAdLoader()Lcn/haorui/sdk/core/loader/b;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/ad/recycler/RecyclerAdLoader;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/b;->getAccept_ad_height()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v1, v11, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v0

    :cond_1
    move v13, v1

    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getStyle_id()I

    move-result v0

    invoke-static {}, Lcn/haorui/sdk/core/utils/CacheUtil;->getInstance()Lcn/haorui/sdk/core/utils/CacheUtil;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcn/haorui/sdk/core/utils/CacheUtil;->getTemplateCache(Landroid/content/Context;)Lcn/haorui/sdk/core/domain/LayoutBean;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcn/haorui/sdk/core/utils/CacheUtil;->getInstance()Lcn/haorui/sdk/core/utils/CacheUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/utils/CacheUtil;->getDefaultLayout()Lcn/haorui/sdk/core/domain/LayoutBean;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    :try_start_0
    invoke-virtual {v1}, Lcn/haorui/sdk/core/domain/LayoutBean;->getStyle()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;

    invoke-virtual {v4}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getId()I

    move-result v4

    if-ne v0, v4, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_2
    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/haorui/sdk/core/HRConfig;->userPreRenderPaddings()[I

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_6

    array-length v6, v1

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    aget v2, v1, v9

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    aget v6, v1, v4

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    aget v7, v1, v5

    int-to-float v7, v7

    mul-float v7, v7, v0

    float-to-int v7, v7

    const/4 v15, 0x3

    aget v1, v1, v15

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    move v15, v0

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    move v6, v0

    move v7, v6

    move v15, v7

    :goto_3
    sget-object v2, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AdPatternType = "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v14}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdPatternType()I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;->getType()I

    move-result v1

    const/16 v4, 0x65

    if-eq v1, v4, :cond_9

    const/16 v4, 0xc9

    if-eq v1, v4, :cond_9

    const/16 v4, 0x12d

    if-eq v1, v4, :cond_7

    const/16 v4, 0x191

    if-eq v1, v4, :cond_7

    const/16 v4, 0x1f5

    if-eq v1, v4, :cond_b

    :goto_4
    move-object v14, v2

    goto/16 :goto_7

    :cond_7
    iget-object v1, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdPatternType()I

    move-result v1

    if-ne v1, v5, :cond_8

    goto :goto_6

    :cond_8
    :pswitch_0
    move-object v14, v2

    goto :goto_5

    :cond_9
    iget-object v1, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdPatternType()I

    move-result v1

    if-ne v1, v5, :cond_d

    goto :goto_6

    :cond_a
    iget-object v1, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdPatternType()I

    move-result v1

    if-eq v1, v4, :cond_d

    if-eq v1, v5, :cond_c

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    :cond_b
    :pswitch_1
    move-object/from16 v1, p0

    move-object v14, v2

    move-object v2, v10

    move v4, v0

    move v5, v6

    move v6, v7

    move v7, v15

    invoke-direct/range {v1 .. v7}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showThreeImageStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V

    goto :goto_7

    :goto_5
    move-object/from16 v1, p0

    move-object v2, v10

    move v4, v0

    move v5, v6

    move v6, v7

    move v7, v15

    invoke-direct/range {v1 .. v7}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showLeftRightStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V

    goto :goto_7

    :cond_c
    :goto_6
    move-object v14, v2

    move-object/from16 v1, p0

    move-object v2, v10

    move v4, v0

    move v5, v6

    move v6, v7

    move v7, v15

    invoke-direct/range {v1 .. v7}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showVideoStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V

    goto :goto_7

    :cond_d
    :pswitch_2
    move-object v14, v2

    move-object/from16 v1, p0

    move-object v2, v10

    move v4, v0

    move v5, v6

    move v6, v7

    move v7, v15

    invoke-direct/range {v1 .. v7}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->showUpDownStyle(Landroid/content/Context;Lcn/haorui/sdk/core/domain/LayoutBean$StyleBean;IIII)V

    :goto_7
    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_13

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const-wide v1, 0x3fd3333333333333L    # 0.3

    const/4 v3, 0x0

    cmpl-float v4, v12, v3

    if-lez v4, :cond_e

    iget v5, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v12

    float-to-double v5, v5

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v16, v10

    int-to-double v9, v7

    mul-double v9, v9, v1

    cmpg-double v7, v5, v9

    if-ltz v7, :cond_f

    goto :goto_8

    :cond_e
    move-object/from16 v16, v10

    :goto_8
    cmpl-float v3, v13, v3

    if-lez v3, :cond_10

    iget v5, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v13

    float-to-double v5, v5

    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v9, v7

    mul-double v9, v9, v1

    cmpg-double v1, v5, v9

    if-gez v1, :cond_10

    :cond_f
    const-string v0, "container size is too small"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "\u5bb9\u5668\u5c3a\u5bf8\u4e0d\u7b26\u5408\u8981\u6c42"

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    return-object v1

    :cond_10
    move-object/from16 v1, v16

    if-lez v4, :cond_11

    iget v2, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float v12, v12, v2

    float-to-int v2, v12

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_11
    if-lez v3, :cond_12

    iget v2, v11, Landroid/util/DisplayMetrics;->density:F

    mul-float v13, v13, v2

    float-to-int v2, v13

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_12
    iget-object v2, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcn/haorui/sdk/core/view/DownloadView;

    invoke-direct {v0}, Lcn/haorui/sdk/core/view/DownloadView;-><init>()V

    iget-object v2, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    iget-object v3, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v3}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/haorui/sdk/core/view/DownloadView;->handleDownloadView(Landroid/view/View;Lcn/haorui/sdk/core/ad/BaseAdSlot;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    iget-object v3, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    new-instance v4, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;

    new-instance v5, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$3;

    invoke-direct {v5, v8}, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$3;-><init>(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;)V

    invoke-direct {v4, v2, v5}, Lcn/haorui/sdk/platform/hr/recycler/HRInteractionListenerAdapter;-><init>(Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;Lcn/haorui/sdk/core/ad/recycler/RecylcerAdInteractionListener;)V

    invoke-interface {v2, v1, v3, v0, v4}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->bindAdToView(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Lcn/haorui/sdk/adsail_ad/nativ/NativeAdInteractionListener;)V

    :cond_13
    iget-object v0, v8, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adView:Landroid/widget/RelativeLayout;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getAppIntro()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppIntroUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppPremissionUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getData()Lcn/haorui/sdk/core/utils/ResultBean;
    .locals 3

    new-instance v0, Lcn/haorui/sdk/core/utils/ResultBean;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/ResultBean;-><init>()V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCid(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getCat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setCat(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setAderId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getFromId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setFromId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getReq_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setReqId(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getEcpm()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setPrice(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

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

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/HRAdLoader;->getAdSlot()Lcn/haorui/sdk/core/ad/AdSlot;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    invoke-virtual {v1}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getS_ext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/haorui/sdk/core/utils/ResultBean;->setS_ext(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

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

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getVideo_duration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromLogo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIconTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImgUrls()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getAder_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/haorui/sdk/core/utils/AderUtil;->getIsOperationContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getInteractionType()I

    move-result v0

    return v0
.end method

.method public getIsOperationContent()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

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

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecyclerType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSrcType()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdPatternType()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->nativeAdData:Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdData;->getAdSlot()Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/nativ/NativeAdSlot;->getWidth()I

    move-result v0

    return v0
.end method

.method public isAdValid()Z
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

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

    iget-object v4, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->adWrapper:Lcn/haorui/sdk/platform/hr/recycler/HRHRAdNativeWrapper;

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

    const/4 v0, 0x1

    return v0
.end method

.method public mute()V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 0

    return-void
.end method

.method public replay()V
    .locals 0

    return-void
.end method

.method public resumeVideo()V
    .locals 0

    return-void
.end method

.method public setExpressMediaListener(Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->expressMediaListener:Lcn/haorui/sdk/core/ad/recycler/ExpressMediaListener;

    return-void
.end method

.method public setOnADExposureListener(Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->iAdExposureListener:Lcn/haorui/sdk/core/ad/recycler/IAdExposureListener;

    return-void
.end method

.method public setOnImgloadSuccessListener(Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter;->imgLoadListener:Lcn/haorui/sdk/platform/hr/recycler/HRPreRenderAdapter$OnImgloadSuccessListener;

    return-void
.end method

.method public startVideo()V
    .locals 0

    return-void
.end method

.method public stopVideo()V
    .locals 0

    return-void
.end method

.method public unmute()V
    .locals 0

    return-void
.end method
