.class public abstract Lcom/anythink/basead/ui/BaseBannerATView;
.super Lcom/anythink/basead/ui/BaseATView;
.source ""


# instance fields
.field public final TAG:Ljava/lang/String;

.field public v:Lcom/anythink/basead/e/a;

.field public w:Lcom/anythink/basead/ui/CloseImageView;

.field public x:Landroid/view/View;

.field private y:Lcom/anythink/basead/ui/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseATView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseBannerATView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/BaseATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseBannerATView;->TAG:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/basead/ui/BaseBannerATView;->v:Lcom/anythink/basead/e/a;

    if-eqz p2, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/anythink/core/common/f/l;->P()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->am()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/anythink/basead/ui/d/b;

    invoke-direct {p1}, Lcom/anythink/basead/ui/d/b;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseBannerATView;->y:Lcom/anythink/basead/ui/d/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/d/b;->a(Z)Lcom/anythink/basead/ui/d/b;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/ui/BaseBannerATView$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/BaseBannerATView$1;-><init>(Lcom/anythink/basead/ui/BaseBannerATView;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/d/b;->a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/b;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseBannerATView;->y:Lcom/anythink/basead/ui/d/b;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/d/b;->a(Z)Lcom/anythink/basead/ui/d/b;

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/BaseBannerATView;)V
    .locals 0

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseATView;->h()V

    return-void
.end method

.method private a(Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->P()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/n;->am()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/anythink/basead/ui/d/b;

    invoke-direct {p1}, Lcom/anythink/basead/ui/d/b;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/BaseBannerATView;->y:Lcom/anythink/basead/ui/d/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/d/b;->a(Z)Lcom/anythink/basead/ui/d/b;

    move-result-object p1

    new-instance p2, Lcom/anythink/basead/ui/BaseBannerATView$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/ui/BaseBannerATView$1;-><init>(Lcom/anythink/basead/ui/BaseBannerATView;)V

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/d/b;->a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/b;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseBannerATView;->y:Lcom/anythink/basead/ui/d/b;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/d/b;->a(Z)Lcom/anythink/basead/ui/d/b;

    :cond_2
    :goto_0
    return-void
.end method

.method private o()Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseBannerATView;->x:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_guide2click_container"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/BaseBannerATView;->x:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseBannerATView;->x:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseATView;->a(II)V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    iget-object p2, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/n;->m()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/anythink/basead/ui/BaseATView;->a(Lcom/anythink/basead/ui/a;I)F

    return-void
.end method

.method public final a(Lcom/anythink/basead/e/i;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseBannerATView;->v:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onAdClick(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseBannerATView;->v:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/basead/e/a;->onDeeplinkCallback(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->V()I

    move-result v0

    if-gez v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->V()I

    move-result v0

    :goto_0
    new-instance v1, Lcom/anythink/basead/ui/BaseBannerATView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseBannerATView$2;-><init>(Lcom/anythink/basead/ui/BaseBannerATView;)V

    invoke-virtual {p0, v0, v1}, Lcom/anythink/basead/ui/BaseATView;->a(ILjava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseBannerATView;->w:Lcom/anythink/basead/ui/CloseImageView;

    new-instance v1, Lcom/anythink/basead/ui/BaseBannerATView$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/BaseBannerATView$3;-><init>(Lcom/anythink/basead/ui/BaseBannerATView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseBannerATView;->v:Lcom/anythink/basead/e/a;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/basead/e/i;

    invoke-direct {v1}, Lcom/anythink/basead/e/i;-><init>()V

    invoke-interface {v0, v1}, Lcom/anythink/basead/e/a;->onAdShow(Lcom/anythink/basead/e/i;)V

    :cond_0
    return-void
.end method

.method public final m()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v1
.end method

.method public final n()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/anythink/basead/ui/BaseBannerATView;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseBannerATView;->y:Lcom/anythink/basead/ui/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/anythink/basead/ui/d/b;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/anythink/basead/ui/BaseBannerATView;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseBannerATView;->y:Lcom/anythink/basead/ui/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/basead/ui/d/b;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onVisibilityAggregated(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x6e

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    return-void

    :cond_0
    const/16 p1, 0x6f

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    :cond_1
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    if-nez p2, :cond_0

    const/16 p1, 0x6e

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    return-void

    :cond_0
    const/16 p1, 0x6f

    invoke-virtual {p0, p1}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    :cond_1
    return-void
.end method
