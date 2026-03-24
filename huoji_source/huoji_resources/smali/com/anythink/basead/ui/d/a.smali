.class public final Lcom/anythink/basead/ui/d/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I = -0x64

.field public static final b:I = -0x65

.field public static final c:I = -0x66


# instance fields
.field private final d:Lcom/anythink/core/common/f/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/anythink/core/common/f/l<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/anythink/core/common/f/n;

.field private f:I

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/anythink/basead/ui/c/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/l<",
            "*>;",
            "Lcom/anythink/core/common/f/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    iput-object p2, p0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 0

    invoke-static {p0, p1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/d/a;)Lcom/anythink/basead/ui/c/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/d/a;->o:Lcom/anythink/basead/ui/c/a;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const-string v1, "id"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v2, "myoffer_splash_ad_install_btn"

    invoke-static {p1, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v2, "myoffer_shake_view"

    invoke-static {p1, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    iget-object v2, p0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-static {v0, v2}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->isSinglePicture(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result v0

    const/high16 v2, 0x41d00000    # 26.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    invoke-static {p1, v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->w()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x42380000    # 46.0f

    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    const/high16 v2, 0x41f80000    # 31.0f

    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42040000    # 33.0f

    invoke-static {p1, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v2, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    const-string v2, "myoffer_invalid_button_shape_radius_24"

    const-string v4, "drawable"

    invoke-static {p1, v2, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v2, "myoffer_fl_invalid_btn"

    invoke-static {p1, v2, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {p1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    if-eqz v0, :cond_6

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v0, v3, p1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v3}, Lcom/anythink/basead/ui/d/a;->a(Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/anythink/basead/ui/d/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/d/a$1;-><init>(Lcom/anythink/basead/ui/d/a;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/anythink/basead/ui/d/a$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/d/a$2;-><init>(Lcom/anythink/basead/ui/d/a;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/d/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_include_invalid_button_full_screen"

    const-string v2, "id"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_fl_invalid_btn"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_splash_ad_bottom_container"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_ll_top_content"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_btn_banner_cta"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_shake_hint_text"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v1, "myoffer_ll_title_desc_container"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    const-string v1, "myoffer_invalid_btn"

    invoke-static {p1, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/view/View;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, p2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/anythink/basead/ui/d/a;
    .locals 0

    iput p1, p0, Lcom/anythink/basead/ui/d/a;->f:I

    return-object p0
.end method

.method public final a(Lcom/anythink/basead/ui/c/a;)Lcom/anythink/basead/ui/d/a;
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/d/a;->o:Lcom/anythink/basead/ui/c/a;

    return-object p0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/d/a$3;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/d/a$3;-><init>(Lcom/anythink/basead/ui/d/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->al()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v3, "myoffer_include_invalid_button_full_screen"

    const-string v4, "id"

    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    const-string v3, "myoffer_fl_invalid_btn"

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    :cond_1
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_splash_ad_bottom_container"

    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_ll_top_content"

    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->k:Landroid/view/View;

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_btn_banner_cta"

    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_shake_hint_text"

    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v5, "myoffer_ll_title_desc_container"

    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-eqz v2, :cond_2

    const-string v5, "myoffer_invalid_btn"

    invoke-static {v1, v5, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    :cond_2
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "4"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/high16 v5, 0x41200000    # 10.0f

    const-string v6, "drawable"

    const-string v7, "myoffer_invalid_button_shape_radius_24"

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v9, 0x41d00000    # 26.0f

    const/4 v10, 0x0

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v11, "myoffer_splash_ad_install_btn"

    invoke-static {v1, v11, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    :cond_4
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->g:Landroid/view/View;

    const-string v11, "myoffer_shake_view"

    invoke-static {v1, v11, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    :cond_5
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    iget-object v11, v0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-static {v2, v11}, Lcom/anythink/basead/ui/BaseSdkSplashATView;->isSinglePicture(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    invoke-static {v1, v2, v8}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    invoke-static {v1, v2, v8}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->e:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->w()I

    move-result v2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_9

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v8, 0x42380000    # 46.0f

    invoke-static {v1, v8}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v8

    iput v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    const/high16 v8, 0x41f80000    # 31.0f

    invoke-static {v1, v8}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v11

    const/high16 v12, 0x42040000    # 33.0f

    invoke-static {v1, v12}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v12

    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v2, v8, v11, v12, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v7, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v6, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v6, :cond_8

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v1, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_9
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    if-eqz v2, :cond_a

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v10, v1, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_a
    :goto_0
    iget-object v1, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {v0, v10}, Lcom/anythink/basead/ui/d/a;->a(Z)V

    return-void

    :cond_b
    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    const/high16 v12, 0x41a00000    # 20.0f

    const/16 v13, 0xb

    const/4 v14, -0x2

    const/high16 v15, 0x42400000    # 48.0f

    const/16 v8, -0x65

    const/high16 v5, 0x42080000    # 34.0f

    const/high16 v11, 0x41600000    # 14.0f

    if-eq v2, v8, :cond_12

    packed-switch v2, :pswitch_data_0

    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/e;->h(Landroid/content/Context;)Z

    move-result v2

    const/16 v8, -0x64

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->h:Landroid/view/View;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_c
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->k:Landroid/view/View;

    invoke-static {v1, v2, v11}, Lcom/anythink/basead/ui/d/a;->b(Landroid/content/Context;Landroid/view/View;F)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v3, 0x42b80000    # 92.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->b(Landroid/content/Context;Landroid/view/View;F)V

    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    if-ne v2, v8, :cond_16

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    const/high16 v3, 0x42300000    # 44.0f

    goto/16 :goto_1

    :cond_d
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v1, v15}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v9

    iput v9, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v9, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v15

    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v2, v9, v15, v5, v11}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v7, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_e
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v5, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v5, :cond_f

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, v0, Lcom/anythink/basead/ui/d/a;->n:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    if-ne v2, v8, :cond_16

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v14, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    instance-of v3, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_15

    goto/16 :goto_2

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/e;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v15}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v7, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_4

    :cond_11
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v2, v10, v1, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    :pswitch_1
    const/high16 v3, 0x41200000    # 10.0f

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-static {v1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->k:Landroid/view/View;

    const/high16 v3, 0x43200000    # 160.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    const/high16 v3, 0x42f80000    # 124.0f

    goto :goto_1

    :pswitch_2
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->d:Lcom/anythink/core/common/f/l;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    const/high16 v3, 0x431a0000    # 154.0f

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    goto/16 :goto_3

    :cond_12
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/o/e;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-static {v1, v9}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v10, v3, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->i:Landroid/view/View;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->j:Landroid/view/View;

    const/high16 v3, 0x43180000    # 152.0f

    invoke-static {v1, v2, v3}, Lcom/anythink/basead/ui/d/a;->a(Landroid/content/Context;Landroid/view/View;F)V

    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    if-ne v2, v8, :cond_16

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    const/high16 v3, 0x420c0000    # 35.0f

    goto :goto_1

    :cond_13
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v1, v15}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v1, v11}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v2, v3, v4, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->m:Landroid/view/View;

    invoke-static {v1, v7, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_14
    iget v2, v0, Lcom/anythink/basead/ui/d/a;->f:I

    if-ne v2, v8, :cond_16

    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v14, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    instance-of v3, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_15

    :goto_2
    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {v1, v12}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_15
    iget-object v1, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    :goto_3
    const/4 v1, 0x0

    :goto_4
    iget-object v2, v0, Lcom/anythink/basead/ui/d/a;->l:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/d/a;->a(Z)V

    :cond_17
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/ui/d/a$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/d/a$4;-><init>(Lcom/anythink/basead/ui/d/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
