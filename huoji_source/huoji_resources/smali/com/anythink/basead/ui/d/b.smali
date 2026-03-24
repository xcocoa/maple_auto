.class public final Lcom/anythink/basead/ui/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "TouchEventClickTrigger"

.field private static final b:I = -0x1

.field private static final c:I = 0xa


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/anythink/basead/ui/c/a;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/anythink/basead/ui/d/b;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/d/b;->h:Lcom/anythink/basead/ui/c/a;

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    invoke-interface {v0, p1, v1}, Lcom/anythink/basead/ui/c/a;->a(II)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/basead/ui/d/b;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/d/b$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/d/b$1;-><init>(Lcom/anythink/basead/ui/d/b;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/d/b;)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/d/b;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/b;
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/d/b;->h:Lcom/anythink/basead/ui/c/a;

    return-object p0
.end method

.method public final a(Z)Lcom/anythink/basead/ui/d/b;
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/d/b;->i:Z

    return-object p0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/d/b;->d:I

    if-eq v0, v3, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/anythink/basead/ui/d/b;->e:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/anythink/basead/ui/d/b;->f:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onInterceptTouchEvent() >>> ACTION_MOVE: xDiff = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " yDiff = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    if-le p1, v1, :cond_6

    :cond_2
    iput-boolean v2, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/anythink/basead/ui/d/b;->a(I)V

    :cond_4
    iget v0, p0, Lcom/anythink/basead/ui/d/b;->d:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/anythink/basead/ui/d/b;->f:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/anythink/basead/ui/d/b;->e:I

    iput-boolean v1, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    iput v3, p0, Lcom/anythink/basead/ui/d/b;->d:I

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/d/b;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/d/b;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onInterceptTouchEvent() >>> ACTION_DOWN: mLastMotionX = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/anythink/basead/ui/d/b;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLastMotionY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/anythink/basead/ui/d/b;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/d/b;->d:I

    iput-boolean v1, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    return p1
.end method

.method public final a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/d/b;->d:I

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid pointerId="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/anythink/basead/ui/d/b;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in onTouchEvent"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    iget v0, p0, Lcom/anythink/basead/ui/d/b;->f:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/anythink/basead/ui/d/b;->e:I

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onTouchEvent() >>> ACTION_MOVE: xDiff = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " yDiff = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    if-gt p2, v1, :cond_2

    if-le v0, v1, :cond_6

    :cond_2
    iput-boolean v2, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTouchEvent() >>> ACTION_UP mIsBeingDragged = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    if-eqz p1, :cond_4

    const/16 p1, 0xd

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/d/b;->a(I)V

    :cond_4
    iget p1, p0, Lcom/anythink/basead/ui/d/b;->d:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/anythink/basead/ui/d/b;->f:I

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/anythink/basead/ui/d/b;->e:I

    iput-boolean v1, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    iput v3, p0, Lcom/anythink/basead/ui/d/b;->d:I

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/anythink/basead/ui/d/b;->e:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/anythink/basead/ui/d/b;->f:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/ui/d/b;->d:I

    iput-boolean v1, p0, Lcom/anythink/basead/ui/d/b;->g:Z

    :cond_6
    :goto_0
    return v2
.end method
