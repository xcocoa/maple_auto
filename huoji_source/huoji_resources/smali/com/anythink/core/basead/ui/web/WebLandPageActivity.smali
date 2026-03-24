.class public Lcom/anythink/core/basead/ui/web/WebLandPageActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lcom/anythink/core/basead/ui/web/b;


# static fields
.field private static final e:I = 0x53d9c


# instance fields
.field private A:Lcom/anythink/core/api/IOfferClickHandler;

.field private B:Lcom/anythink/core/basead/ui/web/c;

.field private C:I

.field private D:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final E:I

.field public a:I

.field public b:Lorg/json/JSONArray;

.field public c:I

.field public d:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

.field private k:Landroid/webkit/WebView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/animation/ValueAnimator;

.field private p:Ljava/util/Random;

.field private q:I

.field private r:J

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Lcom/anythink/core/common/f/l;

.field private y:Lcom/anythink/core/common/f/m;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->f:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->i:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/lang/String;

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->D:Landroid/webkit/ValueCallback;

    const/16 v1, 0x200

    iput v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->E:I

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c:I

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->q:I

    return p1
.end method

.method public static synthetic a(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->D:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p0, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    return-object p0
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v1, "extra_offer_ad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/anythink/core/common/f/l;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/anythink/core/common/f/l;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->x:Lcom/anythink/core/common/f/l;

    new-instance v2, Lcom/anythink/core/basead/ui/web/c;

    invoke-direct {v2, v1}, Lcom/anythink/core/basead/ui/web/c;-><init>(Lcom/anythink/core/common/f/l;)V

    iput-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->B:Lcom/anythink/core/basead/ui/web/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    const-string v1, "extra_request_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/anythink/core/common/f/m;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/anythink/core/common/f/m;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "extra_click_handler"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/anythink/core/api/IOfferClickHandler;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/anythink/core/api/IOfferClickHandler;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->A:Lcom/anythink/core/api/IOfferClickHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    :try_start_3
    const-string v1, "extra_target_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    const-string v1, "extra_enter_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->C:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-void

    :catchall_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/core/basead/b/c;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/anythink/core/basead/b/c;->c:Lcom/anythink/core/common/f/l;

    const-string v2, "extra_offer_ad"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/anythink/core/basead/b/c;->h:Lcom/anythink/core/common/f/m;

    const-string v2, "extra_request_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/anythink/core/basead/b/c;->f:Ljava/lang/String;

    const-string v2, "extra_target_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p1, Lcom/anythink/core/basead/b/c;->i:I

    const-string v2, "extra_enter_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/anythink/core/basead/b/c;->g:Lcom/anythink/core/api/IOfferClickHandler;

    if-eqz p1, :cond_0

    const-string v1, "extra_click_handler"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/anythink/core/basead/b/c;

    invoke-direct {v0}, Lcom/anythink/core/basead/b/c;-><init>()V

    iput-object p1, v0, Lcom/anythink/core/basead/b/c;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Landroid/content/Context;Lcom/anythink/core/basead/b/c;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-static {v0, p0, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$2;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-static {p1}, Lcom/anythink/core/basead/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/bb;

    move-result-object p1

    iget v0, p1, Lcom/anythink/core/common/f/bb;->l:I

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    iget-object p1, p1, Lcom/anythink/core/common/f/bb;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->recordRedirectUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    return-object p0
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method public static synthetic c(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/l;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->x:Lcom/anythink/core/common/f/l;

    return-object p0
.end method

.method private static c()V
    .locals 0

    return-void
.end method

.method public static synthetic d(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/common/f/m;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/m;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$3;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$4;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$4;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic e(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/api/IOfferClickHandler;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->A:Lcom/anythink/core/api/IOfferClickHandler;

    return-object p0
.end method

.method private e()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic f(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)I
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    return v0
.end method

.method private f()Landroid/widget/RelativeLayout;
    .locals 9

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x53d9c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x425c0000    # 55.0f

    invoke-static {p0, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "#FFFFFF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_left_icon"

    const-string v7, "drawable"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "browser_close_icon"

    invoke-static {p0, v6, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->m:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {p0, v6}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {p0, v7}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v4, v6, v5, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v6, 0x1

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iput-object v4, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :try_start_0
    new-instance v2, Lcom/anythink/core/basead/ui/web/BaseWebView;

    invoke-direct {v2, p0}, Lcom/anythink/core/basead/ui/web/BaseWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v6, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v6, -0x252526

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v6, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    invoke-direct {v2, p0}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    invoke-virtual {v2, v5}, Lcom/anythink/core/basead/ui/web/WebProgressBarView;->setProgress(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v2, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->p:Ljava/util/Random;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->q:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->o:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->o:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;

    invoke-direct {v2, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$8;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x46
    .end array-data
.end method

.method private g()Landroid/widget/TextView;
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p0, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p0, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "#666666"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object v0
.end method

.method public static synthetic g(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void
.end method

.method public static synthetic h(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Lcom/anythink/core/basead/ui/web/WebProgressBarView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->o:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic j(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic k(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic l(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)I
    .locals 0

    iget p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->q:I

    return p0
.end method

.method public static synthetic m(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->p:Ljava/util/Random;

    return-object p0
.end method

.method private static synthetic n(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public callbackClickResult(Lcom/anythink/core/common/f/bb;)V
    .locals 1

    iget v0, p1, Lcom/anythink/core/common/f/bb;->l:I

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    iget-boolean v0, p1, Lcom/anythink/core/common/f/bb;->n:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/anythink/core/common/f/bb;->m:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c:I

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void

    :cond_0
    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c:I

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 5

    const-string v0, "string"

    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/m;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->f()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const-string v3, "system_dialog"

    const-string v4, "style"

    invoke-static {p0, v3, v4}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const-string v3, "web_land_page_dialog_title"

    invoke-static {p0, v3, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "web_land_page_dialog_stay"

    invoke-static {p0, v3, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;

    invoke-direct {v4, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$7;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "web_land_page_dialog_yes"

    invoke-static {p0, v3, v0}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;

    invoke-direct {v3, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$6;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    :cond_0
    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void
.end method

.method public getWebProgressBarView()Lcom/anythink/core/basead/ui/web/WebProgressBarView;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->j:Lcom/anythink/core/basead/ui/web/WebProgressBarView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v0, 0x200

    if-ne p1, v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->D:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    new-array v4, v4, [Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v3, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_0
    nop

    goto :goto_2

    :catchall_1
    :cond_2
    move-object v4, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    const/4 v3, 0x1

    :try_start_3
    new-array v4, v3, [Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v4, v2

    goto :goto_3

    :cond_4
    move-object v4, v1

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->D:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->D:Landroid/webkit/ValueCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->r:J

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v1, "extra_offer_ad"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/anythink/core/common/f/l;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/anythink/core/common/f/l;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->x:Lcom/anythink/core/common/f/l;

    new-instance v2, Lcom/anythink/core/basead/ui/web/c;

    invoke-direct {v2, v1}, Lcom/anythink/core/basead/ui/web/c;-><init>(Lcom/anythink/core/common/f/l;)V

    iput-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->B:Lcom/anythink/core/basead/ui/web/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    const-string v1, "extra_request_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/anythink/core/common/f/m;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/anythink/core/common/f/m;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "extra_click_handler"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/anythink/core/api/IOfferClickHandler;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/anythink/core/api/IOfferClickHandler;

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->A:Lcom/anythink/core/api/IOfferClickHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    :try_start_3
    const-string v1, "extra_target_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    const-string v1, "extra_enter_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->C:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->x:Lcom/anythink/core/common/f/l;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->E()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_4
    const-string p1, ""

    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "basead_click_empty"

    const-string v1, "string"

    invoke-static {v0, p1, v1}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void

    :cond_6
    invoke-static {v0, p1}, Lcom/anythink/core/basead/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/f/bb;

    move-result-object v0

    iget-boolean v1, v0, Lcom/anythink/core/common/f/bb;->m:Z

    invoke-virtual {p0, v0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->callbackClickResult(Lcom/anythink/core/common/f/bb;)V

    if-eqz v1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->f()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->w:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_8

    invoke-static {p1}, Lcom/anythink/core/common/o/n;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void

    :cond_8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$3;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$3;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$4;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$4;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-static {v0, p0, p0}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Landroid/content/Context;Lcom/anythink/core/basead/ui/web/b;)V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$2;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$2;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-static {p1}, Lcom/anythink/core/basead/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/bb;

    move-result-object p1

    iget v0, p1, Lcom/anythink/core/common/f/bb;->l:I

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    iget-object p1, p1, Lcom/anythink/core/common/f/bb;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->recordRedirectUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 18

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->o:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v2, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->o:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    iput-object v2, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->x:Lcom/anythink/core/common/f/l;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/m;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/anythink/core/common/f/m;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->d()I

    move-result v5

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->x:Lcom/anythink/core/common/f/l;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    iget v8, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->c:I

    iget v9, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->d:I

    iget v10, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->a:I

    iget-object v11, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->z:Ljava/lang/String;

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->y:Lcom/anythink/core/common/f/m;

    iget v12, v1, Lcom/anythink/core/common/f/m;->j:I

    iget v13, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->C:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v14, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->r:J

    sub-long v14, v1, v14

    iget-object v1, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/lang/String;

    iget v2, v0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    if-nez v2, :cond_2

    const/4 v2, 0x1

    const/16 v17, 0x1

    goto :goto_0

    :cond_2
    move/from16 v17, v2

    :goto_0
    move-object/from16 v16, v1

    invoke-static/range {v3 .. v17}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;IIILjava/lang/String;IIJLjava/lang/String;I)V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/core/basead/ui/a/a;->a(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;

    invoke-direct {v1, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$5;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onWebFinish()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->e()V

    return-void
.end method

.method public onWebPageFinish(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

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

    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->B:Lcom/anythink/core/basead/ui/web/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/anythink/core/basead/ui/web/c;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onWebPageLoadError(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    :cond_0
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    invoke-direct {p1, p0}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    iget-object p2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    new-instance p2, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$1;

    invoke-direct {p2, p0}, Lcom/anythink/core/basead/ui/web/WebLandPageActivity$1;-><init>(Lcom/anythink/core/basead/ui/web/WebLandPageActivity;)V

    invoke-virtual {p1, p2}, Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;->setOnRefreshListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->k:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_3
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->w:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onWebPageStart(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    :cond_0
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->v:Lcom/anythink/core/basead/ui/web/WebLoadFailRefrshView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/anythink/core/common/o/x;->a(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public recordRedirectUrl(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b:Lorg/json/JSONArray;

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    :try_start_0
    iget v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    iget-object v2, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
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

    iget-object v1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->s:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->t:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/core/basead/ui/web/WebLandPageActivity;->u:I

    return-void
.end method
