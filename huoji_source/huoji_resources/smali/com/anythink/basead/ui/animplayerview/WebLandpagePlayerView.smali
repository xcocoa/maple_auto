.class public Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;
.super Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;
.source ""

# interfaces
.implements Lcom/anythink/core/basead/ui/web/b;


# instance fields
.field public A:I

.field public B:Lcom/anythink/core/api/IOfferClickHandler;

.field public C:I

.field public D:Ljava/lang/String;

.field public E:Z

.field private final F:I

.field private final G:I

.field private final H:I

.field private final I:I

.field private J:Landroid/view/animation/TranslateAnimation;

.field private K:Landroid/view/animation/TranslateAnimation;

.field private L:Landroid/view/animation/TranslateAnimation;

.field private M:Landroid/webkit/WebView;

.field private N:Lcom/anythink/core/basead/ui/web/c;

.field private O:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final P:I

.field private Q:Ljava/lang/String;

.field private R:I

.field private S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field public y:Landroid/widget/LinearLayout;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->F:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->G:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->H:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->I:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->A:I

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    const/16 v0, 0x200

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->P:I

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->F:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->G:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->H:I

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->I:I

    const/16 p1, 0x8

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->A:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    const/16 p1, 0x200

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->P:I

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    iput-boolean v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->F:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->G:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->H:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->I:I

    const/16 p2, 0x8

    iput p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->A:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    const/16 p2, 0x200

    iput p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->P:I

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {p1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->a(II)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-direct {v0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_arrow_up"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_slide_hint"

    const-string v5, "string"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {p1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V
    .locals 6

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x4b0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v0, v4, v4, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v4, v4, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/anythink/core/basead/ui/web/BaseWebView;

    invoke-direct {v0, p1}, Lcom/anythink/core/basead/ui/web/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v0, Lcom/anythink/core/basead/ui/web/c;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->w:Lcom/anythink/core/common/f/l;

    invoke-direct {v0, v1}, Lcom/anythink/core/basead/ui/web/c;-><init>(Lcom/anythink/core/common/f/l;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->N:Lcom/anythink/core/basead/ui/web/c;

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-static {v0, p1, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    return-void
.end method

.method public static synthetic b(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-direct {v0, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_arrow_up"

    const-string v5, "drawable"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "myoffer_slide_hint"

    const-string v5, "string"

    invoke-static {v3, v4, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42580000    # 54.0f

    invoke-static {p1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p1, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, p1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic c(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)I
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/anythink/core/basead/ui/web/BaseWebView;

    invoke-direct {v0, p1}, Lcom/anythink/core/basead/ui/web/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v0, Lcom/anythink/core/basead/ui/web/c;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->w:Lcom/anythink/core/common/f/l;

    invoke-direct {v0, v1}, Lcom/anythink/core/basead/ui/web/c;-><init>(Lcom/anythink/core/common/f/l;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->N:Lcom/anythink/core/basead/ui/web/c;

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-static {v0, p1, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z

    return-void
.end method

.method public static synthetic d(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-static {v0, p1, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$3;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/view/animation/TranslateAnimation;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    return-object p0
.end method

.method private j()V
    .locals 6

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x4b0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v0, v4, v4, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->K:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v4, v4, v5, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->L:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public callbackClickResult(Lcom/anythink/core/common/f/bb;)V
    .locals 1

    iget v0, p1, Lcom/anythink/core/common/f/bb;->l:I

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    iget-boolean v0, p1, Lcom/anythink/core/common/f/bb;->n:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/anythink/core/common/f/bb;->m:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void

    :cond_0
    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->g()V

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iput-object v2, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->w:Lcom/anythink/core/common/f/l;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->x:Lcom/anythink/core/common/f/m;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->d()I

    move-result v5

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->w:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    iget v8, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->C:I

    iget v9, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->A:I

    iget v10, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    iget-object v11, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->D:Ljava/lang/String;

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/BasePlayerView;->x:Lcom/anythink/core/common/f/m;

    iget v12, v1, Lcom/anythink/core/common/f/m;->j:I

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    iget v2, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    move/from16 v17, v2

    :goto_0
    move-object/from16 v16, v1

    invoke-static/range {v3 .. v17}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;IIILjava/lang/String;IIJLjava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public getWebProgressBarView()Lcom/anythink/core/basead/ui/web/WebProgressBarView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/l;",
            "Lcom/anythink/core/common/f/m;",
            "Z",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->init(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;ZLjava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 p4, 0x42200000    # 40.0f

    invoke-static {p1, p4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0, p2, p3}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->a(II)V

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    const/4 p4, -0x1

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance p2, Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-direct {p2, p1}, Lcom/anythink/core/common/res/image/RecycleImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_arrow_up"

    const-string v2, "drawable"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_slide_hint"

    const-string v2, "string"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p2, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p2, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    if-nez p2, :cond_0

    new-instance p2, Landroid/view/animation/TranslateAnimation;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p1, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2, p3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2, p4}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    new-instance p3, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p3}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    const-wide/16 p3, 0x258

    invoke-virtual {p2, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    :cond_0
    iget-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->J:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p2, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;

    invoke-direct {p2, p0, p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$1;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x200

    if-ne p1, v0, :cond_6

    :try_start_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 p2, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :goto_1
    :try_start_2
    invoke-virtual {p3}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    nop

    goto :goto_2

    :catchall_1
    :cond_2
    move-object v1, v0

    :cond_3
    :goto_2
    if-eqz p1, :cond_5

    const/4 p3, 0x1

    :try_start_3
    new-array v1, p3, [Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, p2

    goto :goto_3

    :cond_4
    move-object v1, v0

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->O:Landroid/webkit/ValueCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :cond_6
    :goto_4
    return-void
.end method

.method public onWebFinish()V
    .locals 0

    return-void
.end method

.method public onWebPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->N:Lcom/anythink/core/basead/ui/web/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/basead/ui/web/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onWebPageLoadError(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method public onWebPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public declared-synchronized openInternalWebView(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->D:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->D:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->B:Lcom/anythink/core/api/IOfferClickHandler;

    new-instance p1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;

    invoke-direct {p1, p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-boolean p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pause()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->pause()V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-static {v1, v0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Z)V

    :cond_1
    return-void
.end method

.method public recordRedirectUrl(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    :try_start_0
    iget v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->S:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->Q:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->R:I

    return-void
.end method

.method public start()V
    .locals 2

    invoke-super {p0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->start()V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$4;

    invoke-direct {v1, p0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$4;-><init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->M:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    invoke-super {p0}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->stop()V

    return-void
.end method
