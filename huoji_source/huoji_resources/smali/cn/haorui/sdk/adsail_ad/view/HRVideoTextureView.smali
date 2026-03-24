.class public Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;
.super Landroid/view/TextureView;
.source ""


# instance fields
.field private TAG:Ljava/lang/String;

.field private anotherSurface:Landroid/view/Surface;

.field private displayMode:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private prepared:Z

.field private surface:Landroid/view/Surface;

.field private surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private useTransform:Z

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->useTransform:Z

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->displayMode:I

    new-instance p1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;-><init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->useTransform:Z

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->displayMode:I

    new-instance p1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;-><init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->useTransform:Z

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->displayMode:I

    new-instance p1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$6;-><init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->init()V

    return-void
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    return p1
.end method

.method public static synthetic access$100(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method public static synthetic access$1000(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;IILandroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->changeViewSize(IILandroid/graphics/Matrix;)V

    return-void
.end method

.method public static synthetic access$1102(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method public static synthetic access$1200(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$1300(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$1302(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->surface:Landroid/view/Surface;

    return-object p1
.end method

.method public static synthetic access$200(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method public static synthetic access$502(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoWidth:I

    return p1
.end method

.method public static synthetic access$602(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;I)I
    .locals 0

    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoHeight:I

    return p1
.end method

.method public static synthetic access$700(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->anotherSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$900(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->useTransform:Z

    return p0
.end method

.method private changeViewSize(IILandroid/graphics/Matrix;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeViewSize "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/haorui/sdk/core/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$7;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$7;-><init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public adjustVideoRadio(FF)Landroid/graphics/Matrix;
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_3

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoHeight:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustVideoRadio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoHeight:I

    int-to-float v1, v1

    div-float v1, p2, v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoWidth:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoHeight:I

    int-to-float v5, v5

    sub-float v5, p2, v5

    div-float/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoWidth:I

    int-to-float v3, v3

    div-float/2addr v3, p1

    iget v5, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->videoHeight:I

    int-to-float v5, v5

    div-float/2addr v5, p2

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget v3, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->displayMode:I

    const/4 v5, 0x2

    if-ne v5, v3, :cond_1

    div-float/2addr p1, v4

    div-float/2addr p2, v4

    invoke-virtual {v2, v0, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    :cond_1
    cmpl-float v3, v0, v1

    div-float/2addr p1, v4

    div-float/2addr p2, v4

    if-ltz v3, :cond_2

    invoke-virtual {v2, v1, v1, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_0
    return-object v2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public changeSurface(Landroid/view/Surface;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->anotherSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    const-string v1, "mSurfaceTexture.release"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public init()V
    .locals 2

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$1;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$1;-><init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$2;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$2;-><init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$3;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$3;-><init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$4;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$4;-><init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;

    invoke-direct {v1, p0}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView$5;-><init>(Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p2

    :goto_0
    iget-boolean p3, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->useTransform:Z

    if-nez p3, :cond_1

    int-to-float p3, p1

    int-to-float p4, p2

    invoke-virtual {p0, p3, p4}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->adjustVideoRadio(FF)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->changeViewSize(IILandroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public resumeSurface()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->anotherSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setDisplayMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->displayMode:I

    :goto_0
    return-void
.end method

.method public setInitMute(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    :cond_0
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :cond_0
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    :cond_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public setUseTransform(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->useTransform:Z

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/haorui/sdk/adsail_ad/view/HRVideoTextureView;->prepared:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
