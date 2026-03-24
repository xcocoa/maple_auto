.class public Lcom/anythink/basead/ui/FullScreenATView;
.super Lcom/anythink/basead/ui/BaseScreenATView;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private ad:Lcom/anythink/basead/ui/CountDownCloseView;

.field private ae:Lcom/anythink/basead/ui/CloseHeaderView;

.field private af:Lcom/anythink/basead/ui/PanelView;

.field private ag:Lcom/anythink/basead/ui/d/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/anythink/basead/ui/FullScreenATView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/basead/ui/FullScreenATView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/anythink/basead/ui/BaseScreenATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Ljava/lang/String;II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "myoffer_full_screen_view_id"

    const-string p5, "id"

    invoke-static {p1, p4, p5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setId(I)V

    if-eqz p2, :cond_0

    new-instance p1, Lcom/anythink/basead/ui/d/a;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-direct {p1, p3, p2}, Lcom/anythink/basead/ui/d/a;-><init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V

    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    :cond_0
    return-void
.end method

.method private R()V
    .locals 8

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_1
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenATView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->O()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x5

    if-eq v3, v5, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_4

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->D()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getShakeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    int-to-float v5, v3

    mul-float v5, v5, v4

    float-to-int v4, v5

    sub-int/2addr v3, v4

    iget-object v5, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    :goto_1
    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43960000    # 300.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iget v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_0

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    sub-int/2addr v4, v3

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v4, v6

    :goto_3
    iget-object v6, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v1, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setNeedArc(Z)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method private S()V
    .locals 7

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_reward_icon"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {p0, v3}, Lcom/anythink/basead/ui/FullScreenATView;->b(I)Z

    move-result v3

    const/4 v4, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    if-eq v3, v4, :cond_0

    const/4 v6, 0x6

    if-eq v3, v6, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43a50000    # 330.0f

    invoke-static {v5, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41b00000    # 22.0f

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    :goto_1
    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v2, 0x1

    :catchall_0
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method private T()Z
    .locals 3

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private U()Z
    .locals 3

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    if-eq v0, v1, :cond_0

    const/16 v2, 0x65

    if-ne v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private V()Z
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/FullScreenATView;)V
    .locals 0

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->P()V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/FullScreenATView;)Lcom/anythink/basead/ui/PanelView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 3

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->A()V

    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getCloseImageView()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getCloseImageView()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final B()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->as()I

    move-result v0

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->C()V

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    :cond_3
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->q()V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    return-void

    :cond_6
    iget-boolean v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    if-nez v1, :cond_c

    if-eq v0, v4, :cond_a

    if-ne v0, v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->k()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->getVideoLength()J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    cmpl-double v2, v0, v5

    if-lez v2, :cond_8

    move-wide v0, v5

    :cond_8
    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/anythink/basead/ui/FullScreenATView$3;

    invoke-direct {v2, p0}, Lcom/anythink/basead/ui/FullScreenATView$3;-><init>(Lcom/anythink/basead/ui/FullScreenATView;)V

    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->T()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    :goto_1
    invoke-static {v1, v0, v2, v3}, Lcom/anythink/basead/ui/RewardExitConfirmDialogActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;I)V

    return-void

    :cond_a
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_reward_exit_tips_msg"

    const-string v5, "string"

    invoke-static {v2, v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->C()V

    invoke-virtual {p0, v4}, Lcom/anythink/basead/ui/BaseScreenATView;->c(I)V

    return-void

    :cond_c
    if-eq v0, v4, :cond_b

    if-ne v0, v2, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->C()V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v4, p0, Lcom/anythink/basead/ui/BaseATView;->r:Z

    :cond_e
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->q()V

    return-void
.end method

.method public final D()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->D()V

    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->H()V

    :cond_0
    return-void
.end method

.method public final E()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->E()V

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->S:Lcom/anythink/basead/ui/MuteImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->F()V

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/d/a;->a()V

    :cond_0
    return-void
.end method

.method public final G()V
    .locals 1

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->G()V

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/d/a;->b()V

    :cond_0
    return-void
.end method

.method public J()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {p0, v0}, Lcom/anythink/basead/ui/FullScreenATView;->b(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->O()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->D()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getShakeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_1
    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    int-to-float v5, v3

    mul-float v5, v5, v4

    float-to-int v4, v5

    sub-int/2addr v3, v4

    iget-object v5, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_5

    :goto_0
    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43960000    # 300.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iget v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    sub-int/2addr v4, v3

    iget-object v5, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_5

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    sub-int/2addr v4, v3

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42480000    # 50.0f

    invoke-static {v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v4, v6

    :goto_2
    iget-object v6, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v1, v5}, Lcom/anythink/basead/ui/BaseEndCardView;->setNeedArc(Z)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->Q()V

    :cond_7
    return-void
.end method

.method public K()V
    .locals 7

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->K()V

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->H:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anythink/core/common/ui/component/RoundImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "myoffer_reward_icon"

    const-string v4, "drawable"

    invoke-static {v2, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42700000    # 60.0f

    invoke-static {v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {p0, v3}, Lcom/anythink/basead/ui/FullScreenATView;->b(I)Z

    move-result v3

    const/4 v4, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    if-eq v3, v4, :cond_0

    const/4 v6, 0x6

    if-eq v3, v6, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x43a50000    # 330.0f

    invoke-static {v5, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41b00000    # 22.0f

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    :goto_1
    invoke-static {v3, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v2, 0x1

    :catchall_0
    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final L()Lcom/anythink/basead/ui/CloseImageView;
    .locals 2

    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getCloseImageView()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getCloseImageView()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->L()Lcom/anythink/basead/ui/CloseImageView;

    move-result-object v0

    return-object v0
.end method

.method public final N()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getFeedbackButton()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/CloseHeaderView;->getFeedbackButton()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->N()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public final O()Lcom/anythink/basead/ui/PanelView;
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    invoke-static {v0, v1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->O()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    return-object v0
.end method

.method public final P()V
    .locals 5

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    new-instance v0, Lcom/anythink/basead/ui/FullScreenATView$4;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/FullScreenATView$4;-><init>(Lcom/anythink/basead/ui/FullScreenATView;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    :cond_2
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->P()V

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final Q()V
    .locals 3

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->b(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->K:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->N:Lcom/anythink/basead/ui/BaseEndCardView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/basead/ui/FullScreenATView;->O()Lcom/anythink/basead/ui/PanelView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "myoffer_full_screen"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public final a(J)V
    .locals 3

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    if-eq v0, v1, :cond_1

    const/16 v2, 0x65

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->a(J)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->G:Z

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    check-cast v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->openInternalWebView(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p2, 0x69

    invoke-virtual {p0, p2}, Lcom/anythink/basead/ui/BaseATView;->a(I)V

    iget-object p2, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/anythink/basead/ui/d/a;->a()V

    :cond_0
    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseATView;->a(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 3

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->b()V

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ag:Lcom/anythink/basead/ui/d/a;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v1, -0x65

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    :goto_0
    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(I)Lcom/anythink/basead/ui/d/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/FullScreenATView$1;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/FullScreenATView$1;-><init>(Lcom/anythink/basead/ui/FullScreenATView;)V

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final b(J)V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CloseHeaderView;->refresh(J)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CountDownCloseView;->refresh(J)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->b(J)V

    :cond_2
    return-void
.end method

.method public b(I)Z
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {p1}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 3

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->c()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_btn_countdown_close_id"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CountDownCloseView;

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_btn_close_header_view_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/CloseHeaderView;

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_banner_view_for_anim_player_id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/ui/PanelView;

    iput-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    return-void
.end method

.method public final c(J)V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ae:Lcom/anythink/basead/ui/CloseHeaderView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CloseHeaderView;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->ad:Lcom/anythink/basead/ui/CountDownCloseView;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/basead/ui/CountDownCloseView;->setDuration(J)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/anythink/basead/ui/BaseScreenATView;->c(J)V

    :cond_2
    return-void
.end method

.method public final d(I)V
    .locals 1

    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->Q:Lcom/anythink/basead/ui/CloseImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->P:Lcom/anythink/basead/ui/CountDownView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/anythink/basead/ui/BaseScreenATView;->d(I)V

    return-void
.end method

.method public final n()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o()V
    .locals 4

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->o()V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/anythink/basead/ui/FullScreenATView;->T()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->F:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/EmptyAnimPlayer;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/EmptyAnimPlayer;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/RedPacketAnimPlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/RedPacketAnimPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/GuideToClickAnimPlayerView;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/GuideToClickAnimPlayerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/anythink/basead/ui/animplayerview/EmptyAnimPlayer;

    invoke-direct {v1, v0}, Lcom/anythink/basead/ui/animplayerview/EmptyAnimPlayer;-><init>(Landroid/content/Context;)V

    :goto_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    :cond_6
    return-void
.end method

.method public final q()V
    .locals 1

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->M()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->q()V

    :cond_0
    return-void
.end method

.method public r()I
    .locals 2

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->x:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->y:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ab:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ac:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x5

    return v0

    :cond_2
    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ab:I

    iget v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->ac:I

    if-ge v0, v1, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    const/4 v0, 0x6

    return v0
.end method

.method public final w()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    iget-object v3, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    iget-object v4, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget v5, p0, Lcom/anythink/basead/ui/BaseScreenATView;->w:I

    invoke-virtual {p0}, Lcom/anythink/basead/ui/BaseATView;->k()Z

    move-result v6

    new-instance v7, Lcom/anythink/basead/ui/FullScreenATView$2;

    invoke-direct {v7, p0}, Lcom/anythink/basead/ui/FullScreenATView$2;-><init>(Lcom/anythink/basead/ui/FullScreenATView;)V

    invoke-virtual/range {v2 .. v7}, Lcom/anythink/basead/ui/PanelView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;IZLcom/anythink/basead/ui/PanelView$a;)V

    :cond_0
    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->w()V

    return-void
.end method

.method public x()V
    .locals 3

    invoke-super {p0}, Lcom/anythink/basead/ui/BaseScreenATView;->x()V

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-static {v0}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iput v1, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->M:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    invoke-virtual {v0, v2}, Lcom/anythink/basead/ui/PanelView;->setLayoutType(I)V

    iget v0, p0, Lcom/anythink/basead/ui/BaseScreenATView;->E:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->D()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenATView;->af:Lcom/anythink/basead/ui/PanelView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PanelView;->getCTAButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
