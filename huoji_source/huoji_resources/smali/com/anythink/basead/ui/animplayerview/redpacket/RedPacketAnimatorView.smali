.class public Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/anythink/basead/ui/animplayerview/b;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

.field private d:Landroid/animation/ObjectAnimator;

.field private e:Landroid/graphics/Bitmap;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xfa0

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->a:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->f:Z

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->g:Z

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->i:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    new-instance p1, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->i:Landroid/os/Handler;

    return-object p0
.end method

.method private static a()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->h:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;->initRedPacketList(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->h:I

    neg-int v5, v4

    int-to-float v5, v5

    aput v5, v3, v2

    int-to-float v4, v4

    aput v4, v3, v1

    const-string v4, "translationY"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView$1;

    invoke-direct {v3, p0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    iput-boolean v1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->f:Z

    iput-boolean v2, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->g:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->b()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->h:I

    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->pause()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->stop()V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->stop()V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;->release()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->g:Z

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->resume()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->b()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->b()V

    :cond_2
    return-void
.end method

.method public setBitmapResources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->e:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    iget-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->resume()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->c:Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->h:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v1, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->d:Landroid/animation/ObjectAnimator;

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/redpacket/RedPacketAnimatorView;->f:Z

    return-void
.end method
