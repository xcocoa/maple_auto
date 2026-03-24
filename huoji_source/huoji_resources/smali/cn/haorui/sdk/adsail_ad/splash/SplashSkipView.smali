.class public Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplashSkipView"


# instance fields
.field public ARC_WIDTH:F

.field public INNER_PADDING:F

.field public RADIUS:F

.field public TEXT_SIZE:F

.field private attachWindow:Z

.field private isPause:Z

.field private lifecycleHelper:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleHelper;

.field private mCurrentTime:I

.field private mHandler:Landroid/os/Handler;

.field private mInnerCircleRadius:F

.field public mInnerCriclePaint:Landroid/graphics/Paint;

.field private mLifeListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

.field public mMeasuresTextWidth:F

.field private mOnSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

.field public mOutArcPaint:Landroid/graphics/Paint;

.field private mOutArcRadius:F

.field private mShowTime:I

.field public mTextPaint:Landroid/graphics/Paint;

.field private mTotalTime:I

.field private manualStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private rectF:Landroid/graphics/RectF;

.field private show:Z

.field private started:Z

.field private updateTime:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x400ccccd    # 2.2f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->ARC_WIDTH:F

    const p1, 0x4141999a    # 12.1f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->TEXT_SIZE:F

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->INNER_PADDING:F

    const/high16 p1, 0x41780000    # 15.5f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->RADIUS:F

    const/4 p1, 0x0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mCurrentTime:I

    const/16 v0, 0x1388

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTotalTime:I

    const/16 v0, 0x64

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mShowTime:I

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->started:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->show:Z

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->isPause:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->manualStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;-><init>(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->updateTime:Ljava/lang/Runnable;

    new-instance p1, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;-><init>(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mLifeListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x400ccccd    # 2.2f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->ARC_WIDTH:F

    const p1, 0x4141999a    # 12.1f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->TEXT_SIZE:F

    const/high16 p1, 0x41200000    # 10.0f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->INNER_PADDING:F

    const/high16 p1, 0x41780000    # 15.5f

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->RADIUS:F

    const/4 p1, 0x0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mCurrentTime:I

    const/16 p2, 0x1388

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTotalTime:I

    const/16 p2, 0x64

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mShowTime:I

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->started:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->show:Z

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->isPause:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->manualStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$1;-><init>(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->updateTime:Ljava/lang/Runnable;

    new-instance p1, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$2;-><init>(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mLifeListener:Lcn/haorui/sdk/adsail_ad/lifecycle/LifecycleListener;

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mCurrentTime:I

    return p0
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mCurrentTime:I

    return p1
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTotalTime:I

    return p0
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->updateTime:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOnSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)I
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mShowTime:I

    return p0
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->show:Z

    return p0
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->started:Z

    return p0
.end method

.method private init()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->ARC_WIDTH:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->ARC_WIDTH:F

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->TEXT_SIZE:F

    mul-float v1, v1, v2

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->TEXT_SIZE:F

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->INNER_PADDING:F

    mul-float v1, v1, v2

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->INNER_PADDING:F

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->RADIUS:F

    mul-float v1, v1, v2

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->RADIUS:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->TEXT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTextPaint:Landroid/graphics/Paint;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v0, v0, v3

    const/4 v3, 0x0

    const v4, -0x777778

    invoke-virtual {v1, v0, v3, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mInnerCriclePaint:Landroid/graphics/Paint;

    const-string v1, "#b7ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mInnerCriclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mInnerCriclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->ARC_WIDTH:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mInnerCriclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOutArcPaint:Landroid/graphics/Paint;

    const-string v1, "#42c1f0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOutArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOutArcPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->ARC_WIDTH:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOutArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTextPaint:Landroid/graphics/Paint;

    const-string v1, "\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mMeasuresTextWidth:F

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->RADIUS:F

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mInnerCircleRadius:F

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOutArcRadius:F

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->ARC_WIDTH:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    iget v5, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOutArcRadius:F

    mul-float v5, v5, v2

    sub-float/2addr v5, v1

    sub-float/2addr v5, v4

    invoke-direct {v0, v3, v3, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->initHandler()V

    return-void
.end method

.method private initHandler()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getShowTime()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mShowTime:I

    return v0
.end method

.method public getTotalTime()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTotalTime:I

    return v0
.end method

.method public manualPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->isPause:Z

    return-void
.end method

.method public manualResume()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->isPause:Z

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mCurrentTime:I

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTotalTime:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOnSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;->onTimeOver()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOnSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->attachWindow:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->attachWindow:Z

    sget-object v0, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    invoke-virtual {v0}, Lcn/haorui/sdk/core/loader/g;->a()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->rectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mInnerCriclePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mCurrentTime:I

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mShowTime:I

    if-le v0, v2, :cond_0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v0, v0, v3

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTotalTime:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v0, v0, v2

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->rectF:Landroid/graphics/RectF;

    iget-object v7, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOutArcPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v0

    div-float/2addr v2, v1

    sub-float/2addr v3, v2

    float-to-int v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mMeasuresTextWidth:F

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    int-to-float v0, v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "\u8df3\u8fc7"

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOutArcRadius:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-ne v0, v2, :cond_1

    iget p2, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOutArcRadius:F

    mul-float p2, p2, v1

    float-to-int p2, p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->stop(Z)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->attachWindow:Z

    const-string v1, "SplashSkipView"

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->started:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/core/HRConfig;->splashClickPause()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/core/loader/g;->a(Z)V

    sget-object p1, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_1

    iget v3, p1, Lcn/haorui/sdk/core/loader/g;->b:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p1, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    iget-object v5, p1, Lcn/haorui/sdk/core/loader/g;->s:Landroid/hardware/SensorEventListener;

    invoke-virtual {v3, v5, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    :goto_0
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v2, p1, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    iget-object p1, p1, Lcn/haorui/sdk/core/loader/g;->s:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, p1, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    const-string p1, "resume"

    invoke-static {v1, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->resume()V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->attachWindow:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->started:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->adConfig()Lcn/haorui/sdk/core/HRConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/HRConfig;->splashClickPause()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "pause"

    invoke-static {v1, p1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcn/haorui/sdk/core/loader/g$c;->a:Lcn/haorui/sdk/core/loader/g;

    iget-object v0, p1, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcn/haorui/sdk/core/loader/g;->s:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_3
    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->pause()V

    :cond_4
    :goto_1
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->updateTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->start()V

    return-void
.end method

.method public setOnSkipListener(Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOnSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    return-void
.end method

.method public setShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->show:Z

    return-void
.end method

.method public setTotalTime(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mTotalTime:I

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->started:Z

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->pause()V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->updateTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop(Z)V
    .locals 1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->pause()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOnSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;->onSkip()V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->isPause:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;->onTimeOver()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView;->mOnSkipListener:Lcn/haorui/sdk/adsail_ad/splash/SplashSkipView$OnSkipListener;

    :cond_2
    return-void
.end method
