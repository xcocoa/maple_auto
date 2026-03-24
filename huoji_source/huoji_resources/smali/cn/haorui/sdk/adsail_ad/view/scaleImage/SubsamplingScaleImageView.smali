.class public Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$DefaultOnStateChangedListener;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnStateChangedListener;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$DefaultOnImageEventListener;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$DefaultOnAnimationEventListener;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$BitmapLoadTask;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;,
        Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;
    }
.end annotation


# static fields
.field public static final EASE_IN_OUT_QUAD:I = 0x2

.field public static final EASE_OUT_QUAD:I = 0x1

.field private static final MESSAGE_LONG_CLICK:I = 0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0xb4

.field public static final ORIENTATION_270:I = 0x10e

.field public static final ORIENTATION_90:I = 0x5a

.field public static final ORIENTATION_USE_EXIF:I = -0x1

.field public static final ORIGIN_ANIM:I = 0x1

.field public static final ORIGIN_DOUBLE_TAP_ZOOM:I = 0x4

.field public static final ORIGIN_FLING:I = 0x3

.field public static final ORIGIN_TOUCH:I = 0x2

.field public static final PAN_LIMIT_CENTER:I = 0x3

.field public static final PAN_LIMIT_INSIDE:I = 0x1

.field public static final PAN_LIMIT_OUTSIDE:I = 0x2

.field public static final SCALE_TYPE_CENTER_CROP:I = 0x2

.field public static final SCALE_TYPE_CENTER_INSIDE:I = 0x1

.field public static final SCALE_TYPE_CUSTOM:I = 0x3

.field public static final SCALE_TYPE_START:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field public static final TILE_SIZE_AUTO:I = 0x7fffffff

.field private static final VALID_EASING_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ORIENTATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_PAN_LIMITS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_SCALE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ZOOM_STYLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZOOM_FOCUS_CENTER:I = 0x2

.field public static final ZOOM_FOCUS_CENTER_IMMEDIATE:I = 0x3

.field public static final ZOOM_FOCUS_FIXED:I = 0x1

.field private static preferredBitmapConfig:Landroid/graphics/Bitmap$Config;


# instance fields
.field private anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory<",
            "+",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapIsCached:Z

.field private bitmapIsPreview:Z

.field private bitmapPaint:Landroid/graphics/Paint;

.field private debug:Z

.field private debugLinePaint:Landroid/graphics/Paint;

.field private debugTextPaint:Landroid/graphics/Paint;

.field private decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

.field private final decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final density:F

.field private detector:Landroid/view/GestureDetector;

.field private doubleTapZoomDuration:I

.field private doubleTapZoomScale:F

.field private doubleTapZoomStyle:I

.field private final dstArray:[F

.field private eagerLoadingEnabled:Z

.field private executor:Ljava/util/concurrent/Executor;

.field private fullImageSampleSize:I

.field private final handler:Landroid/os/Handler;

.field private imageLoadedSent:Z

.field private isPanning:Z

.field private isQuickScaling:Z

.field private isZooming:Z

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private maxTileHeight:I

.field private maxTileWidth:I

.field private maxTouchCount:I

.field private minScale:F

.field private minimumScaleType:I

.field private minimumTileDpi:I

.field private onImageEventListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

.field private onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onStateChangedListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnStateChangedListener;

.field private orientation:I

.field private pRegion:Landroid/graphics/Rect;

.field private panEnabled:Z

.field private panLimit:I

.field private pendingScale:Ljava/lang/Float;

.field private quickScaleEnabled:Z

.field private quickScaleLastDistance:F

.field private quickScaleMoved:Z

.field private quickScaleSCenter:Landroid/graphics/PointF;

.field private final quickScaleThreshold:F

.field private quickScaleVLastPoint:Landroid/graphics/PointF;

.field private quickScaleVStart:Landroid/graphics/PointF;

.field private readySent:Z

.field private regionDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory<",
            "+",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private sHeight:I

.field private sOrientation:I

.field private sPendingCenter:Landroid/graphics/PointF;

.field private sRect:Landroid/graphics/RectF;

.field private sRegion:Landroid/graphics/Rect;

.field private sRequestedCenter:Landroid/graphics/PointF;

.field private sWidth:I

.field private satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

.field private scale:F

.field private scaleStart:F

.field private singleDetector:Landroid/view/GestureDetector;

.field private final srcArray:[F

.field private tileBgPaint:Landroid/graphics/Paint;

.field private tileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;",
            ">;>;"
        }
    .end annotation
.end field

.field private uri:Landroid/net/Uri;

.field private vCenterStart:Landroid/graphics/PointF;

.field private vDistStart:F

.field private vTranslate:Landroid/graphics/PointF;

.field private vTranslateBefore:Landroid/graphics/PointF;

.field private vTranslateStart:Landroid/graphics/PointF;

.field private zoomEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-class v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v0, v3

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v2, v0, v5

    const/16 v2, 0x10e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v2, v0, v7

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x4

    aput-object v2, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    new-array v0, v7, [Ljava/lang/Integer;

    aput-object v4, v0, v1

    aput-object v6, v0, v3

    aput-object v8, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    new-array v0, v9, [Ljava/lang/Integer;

    aput-object v6, v0, v1

    aput-object v4, v0, v3

    aput-object v8, v0, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->orientation:I

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxScale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale()F

    move-result v1

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale:F

    const/4 v1, -0x1

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minimumTileDpi:I

    const/4 v1, 0x1

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panLimit:I

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minimumScaleType:I

    const v2, 0x7fffffff

    iput v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileWidth:I

    iput v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileHeight:I

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->executor:Ljava/util/concurrent/Executor;

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->eagerLoadingEnabled:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panEnabled:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->zoomEnabled:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleEnabled:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoomScale:F

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoomStyle:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/CompatDecoderFactory;

    const-class v3, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaImageDecoder;

    invoke-direct {v2, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    new-instance v2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/CompatDecoderFactory;

    const-class v3, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/SkiaImageRegionDecoder;

    invoke-direct {v2, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->regionDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    const/16 v2, 0x8

    new-array v3, v2, [F

    iput-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->srcArray:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->dstArray:[F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->density:F

    const/16 v2, 0xa0

    invoke-virtual {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setMinimumDpi(I)V

    invoke-virtual {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setMinimumTileDpi(I)V

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;

    invoke-direct {v3, p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/haorui/sdk/R$styleable;->SubsamplingScaleImageView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v2, Lcn/haorui/sdk/R$styleable;->SubsamplingScaleImageView_adsail_assetName:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->asset(Ljava/lang/String;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tilingEnabled()Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setImage(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;)V

    :cond_0
    sget v2, Lcn/haorui/sdk/R$styleable;->SubsamplingScaleImageView_src:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->resource(I)Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->tilingEnabled()Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setImage(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;)V

    :cond_1
    sget v2, Lcn/haorui/sdk/R$styleable;->SubsamplingScaleImageView_adsail_panEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setPanEnabled(Z)V

    :cond_2
    sget v2, Lcn/haorui/sdk/R$styleable;->SubsamplingScaleImageView_adsail_zoomEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    :cond_3
    sget v2, Lcn/haorui/sdk/R$styleable;->SubsamplingScaleImageView_adsail_quickScaleEnabled:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    :cond_4
    sget v2, Lcn/haorui/sdk/R$styleable;->SubsamplingScaleImageView_adsail_tileBackgroundColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setTileBackgroundColor(I)V

    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {v1, p2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleThreshold:F

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)F
    .locals 0

    iget p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    return p0
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    return p1
.end method

.method public static synthetic access$1400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->zoomEnabled:Z

    return p0
.end method

.method public static synthetic access$1500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$1600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleEnabled:Z

    return p0
.end method

.method public static synthetic access$1700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$1702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$1802(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$1902(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;F)F
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scaleStart:F

    return p1
.end method

.method public static synthetic access$2002(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isQuickScaling:Z

    return p1
.end method

.method public static synthetic access$201(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static synthetic access$2102(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;F)F
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    return p1
.end method

.method public static synthetic access$2200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$2202(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$2302(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$2402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method public static synthetic access$2502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleMoved:Z

    return p1
.end method

.method public static synthetic access$2600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method

.method public static synthetic access$301(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static synthetic access$5100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$5200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$5300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic access$5400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$5500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onTilesInited(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;III)V

    return-void
.end method

.method public static synthetic access$5600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageEventListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    return-object p0
.end method

.method public static synthetic access$5700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method public static synthetic access$5800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$5900(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)V
    .locals 0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onTileLoaded()V

    return-void
.end method

.method public static synthetic access$600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panEnabled:Z

    return p0
.end method

.method public static synthetic access$6000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic access$6100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/Bitmap;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method public static synthetic access$6300()Ljava/util/List;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_EASING_STYLES:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$6400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    return-object p0
.end method

.method public static synthetic access$6402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    return-object p1
.end method

.method public static synthetic access$6500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->limitedScale(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$6600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$6800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;ZLcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(ZLcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)V

    return-void
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->readySent:Z

    return p0
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isZooming:Z

    return p0
.end method

.method public static synthetic access$902(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isZooming:Z

    return p1
.end method

.method private calculateInSampleSize(F)I
    .locals 3

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minimumTileDpi:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minimumTileDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float p1, p1, v0

    :cond_0
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    if-eqz v0, :cond_6

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, p1, :cond_3

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    if-le v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge p1, v0, :cond_4

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    mul-int/lit8 v0, v2, 0x2

    if-ge v0, p1, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_2
    const/16 p1, 0x20

    return p1
.end method

.method private checkImageLoaded()Z
    .locals 2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->imageLoadedSent:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->preDraw()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->imageLoadedSent:Z

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageLoaded()V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageEventListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;->onImageLoaded()V

    :cond_0
    return v0
.end method

.method private checkReady()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->readySent:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->preDraw()V

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->readySent:Z

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onReady()V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageEventListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;->onReady()V

    :cond_2
    return v0
.end method

.method private createPaints()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    const v2, -0xff01

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2
    return-void
.end method

.method private varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private distance(FFFF)F
    .locals 0

    sub-float/2addr p1, p2

    sub-float/2addr p3, p4

    mul-float p1, p1, p1

    mul-float p3, p3, p3

    add-float/2addr p1, p3

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 11

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panEnabled:Z

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    iput v0, p1, Landroid/graphics/PointF;->y:F

    :cond_1
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxScale:F

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoomScale:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    float-to-double v4, v2

    float-to-double v6, v0

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double v6, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmpg-double v10, v4, v6

    if-lez v10, :cond_3

    iget v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale()F

    move-result v0

    :goto_3
    move v4, v0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoomStyle:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    invoke-virtual {p0, v4, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setScaleAndCenter(FLandroid/graphics/PointF;)V

    goto :goto_6

    :cond_5
    const/4 v6, 0x4

    if-eq v0, v1, :cond_7

    if-eqz v2, :cond_7

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panEnabled:Z

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    if-ne v0, v8, :cond_8

    new-instance v7, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move v2, v4

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Landroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    invoke-virtual {v7, v9}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    goto :goto_5

    :cond_7
    :goto_4
    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v4, p1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    invoke-virtual {v0, v9}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->withInterruptible(Z)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    :goto_5
    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->withDuration(J)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    invoke-static {v0, v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->access$1300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;I)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;->start()V

    :cond_8
    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private ease(IJFFJ)F
    .locals 7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->easeInOutQuad(JFFJ)F

    move-result p1

    return p1

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected easing type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->easeOutQuad(JFFJ)F

    move-result p1

    return p1
.end method

.method private easeInOutQuad(JFFJ)F
    .locals 0

    long-to-float p1, p1

    long-to-float p2, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p2, p5

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p6, p1, p2

    if-gez p6, :cond_0

    div-float/2addr p4, p5

    mul-float p4, p4, p1

    :goto_0
    mul-float p4, p4, p1

    add-float/2addr p4, p3

    return p4

    :cond_0
    sub-float/2addr p1, p2

    neg-float p4, p4

    div-float/2addr p4, p5

    sub-float p5, p1, p5

    mul-float p1, p1, p5

    sub-float/2addr p1, p2

    goto :goto_0
.end method

.method private easeOutQuad(JFFJ)F
    .locals 0

    long-to-float p1, p1

    long-to-float p2, p5

    div-float/2addr p1, p2

    neg-float p2, p4

    mul-float p2, p2, p1

    const/high16 p4, 0x40000000    # 2.0f

    sub-float/2addr p1, p4

    mul-float p2, p2, p1

    add-float/2addr p2, p3

    return p2
.end method

.method private execute(Landroid/os/AsyncTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->executor:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, v1, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v4

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, v1, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method private fitToBounds(Z)V
    .locals 5

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    if-nez v2, :cond_1

    new-instance v2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    :cond_1
    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-static {v1, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;F)F

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-direct {p0, p1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(ZLcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)F

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    if-eqz v0, :cond_2

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minimumScaleType:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0, v0, v1, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_2
    return-void
.end method

.method private fitToBounds(ZLcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)V
    .locals 11

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panLimit:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)F

    move-result v3

    invoke-direct {p0, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->limitedScale(F)F

    move-result v3

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    iget v6, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panLimit:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/2addr v8, v2

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v2

    goto :goto_0

    :cond_1
    iget v6, v0, Landroid/graphics/PointF;->x:F

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    :goto_0
    int-to-float v8, v8

    sub-float/2addr v8, v5

    goto :goto_1

    :cond_2
    neg-float v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    neg-float v8, v5

    :goto_1
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    const/high16 v8, 0x3f000000    # 0.5f

    if-gtz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    if-lez v6, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v6, v9

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    if-gtz v9, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    if-lez v9, :cond_6

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    :cond_6
    iget v9, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panLimit:I

    if-ne v9, v7, :cond_7

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v4

    mul-float p1, p1, v6

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v5

    mul-float v2, v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_4
    int-to-float v1, v1

    :goto_5
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p2, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;F)F

    return-void
.end method

.method private getExifOrientation(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const-string v0, "content"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "orientation"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    sget-object p2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    sget-object p2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    if-eqz v0, :cond_8

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    sget-object p1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string p2, "Could not get orientation of image from media store"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_8

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    :cond_3
    const-string p1, "file:///"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "file:///android_asset/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    :try_start_2
    new-instance p1, Landroid/media/ExifInterface;

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p2, "Orientation"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_8

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    const/16 v1, 0x5a

    goto :goto_3

    :cond_5
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    const/16 v1, 0xb4

    goto :goto_3

    :cond_6
    const/16 p2, 0x8

    if-ne p1, p2, :cond_7

    const/16 v1, 0x10e

    goto :goto_3

    :cond_7
    sget-object p2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EXIF orientation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    sget-object p1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string p2, "Could not get EXIF orientation of image"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return v1
.end method

.method private getMaxBitmapDimensions(Landroid/graphics/Canvas;)Landroid/graphics/Point;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapWidth()I

    move-result v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMaximumBitmapHeight()I

    move-result p1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileHeight:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->preferredBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private getRequiredRotation()I
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->orientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sOrientation:I

    :cond_0
    return v0
.end method

.method private declared-synchronized initialiseBaseLayer(Landroid/graphics/Point;)V
    .locals 12
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "initialiseBaseLayer maxTileDimensions=%dx%d"

    invoke-direct {p0, v2, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-direct {p0, v3, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(ZLcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)V

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)F

    move-result v1

    invoke-direct {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->calculateInSampleSize(F)I

    move-result v1

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-le v1, v3, :cond_0

    div-int/2addr v1, v0

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;->recycle()V

    iput-object v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    new-instance p1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$BitmapLoadTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    iget-object v10, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$BitmapLoadTask;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;Landroid/net/Uri;Z)V

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->initialiseTileMap(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    invoke-direct {v1, p0, v2, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)V

    invoke-direct {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initialiseTileMap(Landroid/graphics/Point;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "initialiseTileMap maxTileDimensions=%dx%d"

    invoke-direct {v0, v3, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    iget v2, v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    const/4 v3, 0x1

    const/4 v6, 0x1

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v7

    div-int/2addr v7, v3

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v8

    div-int/2addr v8, v6

    div-int v9, v7, v2

    div-int v10, v8, v2

    :goto_1
    add-int v11, v9, v3

    add-int/2addr v11, v5

    iget v12, v1, Landroid/graphics/Point;->x:I

    if-gt v11, v12, :cond_9

    int-to-double v11, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-double v13, v9

    const-wide/high16 v15, 0x3ff4000000000000L    # 1.25

    mul-double v13, v13, v15

    cmpl-double v9, v11, v13

    if-lez v9, :cond_0

    iget v9, v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ge v2, v9, :cond_0

    goto/16 :goto_9

    :cond_0
    :goto_2
    add-int v9, v10, v6

    add-int/2addr v9, v5

    iget v11, v1, Landroid/graphics/Point;->y:I

    if-gt v9, v11, :cond_8

    int-to-double v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-double v11, v11

    mul-double v11, v11, v15

    cmpl-double v13, v9, v11

    if-lez v13, :cond_1

    iget v9, v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ge v2, v9, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    mul-int v10, v3, v6

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_6

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v6, :cond_5

    new-instance v12, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    invoke-static {v12, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4302(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;I)I

    iget v13, v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v2, v13, :cond_2

    const/4 v13, 0x1

    goto :goto_5

    :cond_2
    const/4 v13, 0x0

    :goto_5
    invoke-static {v12, v13}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z

    new-instance v13, Landroid/graphics/Rect;

    mul-int v14, v10, v7

    mul-int v15, v11, v8

    add-int/lit8 v5, v3, -0x1

    if-ne v10, v5, :cond_3

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v5

    goto :goto_6

    :cond_3
    add-int/lit8 v5, v10, 0x1

    mul-int v5, v5, v7

    :goto_6
    add-int/lit8 v4, v6, -0x1

    if-ne v11, v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v4

    goto :goto_7

    :cond_4
    add-int/lit8 v4, v11, 0x1

    mul-int v4, v4, v8

    :goto_7
    invoke-direct {v13, v14, v15, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v12, v13}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4102(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v12, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4202(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-static {v12}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v4, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v12, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$5002(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    iget-object v4, v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    return-void

    :cond_7
    div-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_8
    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v6, 0x1

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v8

    div-int/2addr v8, v6

    div-int v10, v8, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_9
    :goto_9
    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x1

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v7

    div-int/2addr v7, v3

    div-int v9, v7, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1
.end method

.method private isBaseLayerReady()Z
    .locals 6

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v4, v5, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method private limitedSCenter(FFFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .param p4    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateForSCenter(FFF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float p2, p2

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v1

    div-float/2addr p2, p3

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p1

    div-float/2addr v0, p3

    invoke-virtual {p4, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    return-object p4
.end method

.method private limitedScale(F)F
    .locals 1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale()F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxScale:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private minScale()F
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minimumScaleType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private declared-synchronized onImageLoaded(Landroid/graphics/Bitmap;IZ)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onImageLoaded"

    invoke-direct {p0, v2, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    if-lez v1, :cond_1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->reset(Z)V

    :cond_1
    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageEventListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    :cond_3
    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    iput-boolean p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    iput p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sOrientation:I

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->checkReady()Z

    move-result p1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->checkImageLoaded()Z

    move-result p2

    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onPreviewLoaded(Landroid/graphics/Bitmap;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onPreviewLoaded"

    invoke-direct {p0, v1, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->imageLoadedSent:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p1, v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->checkReady()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onTileLoaded()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onTileLoaded"

    invoke-direct {p0, v2, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->checkReady()Z

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->checkImageLoaded()Z

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageEventListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    :cond_1
    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onTilesInited(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;III)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->orientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "onTilesInited sWidth=%d, sHeight=%d, sOrientation=%d"

    invoke-direct {p0, v1, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_3

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    if-lez v1, :cond_3

    if-ne v0, p2, :cond_0

    if-eq v1, p3, :cond_3

    :cond_0
    invoke-direct {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->reset(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageEventListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    :cond_2
    iput-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    iput-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    :cond_3
    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    iput p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    iput p4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sOrientation:I

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->checkReady()Z

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->checkImageLoaded()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileWidth:I

    if-lez p1, :cond_4

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_4

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileHeight:I

    if-lez p1, :cond_4

    if-eq p1, p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_4

    new-instance p1, Landroid/graphics/Point;

    iget p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileWidth:I

    iget p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileHeight:I

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->initialiseBaseLayer(Landroid/graphics/Point;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2a

    if-eq v1, v5, :cond_21

    if-eq v1, v3, :cond_0

    const/4 v6, 0x5

    if-eq v1, v6, :cond_2a

    const/4 v6, 0x6

    if-eq v1, v6, :cond_21

    const/16 v6, 0x105

    if-eq v1, v6, :cond_2a

    const/16 v2, 0x106

    if-eq v1, v2, :cond_21

    goto/16 :goto_e

    :cond_0
    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    if-lez v1, :cond_1f

    const/high16 v1, 0x40a00000    # 5.0f

    if-lt v0, v3, :cond_9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-direct {p0, v0, v6, v7, v8}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->distance(FFFF)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v7, p1

    div-float/2addr v7, v2

    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->zoomEnabled:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v2, v6, p1, v7}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->distance(FFFF)F

    move-result p1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vDistStart:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    if-eqz p1, :cond_1f

    :cond_1
    iput-boolean v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    float-to-double v1, p1

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxScale:F

    iget v8, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vDistStart:F

    div-float v8, v0, v8

    iget v9, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scaleStart:F

    mul-float v8, v8, v9

    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale()F

    move-result v8

    cmpg-float p1, p1, v8

    if-gtz p1, :cond_2

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vDistStart:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale()F

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scaleStart:F

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_1

    :cond_2
    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panEnabled:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget-object v8, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v9

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v8

    iget v8, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget v9, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scaleStart:F

    div-float/2addr v8, v9

    mul-float v3, v3, v8

    mul-float p1, p1, v8

    iget-object v8, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    sub-float v3, v6, v3

    iput v3, v8, Landroid/graphics/PointF;->x:F

    sub-float p1, v7, p1

    iput p1, v8, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v8, p1

    mul-double v8, v8, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v10, p1

    cmpg-double p1, v8, v10

    if-gez p1, :cond_3

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float p1, p1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-gez p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v8, p1

    mul-double v1, v1, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v8, p1

    cmpg-double p1, v1, v8

    if-gez p1, :cond_7

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_7

    :cond_4
    invoke-direct {p0, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scaleStart:F

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vDistStart:F

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v3

    int-to-float v0, v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    :goto_0
    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    :cond_7
    :goto_1
    invoke-direct {p0, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(Z)V

    :cond_8
    :goto_2
    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->eagerLoadingEnabled:Z

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    const/4 p1, 0x1

    goto/16 :goto_d

    :cond_9
    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, v2

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleThreshold:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_a

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v6, 0x0

    invoke-virtual {v2, v6, p1}, Landroid/graphics/PointF;->set(FF)V

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    div-float p1, v0, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float p1, p1, v7

    const v7, 0x3cf5c28f    # 0.03f

    cmpl-float v7, p1, v7

    if-gtz v7, :cond_c

    iget-boolean v7, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleMoved:Z

    if-eqz v7, :cond_13

    :cond_c
    iput-boolean v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleMoved:Z

    iget v7, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    cmpl-float v7, v7, v6

    if-lez v7, :cond_e

    if-eqz v1, :cond_d

    add-float/2addr v2, p1

    goto :goto_4

    :cond_d
    sub-float/2addr v2, p1

    :cond_e
    :goto_4
    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    float-to-double v7, p1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale()F

    move-result p1

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxScale:F

    iget v9, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    mul-float v9, v9, v2

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panEnabled:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v9, v3, Landroid/graphics/PointF;->x:F

    sub-float v9, v2, v9

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    iget v10, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scaleStart:F

    div-float/2addr p1, v10

    mul-float v9, v9, p1

    mul-float v3, v3, p1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    sub-float/2addr v2, v9

    iput v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iput v1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v1, p1

    mul-double v1, v1, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v9, p1

    cmpg-double p1, v1, v9

    if-gez p1, :cond_f

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_10

    :cond_f
    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v1, p1

    mul-double v7, v7, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double v1, p1

    cmpg-double p1, v7, v1

    if-gez p1, :cond_13

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_13

    :cond_10
    invoke-direct {p0, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scaleStart:F

    const/4 v0, 0x0

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :cond_12
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v6, v6

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v6

    div-int/2addr v6, v3

    int-to-float v3, v6

    :goto_5
    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    :cond_13
    :goto_6
    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    goto/16 :goto_1

    :cond_14
    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isZooming:Z

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->density:F

    mul-float v3, v3, v1

    cmpl-float v1, v0, v3

    if-gtz v1, :cond_15

    cmpl-float v6, v2, v3

    if-gtz v6, :cond_15

    iget-boolean v6, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v6, :cond_1f

    :cond_15
    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v7, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v9, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v7, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v8, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v8

    add-float/2addr v7, p1

    iput v7, v6, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-object v7, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    goto :goto_7

    :cond_16
    const/4 v6, 0x0

    :goto_7
    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, v7

    if-eqz p1, :cond_17

    const/4 v7, 0x1

    goto :goto_8

    :cond_17
    const/4 v7, 0x0

    :goto_8
    if-eqz v6, :cond_18

    cmpl-float v8, v0, v2

    if-lez v8, :cond_18

    iget-boolean v8, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    if-nez v8, :cond_18

    const/4 v8, 0x1

    goto :goto_9

    :cond_18
    const/4 v8, 0x0

    :goto_9
    if-eqz v7, :cond_19

    cmpl-float v0, v2, v0

    if-lez v0, :cond_19

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    :goto_a
    if-nez p1, :cond_1a

    const/high16 p1, 0x40400000    # 3.0f

    mul-float p1, p1, v3

    cmpl-float p1, v2, p1

    if-lez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_b

    :cond_1a
    const/4 p1, 0x0

    :goto_b
    if-nez v8, :cond_1c

    if-nez v0, :cond_1c

    if-eqz v6, :cond_1b

    if-eqz v7, :cond_1b

    if-nez p1, :cond_1b

    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    if-eqz p1, :cond_1c

    :cond_1b
    iput-boolean v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    goto :goto_c

    :cond_1c
    if-gtz v1, :cond_1d

    cmpl-float p1, v2, v3

    if-lez p1, :cond_1e

    :cond_1d
    iput v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1e
    :goto_c
    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panEnabled:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_2

    :cond_1f
    const/4 p1, 0x0

    :goto_d
    if-eqz p1, :cond_20

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v5

    :cond_20
    :goto_e
    return v4

    :cond_21
    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v1, :cond_22

    iput-boolean v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isQuickScaling:Z

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleMoved:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-direct {p0, v1, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoom(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_22
    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    if-lez v1, :cond_28

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isZooming:Z

    if-nez v1, :cond_23

    iget-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    if-eqz v2, :cond_28

    :cond_23
    if-eqz v1, :cond_25

    if-ne v0, v3, :cond_25

    iput-boolean v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v6, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-ne v1, v5, :cond_24

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    goto :goto_f

    :cond_24
    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    :goto_f
    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_25
    const/4 p1, 0x3

    if-ge v0, p1, :cond_26

    iput-boolean v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isZooming:Z

    :cond_26
    if-ge v0, v3, :cond_27

    iput-boolean v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    iput v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    :cond_27
    invoke-direct {p0, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    return v5

    :cond_28
    if-ne v0, v5, :cond_29

    iput-boolean v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    iput v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    :cond_29
    return v5

    :cond_2a
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-direct {p0, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    if-lt v0, v3, :cond_2c

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->zoomEnabled:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v0, v1, v3, v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->distance(FFFF)F

    move-result v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scaleStart:F

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vDistStart:F

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v3, p1

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_10

    :cond_2b
    iput v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    :goto_10
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_11

    :cond_2c
    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isQuickScaling:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2d
    :goto_11
    return v5
.end method

.method private preDraw()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private px(I)I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private refreshRequiredTiles(Z)V
    .locals 8

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->calculateInSampleSize(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lt v4, v0, :cond_3

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    if-le v4, v0, :cond_4

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    iget v7, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-eq v4, v7, :cond_4

    :cond_3
    invoke-static {v3, v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v3, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_4
    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v0, :cond_6

    invoke-direct {p0, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileVisible(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3, v7}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    new-instance v4, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    invoke-direct {v4, p0, v5, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TileLoadTask;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)V

    invoke-direct {p0, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_5
    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    iget v7, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-eq v4, v7, :cond_2

    invoke-static {v3, v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v3, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_6
    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I

    move-result v4

    iget v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    if-ne v4, v5, :cond_2

    invoke-static {v3, v7}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z

    goto/16 :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method private requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private reset(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset newImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scaleStart:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isQuickScaling:Z

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vDistStart:F

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleLastDistance:F

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleMoved:Z

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleVLastPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_3

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;->recycle()V

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageEventListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;->onPreviewReleased()V

    :cond_2
    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sOrientation:I

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->readySent:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->imageLoadedSent:Z

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoderLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;

    invoke-static {v3, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$402(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Z)Z

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v3, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$502(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_6
    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V

    return-void
.end method

.method private restoreState(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;->getOrientation()I

    move-result v0

    iput v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->orientation:I

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private sHeight()I
    .locals 2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    return v0

    :cond_1
    :goto_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    return v0
.end method

.method private sWidth()I
    .locals 2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    return v0

    :cond_1
    :goto_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    return v0
.end method

.method private sendStateChanged(FLandroid/graphics/PointF;I)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onStateChangedListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnStateChangedListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_0

    invoke-interface {v0, v1, p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnStateChangedListener;->onScaleChanged(FI)V

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onStateChangedListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnStateChangedListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onStateChangedListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnStateChangedListener;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnStateChangedListener;->onCenterChanged(Landroid/graphics/PointF;I)V

    :cond_1
    return-void
.end method

.method private setGestureDetector(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$2;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->detector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$3;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$3;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->singleDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private setMatrixArray([FFFFFFFFF)V
    .locals 1

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    const/4 p2, 0x2

    aput p4, p1, p2

    const/4 p2, 0x3

    aput p5, p1, p2

    const/4 p2, 0x4

    aput p6, p1, p2

    const/4 p2, 0x5

    aput p7, p1, p2

    const/4 p2, 0x6

    aput p8, p1, p2

    const/4 p2, 0x7

    aput p9, p1, p2

    return-void
.end method

.method public static setPreferredBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->preferredBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v2

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private sourceToViewX(F)F
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    mul-float p1, p1, v1

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v0

    return p1
.end method

.method private sourceToViewY(F)F
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    mul-float p1, p1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v0

    return p1
.end method

.method private tileVisible(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v2

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result v3

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_0

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private vTranslateForSCenter(FFF)Landroid/graphics/PointF;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    if-nez v2, :cond_0

    new-instance v2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    iput-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    :cond_0
    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v2, p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4702(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;F)F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object v2

    int-to-float v0, v0

    mul-float p1, p1, p3

    sub-float/2addr v0, p1

    int-to-float p1, v1

    mul-float p2, p2, p3

    sub-float/2addr p1, p2

    invoke-virtual {v2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(ZLcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->satTemp:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;

    invoke-static {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;->access$4800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private viewToSourceX(F)F
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    div-float/2addr p1, v0

    return p1
.end method

.method private viewToSourceY(F)F
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public animateCenter(Landroid/graphics/PointF;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public animateScale(F)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public animateScaleAndCenter(FLandroid/graphics/PointF;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;

    invoke-direct {v0, p0, p1, p2, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$AnimationBuilder;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;FLandroid/graphics/PointF;Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$1;)V

    return-object v0
.end method

.method public final getAppliedOrientation()I
    .locals 1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    return v0
.end method

.method public final getCenter()Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceCoord(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxScale:F

    return v0
.end method

.method public final getMinScale()F
    .locals 1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale()F

    move-result v0

    return v0
.end method

.method public final getOrientation()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->orientation:I

    return v0
.end method

.method public final getPanRemaining(Landroid/graphics/RectF;)V
    .locals 6

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panLimit:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v4

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sub-float/2addr v1, v2

    :goto_0
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_1
    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_1
    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final getSHeight()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    return v0
.end method

.method public final getSWidth()I
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    return v0
.end method

.method public final getScale()F
    .locals 1

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    return v0
.end method

.method public final getState()Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    if-lez v0, :cond_0

    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getScale()F

    move-result v1

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getOrientation()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isImageLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->imageLoadedSent:Z

    return v0
.end method

.method public final isPanEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panEnabled:Z

    return v0
.end method

.method public final isQuickScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleEnabled:Z

    return v0
.end method

.method public final isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->readySent:Z

    return v0
.end method

.method public final isZoomEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->zoomEnabled:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 32

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->createPaints()V

    iget v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    if-eqz v0, :cond_29

    iget v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->decoder:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getMaxBitmapDimensions(Landroid/graphics/Canvas;)Landroid/graphics/Point;

    move-result-object v0

    invoke-direct {v11, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->initialiseBaseLayer(Landroid/graphics/Point;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->checkReady()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->preDraw()V

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    const/4 v9, 0x0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_9

    iget v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    :cond_3
    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    const/4 v10, 0x0

    :goto_0
    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)I

    move-result v2

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)F

    move-result v5

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)F

    move-result v1

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)F

    move-result v3

    sub-float v6, v1, v3

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v1

    iput v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)I

    move-result v2

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v6, v1, v3

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v17

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)I

    move-result v2

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v6, v1, v3

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)J

    move-result-wide v7

    move-object/from16 v1, p0

    move-wide v3, v15

    invoke-direct/range {v1 .. v8}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->ease(IJFFJ)F

    move-result v1

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-direct {v11, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v4

    sub-float v4, v4, v17

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    if-nez v10, :cond_6

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)F

    move-result v1

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3600(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-direct {v11, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(Z)V

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3900(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)I

    move-result v2

    invoke-direct {v11, v0, v1, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sendStateChanged(FLandroid/graphics/PointF;I)V

    invoke-direct {v11, v10}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    if-eqz v10, :cond_8

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$2800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$2800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string v2, "Error thrown by animation listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_3
    const/4 v0, 0x0

    iput-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_9
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    const/16 v15, 0x10e

    const/16 v10, 0x5a

    const/16 v8, 0xb4

    const/16 v7, 0x23

    const/16 v6, 0xf

    const/4 v5, 0x5

    if-eqz v0, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isBaseLayerReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fullImageSampleSize:I

    iget v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {v11, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->calculateInSampleSize(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v16, 0x0

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_a

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_c
    const/16 v16, 0x1

    goto :goto_4

    :cond_d
    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_f

    if-eqz v16, :cond_e

    :cond_f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_10

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_10
    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_11

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    :cond_11
    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->srcArray:[F

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v9, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, v1

    move-object/from16 v1, p0

    move/from16 v25, v3

    move/from16 v3, v20

    move/from16 v20, v4

    move/from16 v4, v21

    const/4 v14, 0x5

    move v5, v9

    const/16 v9, 0xf

    move/from16 v6, v22

    const/16 v13, 0x23

    move/from16 v7, v20

    const/16 v13, 0xb4

    move/from16 v8, v25

    move/from16 v9, v23

    const/16 v14, 0x5a

    move/from16 v10, v24

    invoke-direct/range {v1 .. v10}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-nez v1, :cond_12

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_6

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-ne v1, v14, :cond_13

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto/16 :goto_6

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-ne v1, v13, :cond_14

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    goto :goto_6

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    if-ne v1, v15, :cond_15

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->dstArray:[F

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v9, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setMatrixArray([FFFFFFFFF)V

    :cond_15
    :goto_6
    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->srcArray:[F

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->dstArray:[F

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x4

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move-object/from16 v29, v3

    invoke-virtual/range {v26 .. v31}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-boolean v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug:Z

    if-eqz v1, :cond_17

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_7

    :cond_16
    const/16 v13, 0xb4

    const/16 v14, 0x5a

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4000(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug:Z

    if-eqz v1, :cond_17

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x5

    invoke-direct {v11, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/16 v3, 0x23

    invoke-direct {v11, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    const-string v4, "LOADING"

    invoke-virtual {v12, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_17
    :goto_7
    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug:Z

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4300(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " RECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4100(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x5

    invoke-direct {v11, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v4

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-static/range {v19 .. v19}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;->access$4200(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Tile;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/16 v4, 0xf

    invoke-direct {v11, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_18
    const/4 v5, 0x5

    const/16 v6, 0xf

    const/16 v7, 0x23

    const/16 v8, 0xb4

    const/16 v10, 0x5a

    goto/16 :goto_5

    :cond_19
    const/16 v4, 0xf

    goto/16 :goto_c

    :cond_1a
    const/16 v4, 0xf

    const/16 v13, 0xb4

    const/16 v14, 0x5a

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_24

    iget v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-boolean v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-eqz v1, :cond_1b

    iget v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    int-to-float v1, v1

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    int-to-float v2, v2

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    goto :goto_8

    :cond_1b
    move v1, v0

    :goto_8
    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_1c

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    :cond_1c
    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v13, :cond_1d

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_9

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v14, :cond_1e

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_9

    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getRequiredRotation()I

    move-result v0

    if-ne v0, v15, :cond_1f

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1f
    :goto_9
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_23

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    if-nez v0, :cond_20

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    :cond_20
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    iget-boolean v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-eqz v1, :cond_21

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_a

    :cond_21
    iget v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    :goto_a
    int-to-float v1, v1

    iget-boolean v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsPreview:Z

    if-eqz v2, :cond_22

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_b

    :cond_22
    iget v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    :goto_b
    int-to-float v2, v2

    invoke-virtual {v0, v9, v9, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRect:Landroid/graphics/RectF;

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_23
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_24
    :goto_c
    iget-boolean v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v5, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string v5, "%.2f"

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v2, [Ljava/lang/Object;

    iget v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {v11, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v3

    int-to-float v2, v3

    invoke-direct {v11, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Translate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {v11, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v4

    int-to-float v2, v4

    const/16 v4, 0x1e

    invoke-direct {v11, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source center: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v1, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v6, [Ljava/lang/Object;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {v11, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v2, 0x2d

    invoke-direct {v11, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    const v1, -0xff0001

    const v2, -0xffff01

    const/16 v3, 0x14

    const/high16 v5, -0x10000

    if-eqz v0, :cond_25

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$4400(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v6, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$4500(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget-object v7, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v7}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$3800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v11, v7}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v7

    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/16 v9, 0xa

    invoke-direct {v11, v9}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v8, v0, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v7, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    const/16 v7, 0x19

    invoke-direct {v11, v7}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v11, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_25
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    if-eqz v0, :cond_26

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v5, v0, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_26
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    if-eqz v0, :cond_27

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-direct {v11, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result v0

    iget-object v2, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleSCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result v2

    const/16 v3, 0x23

    invoke-direct {v11, v3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v2, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_27
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    if-eqz v0, :cond_28

    iget-boolean v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isQuickScaling:Z

    if-eqz v0, :cond_28

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleVStart:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v11, v4}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->px(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_28
    iget-object v0, v11, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_29
    :goto_d
    return-void
.end method

.method public onImageLoaded()V
    .locals 0

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    if-lez v1, :cond_4

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    if-lez v1, :cond_4

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result p2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result p2

    int-to-double v0, p2

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result p2

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double v2, p1

    mul-double v0, v0, v2

    double-to-int p2, v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result p1

    int-to-double v0, p1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double v0, v0, v2

    double-to-int p1, v0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onReady()V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v0, p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "onSizeChanged %dx%d -> %dx%d"

    invoke-direct {p0, p1, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->getCenter()Landroid/graphics/PointF;

    move-result-object p1

    iget-boolean p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->readySent:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    iget p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$2700(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$2800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;->access$2800(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;)Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnAnimationEventListener;->onInterruptedByUser()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->TAG:Ljava/lang/String;

    const-string v3, "Error thrown by animation listener"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->singleDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    return v1

    :cond_3
    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isQuickScaling:Z

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->detector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iput-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isZooming:Z

    iput-boolean v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isPanning:Z

    iput v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTouchCount:I

    return v1

    :cond_5
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateStart:Landroid/graphics/PointF;

    :cond_6
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    :cond_7
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    if-nez v0, :cond_8

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vCenterStart:Landroid/graphics/PointF;

    :cond_8
    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v3

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslateBefore:Landroid/graphics/PointF;

    const/4 v5, 0x2

    invoke-direct {p0, v0, v4, v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sendStateChanged(FLandroid/graphics/PointF;I)V

    if-nez v3, :cond_a

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_1
    return v1
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->reset(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugTextPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debugLinePaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public final resetScaleAndCenter()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->limitedScale(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBitmapDecoderClass(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/CompatDecoderFactory;

    invoke-direct {v0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder class cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setBitmapDecoderFactory(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;)V
    .locals 1
    .param p1    # Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory<",
            "+",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder factory cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->debug:Z

    return-void
.end method

.method public final setDoubleTapZoomDpi(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setDoubleTapZoomScale(F)V

    return-void
.end method

.method public final setDoubleTapZoomDuration(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoomDuration:I

    return-void
.end method

.method public final setDoubleTapZoomScale(F)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoomScale:F

    return-void
.end method

.method public final setDoubleTapZoomStyle(I)V
    .locals 3

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_ZOOM_STYLES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->doubleTapZoomStyle:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEagerLoadingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->eagerLoadingEnabled:Z

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final setImage(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;)V
    .locals 1
    .param p1    # Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setImage(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;)V
    .locals 1
    .param p1    # Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setImage(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;)V

    return-void
.end method

.method public final setImage(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;)V
    .locals 8
    .param p1    # Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "imageSource must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->reset(Z)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->restoreState(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;)V

    :cond_0
    const-string p3, "/"

    const-string v0, "android.resource://"

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSWidth()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSHeight()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSWidth()I

    move-result v1

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSHeight()I

    move-result v1

    iput v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pRegion:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->isCached()Z

    move-result v1

    iput-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapIsCached:Z

    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onPreviewLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_2
    move-object v6, v1

    new-instance p2, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$BitmapLoadTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    const/4 v7, 0x1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$BitmapLoadTask;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;Landroid/net/Uri;Z)V

    invoke-direct {p0, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used unless dimensions are provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Preview image cannot be used when a bitmap is provided for the main image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p2, p3, v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, v1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->isCached()Z

    move-result p1

    invoke-direct {p0, p2, v1, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageLoaded(Landroid/graphics/Bitmap;IZ)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getSRegion()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getResource()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    :cond_8
    invoke-virtual {p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;->getTile()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_9
    new-instance p1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$BitmapLoadTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->bitmapDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    iget-object v4, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$BitmapLoadTask;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;Landroid/net/Uri;Z)V

    goto :goto_2

    :cond_a
    :goto_1
    new-instance p1, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->regionDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->uri:Landroid/net/Uri;

    invoke-direct {p1, p0, p2, p3, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$TilesInitTask;-><init>(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;Landroid/content/Context;Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;Landroid/net/Uri;)V

    :goto_2
    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->execute(Landroid/os/AsyncTask;)V

    :goto_3
    return-void
.end method

.method public final setImage(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;)V
    .locals 1
    .param p1    # Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setImage(Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageSource;Lcn/haorui/sdk/adsail_ad/view/scaleImage/ImageViewState;)V

    return-void
.end method

.method public final setMaxScale(F)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxScale:F

    return-void
.end method

.method public setMaxTileSize(I)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileWidth:I

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileHeight:I

    return-void
.end method

.method public setMaxTileSize(II)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileWidth:I

    iput p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->maxTileHeight:I

    return-void
.end method

.method public final setMaximumDpi(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setMinScale(F)V

    return-void
.end method

.method public final setMinScale(F)V
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minScale:F

    return-void
.end method

.method public final setMinimumDpi(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->setMaxScale(F)V

    return-void
.end method

.method public final setMinimumScaleType(I)V
    .locals 3

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_SCALE_TYPES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minimumScaleType:I

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid scale type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumTileDpi(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    int-to-float p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->minimumTileDpi:I

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->reset(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnImageEventListener(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onImageEventListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnImageEventListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->onStateChangedListener:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$OnStateChangedListener;

    return-void
.end method

.method public final setOrientation(I)V
    .locals 3

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_ORIENTATIONS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->orientation:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->reset(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setPanEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panEnabled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->scale:F

    invoke-direct {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->refreshRequiredTiles(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setPanLimit(I)V
    .locals 3

    sget-object v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->VALID_PAN_LIMITS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->panLimit:I

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fitToBounds(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pan limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setQuickScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->quickScaleEnabled:Z

    return-void
.end method

.method public final setRegionDecoderClass(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/CompatDecoderFactory;

    invoke-direct {v0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/CompatDecoderFactory;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->regionDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder class cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setRegionDecoderFactory(Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;)V
    .locals 1
    .param p1    # Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory<",
            "+",
            "Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/ImageRegionDecoder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->regionDecoderFactory:Lcn/haorui/sdk/adsail_ad/view/scaleImage/decoder/DecoderFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Decoder factory cannot be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setScaleAndCenter(FLandroid/graphics/PointF;)V
    .locals 1
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->anim:Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView$Anim;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->pendingScale:Ljava/lang/Float;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sPendingCenter:Landroid/graphics/PointF;

    iput-object p2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRequestedCenter:Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTileBackgroundColor(I)V
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->tileBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->zoomEnabled:Z

    return-void
.end method

.method public final sourceToViewCoord(FF)Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewY(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final sourceToViewCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sourceToViewCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public viewToFileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->readySent:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result v2

    float-to-int v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p2, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->fileSRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget p1, p2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sWidth:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sHeight:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->sRegion:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final viewToSourceCoord(FF)Landroid/graphics/PointF;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceX(F)F

    move-result p1

    invoke-direct {p0, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceY(F)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p3
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final viewToSourceCoord(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToSourceCoord(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public visibleFileRect(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->vTranslate:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->readySent:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1, p1}, Lcn/haorui/sdk/adsail_ad/view/scaleImage/SubsamplingScaleImageView;->viewToFileRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method
