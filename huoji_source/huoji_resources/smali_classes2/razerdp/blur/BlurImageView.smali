.class public Lrazerdp/blur/BlurImageView;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrazerdp/blur/BlurImageView$OooOOO0;,
        Lrazerdp/blur/BlurImageView$OooOOO;
    }
.end annotation


# static fields
.field private static final Oooooo:Ljava/lang/String; = "BlurImageView"


# instance fields
.field private volatile OoooOoO:Z

.field private OoooOoo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lz2/gf0;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo00:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile Ooooo0o:Z

.field private OooooO0:J

.field private OooooOO:Lrazerdp/blur/BlurImageView$OooOOO0;

.field private OooooOo:Lrazerdp/blur/BlurImageView$OooOOO0;

.field private Oooooo0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrazerdp/blur/BlurImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrazerdp/blur/BlurImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lrazerdp/blur/BlurImageView;->OoooOoO:Z

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lrazerdp/blur/BlurImageView;->Ooooo00:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p1, p0, Lrazerdp/blur/BlurImageView;->Ooooo0o:Z

    iput-boolean p1, p0, Lrazerdp/blur/BlurImageView;->Oooooo0:Z

    invoke-direct {p0}, Lrazerdp/blur/BlurImageView;->OooOO0O()V

    return-void
.end method

.method public static synthetic OooO00o(Lrazerdp/blur/BlurImageView;)J
    .locals 2

    iget-wide v0, p0, Lrazerdp/blur/BlurImageView;->OooooO0:J

    return-wide v0
.end method

.method public static synthetic OooO0O0(Lrazerdp/blur/BlurImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lrazerdp/blur/BlurImageView;->Ooooo0o:Z

    return p1
.end method

.method public static synthetic OooO0OO(Lrazerdp/blur/BlurImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrazerdp/blur/BlurImageView;->OooOO0(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static synthetic OooO0Oo(Lrazerdp/blur/BlurImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lrazerdp/blur/BlurImageView;->OoooOoO:Z

    return p0
.end method

.method public static synthetic OooO0o0(Lrazerdp/blur/BlurImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrazerdp/blur/BlurImageView;->OooOOO0(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private OooO0oO(Lz2/gf0;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrazerdp/blur/BlurImageView;->OoooOoo:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lz2/gf0;->OooO0o0()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "BlurImageView"

    if-nez v0, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "\u6a21\u7cca\u951a\u70b9View\u4e3a\u7a7a\uff0c\u653e\u5f03\u6a21\u7cca\u64cd\u4f5c..."

    aput-object p2, p1, v1

    invoke-static {v3, p1}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView;->OooO0oo()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lz2/gf0;->OooO0oO()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "\u5b50\u7ebf\u7a0bblur"

    aput-object p2, p1, v1

    invoke-static {v3, p1}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrazerdp/blur/BlurImageView;->OooOOo0(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    :try_start_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "\u4e3b\u7ebf\u7a0bblur"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lz2/ef0;->OooOO0()Z

    move-result v4

    if-nez v4, :cond_3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "\u4e0d\u652f\u6301\u811a\u672c\u6a21\u7cca\u3002\u3002\u3002\u6700\u4f4e\u652f\u6301api 17(Android 4.2.2)\uff0c\u5c06\u91c7\u7528fastblur"

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lz2/gf0;->OooO0OO()F

    move-result v5

    invoke-virtual {p1}, Lz2/gf0;->OooO0Oo()F

    move-result v6

    invoke-virtual {p1}, Lz2/gf0;->OooO0oo()Z

    move-result p1

    invoke-static {v4, v0, v5, v6, p1}, Lz2/ef0;->OooO0Oo(Landroid/content/Context;Landroid/view/View;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lrazerdp/blur/BlurImageView;->OooOOO0(Landroid/graphics/Bitmap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "\u6a21\u7cca\u5f02\u5e38"

    aput-object v0, p2, v1

    aput-object p1, p2, v2

    invoke-static {v3, p2}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView;->OooO0oo()V

    :goto_0
    return-void
.end method

.method private OooOO0(Landroid/graphics/Bitmap;Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bitmap: \u3010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrazerdp/util/log/PopupLog;->OooO0oo(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/16 p2, 0xff

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lz2/gf0;->OooO0oo()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lz2/gf0;->OooO0o0()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object p1, p0, Lrazerdp/blur/BlurImageView;->Ooooo00:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    new-array p1, p2, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u7f6e\u6210\u529f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lrazerdp/blur/BlurImageView;->Ooooo00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v1, "BlurImageView"

    invoke-static {v1, p1}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lrazerdp/blur/BlurImageView;->OooooOO:Lrazerdp/blur/BlurImageView$OooOOO0;

    if-eqz p1, :cond_4

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "\u6062\u590d\u7f13\u5b58\u52a8\u753b"

    aput-object p2, p1, v0

    invoke-static {v1, p1}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lrazerdp/blur/BlurImageView;->OooooOO:Lrazerdp/blur/BlurImageView$OooOOO0;

    invoke-virtual {p1}, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0o0()V

    :cond_4
    iget-object p1, p0, Lrazerdp/blur/BlurImageView;->OooooOo:Lrazerdp/blur/BlurImageView$OooOOO0;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o()V

    const/4 p1, 0x0

    iput-object p1, p0, Lrazerdp/blur/BlurImageView;->OooooOo:Lrazerdp/blur/BlurImageView$OooOOO0;

    :cond_5
    return-void
.end method

.method private OooOO0O()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private OooOO0o()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private OooOOO0(Landroid/graphics/Bitmap;Z)V
    .locals 2

    invoke-direct {p0}, Lrazerdp/blur/BlurImageView;->OooOO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lrazerdp/blur/BlurImageView;->OooOO0(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lrazerdp/blur/BlurImageView;->Oooooo0:Z

    if-nez v0, :cond_1

    new-instance v0, Lrazerdp/blur/BlurImageView$OooOOO0;

    new-instance v1, Lrazerdp/blur/BlurImageView$OooOO0;

    invoke-direct {v1, p0, p1, p2}, Lrazerdp/blur/BlurImageView$OooOO0;-><init>(Lrazerdp/blur/BlurImageView;Landroid/graphics/Bitmap;Z)V

    const-wide/16 p1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lrazerdp/blur/BlurImageView$OooOOO0;-><init>(Lrazerdp/blur/BlurImageView;Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lrazerdp/blur/BlurImageView;->OooooOo:Lrazerdp/blur/BlurImageView$OooOOO0;

    goto :goto_0

    :cond_1
    new-instance v0, Lrazerdp/blur/BlurImageView$OooOO0O;

    invoke-direct {v0, p0, p1, p2}, Lrazerdp/blur/BlurImageView$OooOO0O;-><init>(Lrazerdp/blur/BlurImageView;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private OooOOOO(J)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lrazerdp/blur/BlurImageView$OooO0O0;

    invoke-direct {p1, p0}, Lrazerdp/blur/BlurImageView$OooO0O0;-><init>(Lrazerdp/blur/BlurImageView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lrazerdp/blur/BlurImageView$OooO0OO;

    invoke-direct {p1, p0}, Lrazerdp/blur/BlurImageView$OooO0OO;-><init>(Lrazerdp/blur/BlurImageView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private OooOOOo(J)V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lrazerdp/blur/BlurImageView$OooO0o;

    invoke-direct {p1, p0}, Lrazerdp/blur/BlurImageView$OooO0o;-><init>(Lrazerdp/blur/BlurImageView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lrazerdp/blur/BlurImageView$OooO;

    invoke-direct {p1, p0}, Lrazerdp/blur/BlurImageView$OooO;-><init>(Lrazerdp/blur/BlurImageView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private OooOOo0(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lrazerdp/blur/BlurImageView$OooOOO;

    invoke-direct {v0, p0, p1}, Lrazerdp/blur/BlurImageView$OooOOO;-><init>(Lrazerdp/blur/BlurImageView;Landroid/view/View;)V

    invoke-static {v0}, Lz2/hf0;->OooO00o(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public OooO(J)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrazerdp/blur/BlurImageView;->Ooooo0o:Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "dismiss\u6a21\u7ccaimageview alpha\u52a8\u753b"

    aput-object v2, v1, v0

    const-string v2, "BlurImageView"

    invoke-static {v2, v1}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2}, Lrazerdp/blur/BlurImageView;->OooOOOo(J)V

    goto :goto_1

    :cond_0
    const-wide/16 v1, -0x2

    cmp-long v3, p1, v1

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object p1

    if-nez p1, :cond_1

    const-wide/16 p1, 0x1f4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object p1

    invoke-virtual {p1}, Lz2/gf0;->OooO0O0()J

    move-result-wide p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_1
    return-void
.end method

.method public OooO0o(Lz2/gf0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrazerdp/blur/BlurImageView;->OooO0oO(Lz2/gf0;Z)V

    return-void
.end method

.method public OooO0oo()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lrazerdp/blur/BlurImageView;->OoooOoO:Z

    iget-object v1, p0, Lrazerdp/blur/BlurImageView;->OoooOoo:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    iput-object v0, p0, Lrazerdp/blur/BlurImageView;->OoooOoo:Ljava/lang/ref/WeakReference;

    :cond_0
    iget-object v1, p0, Lrazerdp/blur/BlurImageView;->OooooOO:Lrazerdp/blur/BlurImageView$OooOOO0;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o()V

    iput-object v0, p0, Lrazerdp/blur/BlurImageView;->OooooOO:Lrazerdp/blur/BlurImageView$OooOOO0;

    :cond_1
    iget-object v0, p0, Lrazerdp/blur/BlurImageView;->Ooooo00:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean v1, p0, Lrazerdp/blur/BlurImageView;->Ooooo0o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lrazerdp/blur/BlurImageView;->OooooO0:J

    return-void
.end method

.method public OooOOO(J)V
    .locals 7

    iput-wide p1, p0, Lrazerdp/blur/BlurImageView;->OooooO0:J

    iget-object v0, p0, Lrazerdp/blur/BlurImageView;->Ooooo00:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BlurImageView"

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    iget-object p1, p0, Lrazerdp/blur/BlurImageView;->OooooOO:Lrazerdp/blur/BlurImageView$OooOOO0;

    if-nez p1, :cond_0

    new-instance p1, Lrazerdp/blur/BlurImageView$OooOOO0;

    new-instance p2, Lrazerdp/blur/BlurImageView$OooO00o;

    invoke-direct {p2, p0}, Lrazerdp/blur/BlurImageView$OooO00o;-><init>(Lrazerdp/blur/BlurImageView;)V

    invoke-direct {p1, p0, p2, v3, v4}, Lrazerdp/blur/BlurImageView$OooOOO0;-><init>(Lrazerdp/blur/BlurImageView;Ljava/lang/Runnable;J)V

    iput-object p1, p0, Lrazerdp/blur/BlurImageView;->OooooOO:Lrazerdp/blur/BlurImageView$OooOOO0;

    new-array p1, v5, [Ljava/lang/Object;

    const-string p2, "\u7f13\u5b58\u6a21\u7cca\u52a8\u753b\uff0c\u7b49\u5f85\u6a21\u7cca\u5b8c\u6210"

    aput-object p2, p1, v1

    invoke-static {v2, p1}, Lrazerdp/util/log/PopupLog;->OooO0OO(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lrazerdp/blur/BlurImageView;->OooooOO:Lrazerdp/blur/BlurImageView$OooOOO0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO00o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lrazerdp/blur/BlurImageView;->OooooOO:Lrazerdp/blur/BlurImageView$OooOOO0;

    :cond_2
    iget-boolean v0, p0, Lrazerdp/blur/BlurImageView;->Ooooo0o:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-array v0, v5, [Ljava/lang/Object;

    const-string v6, "\u5f00\u59cb\u6a21\u7ccaalpha\u52a8\u753b"

    aput-object v6, v0, v1

    invoke-static {v2, v0}, Lrazerdp/util/log/PopupLog;->OooO(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v5, p0, Lrazerdp/blur/BlurImageView;->Ooooo0o:Z

    cmp-long v0, p1, v3

    if-lez v0, :cond_4

    :goto_0
    invoke-direct {p0, p1, p2}, Lrazerdp/blur/BlurImageView;->OooOOOO(J)V

    goto :goto_1

    :cond_4
    const-wide/16 v0, -0x2

    cmp-long v2, p1, v0

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object p1

    if-nez p1, :cond_5

    const-wide/16 p1, 0x1f4

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object p1

    invoke-virtual {p1}, Lz2/gf0;->OooO00o()J

    move-result-wide p1

    goto :goto_0

    :cond_6
    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_1
    return-void
.end method

.method public OooOOo()V
    .locals 2

    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrazerdp/blur/BlurImageView;->getOption()Lz2/gf0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lrazerdp/blur/BlurImageView;->OooO0oO(Lz2/gf0;Z)V

    :cond_0
    return-void
.end method

.method public getOption()Lz2/gf0;
    .locals 1

    iget-object v0, p0, Lrazerdp/blur/BlurImageView;->OoooOoo:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/gf0;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrazerdp/blur/BlurImageView;->Oooooo0:Z

    iget-object v0, p0, Lrazerdp/blur/BlurImageView;->OooooOo:Lrazerdp/blur/BlurImageView$OooOOO0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrazerdp/blur/BlurImageView$OooOOO0;->OooO0O0()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrazerdp/blur/BlurImageView;->OoooOoO:Z

    return-void
.end method
