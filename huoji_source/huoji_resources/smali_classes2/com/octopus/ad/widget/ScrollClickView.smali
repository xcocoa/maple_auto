.class public Lcom/octopus/ad/widget/ScrollClickView;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final DIR_DOWN:Ljava/lang/String; = "down"

.field public static final DIR_LEFT:Ljava/lang/String; = "left"

.field public static final DIR_RIGHT:Ljava/lang/String; = "right"

.field public static final DIR_UP:Ljava/lang/String; = "up"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Landroid/animation/ValueAnimator;

.field private n:Landroid/content/Context;

.field private o:Landroid/widget/FrameLayout;

.field private p:Landroid/widget/FrameLayout;

.field private q:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->e:Z

    const-string v0, "up"

    iput-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    const/16 v0, 0x2d

    iput v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->k:I

    const/16 v0, 0xb4

    iput v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/ScrollClickView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->e:Z

    const-string p2, "up"

    iput-object p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    const/16 p2, 0x2d

    iput p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->k:I

    const/16 p2, 0xb4

    iput p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->l:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/ScrollClickView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->e:Z

    const-string p2, "up"

    iput-object p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    const/16 p2, 0x2d

    iput p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->k:I

    const/16 p2, 0xb4

    iput p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->l:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/ScrollClickView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/widget/ScrollClickView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->m:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/widget/ScrollClickView;->o:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/octopus/ad/widget/ScrollClickView$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/widget/ScrollClickView$1;-><init>(Lcom/octopus/ad/widget/ScrollClickView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/widget/ScrollClickView;->p:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/octopus/ad/widget/ScrollClickView$2;

    invoke-direct {v1, p0}, Lcom/octopus/ad/widget/ScrollClickView$2;-><init>(Lcom/octopus/ad/widget/ScrollClickView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/widget/ScrollClickView;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/widget/ScrollClickView;->l:I

    return p0
.end method

.method public static synthetic d(Lcom/octopus/ad/widget/ScrollClickView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/widget/ScrollClickView;->m:Landroid/animation/ValueAnimator;

    return-object p0
.end method


# virtual methods
.method public buildRealView()V
    .locals 5

    const-string v0, "down"

    const-string v1, "up"

    :try_start_0
    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->n:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/octopus/ad/R$layout;->oct_layout_scrollview_up:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    :goto_0
    iput-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->n:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/octopus/ad/R$layout;->oct_layout_scrollview_down:I

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/octopus/ad/R$layout;->oct_layout_scrollview_up:I

    :goto_1
    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/octopus/ad/R$layout;->oct_layout_scrollview_down:I

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    if-nez v2, :cond_3

    return-void

    :cond_3
    sget v3, Lcom/octopus/ad/R$id;->hand:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    sget v3, Lcom/octopus/ad/R$id;->scrollbar:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    sget v3, Lcom/octopus/ad/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    sget v3, Lcom/octopus/ad/R$id;->details:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    sget v3, Lcom/octopus/ad/R$id;->scroll_container:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->o:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->q:Landroid/widget/LinearLayout;

    sget v3, Lcom/octopus/ad/R$id;->scrollbar_container:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->p:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->n:Landroid/content/Context;

    iget v3, p0, Lcom/octopus/ad/widget/ScrollClickView;->k:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->k:I

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->n:Landroid/content/Context;

    iget v3, p0, Lcom/octopus/ad/widget/ScrollClickView;->l:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget v3, p0, Lcom/octopus/ad/widget/ScrollClickView;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->l:I

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->c:Landroid/widget/TextView;

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/octopus/ad/widget/ScrollClickView;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->c:Landroid/widget/TextView;

    iget v4, p0, Lcom/octopus/ad/widget/ScrollClickView;->h:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/octopus/ad/widget/ScrollClickView;->g:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->d:Landroid/widget/TextView;

    iget v4, p0, Lcom/octopus/ad/widget/ScrollClickView;->i:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/octopus/ad/widget/ScrollClickView;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/octopus/ad/widget/ScrollClickView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v2, :cond_6

    iget v4, p0, Lcom/octopus/ad/widget/ScrollClickView;->k:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v3, :cond_6

    iget v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->l:I

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v4

    const v4, 0x3f0ccccd    # 0.55f

    mul-float v2, v2, v4

    float-to-int v2, v2

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_6
    iget-object v2, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/octopus/ad/widget/ScrollClickView;->b()V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/octopus/ad/widget/ScrollClickView;->a()V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    :cond_a
    :goto_3
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->n:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->e:Z

    return-void
.end method

.method public setDetailText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->g:Ljava/lang/String;

    return-void
.end method

.method public setDetailsFont(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->i:I

    return-void
.end method

.method public setHandWidth(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->k:I

    return-void
.end method

.method public setScrollDirection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->j:Ljava/lang/String;

    return-void
.end method

.method public setScrollbarHeight(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->l:I

    return-void
.end method

.method public setTitleFont(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->h:I

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/widget/ScrollClickView;->f:Ljava/lang/String;

    return-void
.end method

.method public startAnim()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAnim animator != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/widget/ScrollClickView;->m:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollClickUtil"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->m:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->m:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/octopus/ad/widget/ScrollClickView;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
