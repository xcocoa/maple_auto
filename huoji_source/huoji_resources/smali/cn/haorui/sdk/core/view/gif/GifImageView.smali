.class public Lcn/haorui/sdk/core/view/gif/GifImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStart;,
        Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;,
        Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDecoderView"


# instance fields
.field private animating:Z

.field private animationStartCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStart;

.field private animationStopCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;

.field private animationThread:Ljava/lang/Thread;

.field private canClear:Z

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private frameCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;

.field private framesDisplayDuration:J

.field private gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

.field private final handler:Landroid/os/Handler;

.field private renderFrame:Z

.field private shouldClear:Z

.field private tmpBitmap:Landroid/graphics/Bitmap;

.field private final updateResults:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->frameCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationStartCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStart;

    new-instance p1, Lcn/haorui/sdk/core/view/gif/GifImageView$a;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/core/view/gif/GifImageView$a;-><init>(Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    new-instance p1, Lcn/haorui/sdk/core/view/gif/GifImageView$b;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/core/view/gif/GifImageView$b;-><init>(Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->canClear:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->frameCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationStartCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStart;

    new-instance p1, Lcn/haorui/sdk/core/view/gif/GifImageView$a;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/core/view/gif/GifImageView$a;-><init>(Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    new-instance p1, Lcn/haorui/sdk/core/view/gif/GifImageView$b;

    invoke-direct {p1, p0}, Lcn/haorui/sdk/core/view/gif/GifImageView$b;-><init>(Lcn/haorui/sdk/core/view/gif/GifImageView;)V

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->canClear:Z

    return-void
.end method

.method public static synthetic access$000(Lcn/haorui/sdk/core/view/gif/GifImageView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$002(Lcn/haorui/sdk/core/view/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$102(Lcn/haorui/sdk/core/view/gif/GifImageView;Lcn/haorui/sdk/core/view/gif/a;)Lcn/haorui/sdk/core/view/gif/a;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    return-object p1
.end method

.method public static synthetic access$202(Lcn/haorui/sdk/core/view/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    return-object p1
.end method

.method public static synthetic access$302(Lcn/haorui/sdk/core/view/gif/GifImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->shouldClear:Z

    return p1
.end method

.method private canStart()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->renderFrame:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startAnimationThread()V
    .locals 1

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->canStart()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    iput-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->renderFrame:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->shouldClear:Z

    invoke-virtual {p0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->stopAnimation()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getFrameCount()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    return v0
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    iget-wide v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->height:I

    return v0
.end method

.method public getGifWidth()I
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    iget-object v0, v0, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v0, v0, Lcn/haorui/sdk/core/view/gif/GifHeader;->width:I

    return v0
.end method

.method public getOnAnimationStop()Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;

    return-object v0
.end method

.method public getOnFrameAvailable()Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->frameCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    return-object v0
.end method

.method public gotoFrame(I)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    iget v1, v0, Lcn/haorui/sdk/core/view/gif/a;->n:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    if-lt p1, v2, :cond_2

    iget-object v2, v0, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v2, v2, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iput p1, v0, Lcn/haorui/sdk/core/view/gif/a;->n:I

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    if-nez p1, :cond_3

    iput-boolean v1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->renderFrame:Z

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimationThread()V

    :cond_3
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->canClear:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->clear()V

    :cond_0
    return-void
.end method

.method public resetAnimation()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    const/4 v1, 0x0

    iput v1, v0, Lcn/haorui/sdk/core/view/gif/a;->o:I

    invoke-virtual {p0, v1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->gotoFrame(I)V

    return-void
.end method

.method public run()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationStartCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStart;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStart;->onAnimationStart()V

    :cond_0
    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->renderFrame:Z

    if-nez v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    iget-object v1, v0, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v2, v1, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    iget v6, v0, Lcn/haorui/sdk/core/view/gif/a;->n:I

    add-int/lit8 v7, v2, -0x1

    if-ne v6, v7, :cond_3

    iget v7, v0, Lcn/haorui/sdk/core/view/gif/a;->o:I

    add-int/2addr v7, v4

    iput v7, v0, Lcn/haorui/sdk/core/view/gif/a;->o:I

    :cond_3
    iget v1, v1, Lcn/haorui/sdk/core/view/gif/GifHeader;->loopCount:I

    if-eq v1, v3, :cond_4

    iget v7, v0, Lcn/haorui/sdk/core/view/gif/a;->o:I

    if-le v7, v1, :cond_4

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    rem-int/2addr v6, v2

    iput v6, v0, Lcn/haorui/sdk/core/view/gif/a;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    invoke-virtual {v2}, Lcn/haorui/sdk/core/view/gif/a;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->frameCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    if-eqz v8, :cond_5

    invoke-interface {v8, v2}, Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v8, v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_2
    move-wide v8, v0

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_2

    :goto_3
    :try_start_3
    const-string v6, "GifDecoderView"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iput-boolean v5, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->renderFrame:Z

    iget-boolean v2, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_c

    if-nez v4, :cond_6

    goto :goto_8

    :cond_6
    :try_start_4
    iget-object v2, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    iget-object v4, v2, Lcn/haorui/sdk/core/view/gif/a;->p:Lcn/haorui/sdk/core/view/gif/GifHeader;

    iget v6, v4, Lcn/haorui/sdk/core/view/gif/GifHeader;->frameCount:I

    if-lez v6, :cond_8

    iget v2, v2, Lcn/haorui/sdk/core/view/gif/a;->n:I

    if-gez v2, :cond_7

    goto :goto_5

    :cond_7
    if-ltz v2, :cond_9

    if-ge v2, v6, :cond_9

    iget-object v3, v4, Lcn/haorui/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/haorui/sdk/core/view/gif/b;

    iget v3, v2, Lcn/haorui/sdk/core/view/gif/b;->i:I

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v3, 0x0

    :cond_9
    :goto_6
    int-to-long v2, v3

    sub-long/2addr v2, v8

    long-to-int v3, v2

    if-lez v3, :cond_b

    iget-wide v4, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    cmp-long v2, v4, v0

    if-lez v2, :cond_a

    goto :goto_7

    :cond_a
    int-to-long v4, v3

    :goto_7
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_4
    :cond_b
    :try_start_5
    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    if-nez v0, :cond_0

    goto :goto_9

    :cond_c
    :goto_8
    iput-boolean v5, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    :goto_9
    iget-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->shouldClear:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;->onAnimationStop()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_a
    return-void
.end method

.method public setBytes([B)V
    .locals 2

    new-instance v0, Lcn/haorui/sdk/core/view/gif/a;

    new-instance v1, Lcn/haorui/sdk/core/view/gif/c;

    invoke-direct {v1}, Lcn/haorui/sdk/core/view/gif/c;-><init>()V

    invoke-direct {v0, v1}, Lcn/haorui/sdk/core/view/gif/a;-><init>(Lcn/haorui/sdk/core/view/gif/a$a;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {v0, v1, p1}, Lcn/haorui/sdk/core/view/gif/a;->a(I[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimationThread()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->gotoFrame(I)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifDecoderView"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setBytes([BI)V
    .locals 2

    new-instance v0, Lcn/haorui/sdk/core/view/gif/a;

    new-instance v1, Lcn/haorui/sdk/core/view/gif/c;

    invoke-direct {v1}, Lcn/haorui/sdk/core/view/gif/c;-><init>()V

    invoke-direct {v0, v1}, Lcn/haorui/sdk/core/view/gif/a;-><init>(Lcn/haorui/sdk/core/view/gif/a$a;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    :try_start_0
    invoke-virtual {v0, p2, p1}, Lcn/haorui/sdk/core/view/gif/a;->a(I[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimationThread()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcn/haorui/sdk/core/view/gif/GifImageView;->gotoFrame(I)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    iput-object p2, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->gifDecoder:Lcn/haorui/sdk/core/view/gif/a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GifDecoderView"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setCanClear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->canClear:Z

    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->framesDisplayDuration:J

    return-void
.end method

.method public setOnAnimationStart(Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStart;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationStartCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStart;

    return-void
.end method

.method public setOnAnimationStop(Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationStopCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnAnimationStop;

    return-void
.end method

.method public setOnFrameAvailable(Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->frameCallback:Lcn/haorui/sdk/core/view/gif/GifImageView$OnFrameAvailable;

    return-void
.end method

.method public startAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    invoke-direct {p0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->startAnimationThread()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animating:Z

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method
