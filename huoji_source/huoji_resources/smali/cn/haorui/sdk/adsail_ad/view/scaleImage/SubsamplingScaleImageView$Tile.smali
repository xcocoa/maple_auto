.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tile"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private fileSRect:Landroid/graphics/Rect;

.field private loading:Z

.field private sRect:Landroid/graphics/Rect;

.field private sampleSize:I

.field private vRect:Landroid/graphics/Rect;

.field private visible:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;-><init>()V

    return-void
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->visible:Z

    return p0
.end method

.method public static synthetic access$4000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->loading:Z

    return p0
.end method

.method public static synthetic access$4002(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->loading:Z

    return p1
.end method

.method public static synthetic access$402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->visible:Z

    return p1
.end method

.method public static synthetic access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->sRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$4102(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->sRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->vRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$4202(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->vRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->sampleSize:I

    return p0
.end method

.method public static synthetic access$4302(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->sampleSize:I

    return p1
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$5000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->fileSRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$5002(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->fileSRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method
