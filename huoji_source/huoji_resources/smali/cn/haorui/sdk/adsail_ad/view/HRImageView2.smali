.class public Lcn/haorui/sdk/adsail_ad/view/HRImageView2;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# static fields
.field private static final PADDING_DP:I = 0x6

.field private static final ROUND_DP:I = 0x6

.field private static final STROKE_WIDTH_DP:I


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;

.field private roundPath:Landroid/graphics/Path;

.field private scaledDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->rectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->roundPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->rectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->roundPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->rectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->roundPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->scaledDensity:F

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->scaledDensity:F

    const/4 v2, 0x0

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->roundPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->roundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->scaledDensity:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v2, v2, v3

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRImageView2;->roundPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
