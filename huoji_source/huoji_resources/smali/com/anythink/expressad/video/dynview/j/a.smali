.class public final Lcom/anythink/expressad/video/dynview/j/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "DataEnergizeWrapper"

.field private static k:Z


# instance fields
.field public b:Lcom/anythink/expressad/video/dynview/e/a;

.field private c:Lcom/anythink/expressad/video/dynview/i/c/b;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private volatile j:J

.field private l:Lcom/anythink/expressad/video/dynview/i/c/a;

.field private m:Z

.field private n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#FFFFFFFF"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->f:Ljava/lang/String;

    const-string v0, "#60000000"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->g:Ljava/lang/String;

    const-string v0, "#FF5F5F5F"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->h:Ljava/lang/String;

    const-string v0, "#90ECECEC"

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->i:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->j:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->l:Lcom/anythink/expressad/video/dynview/i/c/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->m:Z

    iput v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->n:I

    new-instance v0, Lcom/anythink/expressad/video/dynview/j/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/expressad/video/dynview/j/a$1;-><init>(Lcom/anythink/expressad/video/dynview/j/a;)V

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->b:Lcom/anythink/expressad/video/dynview/e/a;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/dynview/j/a;I)I
    .locals 0

    iput p1, p0, Lcom/anythink/expressad/video/dynview/j/a;->n:I

    return p1
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p0, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/dynview/j/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/video/dynview/j/a;->j:J

    return-wide p1
.end method

.method private a()Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/j/a;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/anythink/expressad/a;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/dynview/j/a$10;

    invoke-direct {v1, p0, p3, p1}, Lcom/anythink/expressad/video/dynview/j/a$10;-><init>(Lcom/anythink/expressad/video/dynview/j/a;ILandroid/widget/ImageView;)V

    invoke-virtual {v0, p2, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void
.end method

.method private a(Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/anythink/expressad/video/dynview/i/a/a;->a()Lcom/anythink/expressad/video/dynview/i/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/anythink/expressad/video/dynview/i/a/a;->a(Ljava/util/Map;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/dynview/j/a;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    iget-object p0, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/anythink/expressad/video/dynview/i/a/a;->a()Lcom/anythink/expressad/video/dynview/i/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/anythink/expressad/video/dynview/i/a/a;->a(Ljava/util/Map;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;)V
    .locals 2

    const-string v0, "choice_one_callback"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/expressad/video/dynview/f/d;

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/video/dynview/f/d;

    invoke-interface {p1}, Lcom/anythink/expressad/video/dynview/f/d;->a()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/j/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;Ljava/util/List;I)V
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const-string v0, "choice_one_callback"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/expressad/video/dynview/f/d;

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/video/dynview/f/d;

    if-eqz p1, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {p1, p2}, Lcom/anythink/expressad/video/dynview/f/d;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/j/a;->b()V

    return-void

    :cond_1
    const-string v0, "order_view_callback"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/expressad/video/dynview/f/c;

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/video/dynview/f/c;

    if-eqz p1, :cond_2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {p1, p2, p3}, Lcom/anythink/expressad/video/dynview/f/c;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_2
    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/j/a;->b()V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;ILjava/util/Map;)V
    .locals 6

    const-string v0, "cltp"

    invoke-static {p1, v0}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long p1, v3, v1

    if-eqz p1, :cond_4

    if-eqz p5, :cond_1

    const-string p1, "is_dy_success"

    invoke-interface {p5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/anythink/expressad/video/dynview/j/a;->k:Z

    :cond_1
    const/4 p1, 0x0

    sput-boolean p1, Lcom/anythink/expressad/video/dynview/j/a;->k:Z

    const-string v0, "anythink_choice_one_countdown_tv"

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->g:Ljava/lang/String;

    if-eqz p3, :cond_2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v2, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p4, :cond_3

    invoke-static {p2}, Lcom/anythink/expressad/foundation/h/t;->d(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p2, v1}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p4, p2, p2, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p1, Lcom/anythink/expressad/video/dynview/j/a$5;

    invoke-direct {p1, p0, p5}, Lcom/anythink/expressad/video/dynview/j/a$5;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/anythink/expressad/video/dynview/j/a$6;

    invoke-direct {p1, p0, p3, p5}, Lcom/anythink/expressad/video/dynview/j/a$6;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Landroid/widget/TextView;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a;->l:Lcom/anythink/expressad/video/dynview/i/c/a;

    new-instance p1, Lcom/anythink/expressad/video/dynview/i/c/b;

    invoke-direct {p1}, Lcom/anythink/expressad/video/dynview/i/c/b;-><init>()V

    const-wide/16 p2, 0x3e8

    mul-long v3, v3, p2

    invoke-virtual {p1, v3, v4}, Lcom/anythink/expressad/video/dynview/i/c/b;->a(J)Lcom/anythink/expressad/video/dynview/i/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/i/c/b;->a()Lcom/anythink/expressad/video/dynview/i/c/b;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/video/dynview/j/a;->l:Lcom/anythink/expressad/video/dynview/i/c/a;

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/video/dynview/i/c/b;->a(Lcom/anythink/expressad/video/dynview/i/c/a;)Lcom/anythink/expressad/video/dynview/i/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/j/a;->c:Lcom/anythink/expressad/video/dynview/i/c/b;

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/i/c/b;->b()V

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/anythink/expressad/video/dynview/j/a;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V
    .locals 8

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    new-instance v7, Lcom/anythink/expressad/video/dynview/j/a$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/expressad/video/dynview/j/a$2;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Landroid/widget/ImageView;Ljava/lang/String;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V

    invoke-virtual {v0, p1, v7}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/j/a;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p3, p4}, Lcom/anythink/expressad/video/dynview/j/a;->b(Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2

    const-string v0, "choice_one_callback"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/expressad/video/dynview/f/d;

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/video/dynview/f/d;

    invoke-interface {p1}, Lcom/anythink/expressad/video/dynview/f/d;->a()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/j/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const-string v0, "choice_one_callback"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/expressad/video/dynview/f/d;

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/video/dynview/f/d;

    if-eqz p1, :cond_0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {p1, p2}, Lcom/anythink/expressad/video/dynview/f/d;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/j/a;->b()V

    return-void

    :cond_1
    const-string v0, "order_view_callback"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/expressad/video/dynview/f/c;

    if-eqz v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/video/dynview/f/c;

    if-eqz p1, :cond_2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {p1, p2, p3}, Lcom/anythink/expressad/video/dynview/f/c;->a(Lcom/anythink/expressad/foundation/d/c;I)V

    :cond_2
    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/j/a;->b()V

    :cond_3
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/dynview/j/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/dynview/j/a;->m:Z

    return p0
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/dynview/j/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/video/dynview/j/a;->m:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/dynview/j/a;)Lcom/anythink/expressad/video/dynview/i/c/b;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/dynview/j/a;->c:Lcom/anythink/expressad/video/dynview/i/c/b;

    return-object p0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/anythink/expressad/video/dynview/i/a/a;->a()Lcom/anythink/expressad/video/dynview/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/i/a/a;->b()V

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->c:Lcom/anythink/expressad/video/dynview/i/c/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/i/c/b;->c()V

    iput-object v1, p0, Lcom/anythink/expressad/video/dynview/j/a;->c:Lcom/anythink/expressad/video/dynview/i/c/b;

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/video/dynview/b/a;->a()Lcom/anythink/expressad/video/dynview/b/a;

    move-result-object v0

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/b/a;->a:Lcom/anythink/expressad/video/dynview/e/a;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->b:Lcom/anythink/expressad/video/dynview/e/a;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/anythink/expressad/video/dynview/j/a;->b:Lcom/anythink/expressad/video/dynview/e/a;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_4
    return-void
.end method

.method private static b(Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/anythink/expressad/video/dynview/g/a;->a()Lcom/anythink/expressad/video/dynview/g/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/expressad/video/dynview/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/g/a$a;->a(I)Lcom/anythink/expressad/video/dynview/g/a$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/anythink/expressad/video/dynview/g/a$b;->a()Lcom/anythink/expressad/video/dynview/g/a$b;

    invoke-virtual {p0}, Lcom/anythink/expressad/video/dynview/c;->e()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/dynview/c;->d()F

    move-result v1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/dynview/c;->c()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/dynview/c;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/g/a$a;->a(F)Lcom/anythink/expressad/video/dynview/g/a$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/dynview/c;->d()F

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/anythink/expressad/video/dynview/c;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/g/a$a;->a(F)Lcom/anythink/expressad/video/dynview/g/a$b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/expressad/video/dynview/c;->c()F

    move-result p0

    :goto_1
    invoke-interface {v1, p0}, Lcom/anythink/expressad/video/dynview/g/a$b;->b(F)Lcom/anythink/expressad/video/dynview/g/a$b;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {v0}, Lcom/anythink/expressad/video/dynview/g/a$a;->b()Lcom/anythink/expressad/video/dynview/g/a;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;)V
    .locals 2

    const-string v0, "order_view_callback"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/expressad/video/dynview/f/c;

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/video/dynview/f/c;

    invoke-interface {p1}, Lcom/anythink/expressad/video/dynview/f/c;->a()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/j/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 2

    const-string v0, "order_view_callback"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/anythink/expressad/video/dynview/f/c;

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/video/dynview/f/c;

    invoke-interface {p1}, Lcom/anythink/expressad/video/dynview/f/c;->a()V

    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/j/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/anythink/expressad/video/dynview/j/a;)I
    .locals 0

    iget p0, p0, Lcom/anythink/expressad/video/dynview/j/a;->n:I

    return p0
.end method

.method public static synthetic d(Lcom/anythink/expressad/video/dynview/j/a;)Lcom/anythink/expressad/video/dynview/i/c/a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/dynview/j/a;->l:Lcom/anythink/expressad/video/dynview/i/c/a;

    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/expressad/video/dynview/j/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/video/dynview/j/a;->e:Z

    return p0
.end method

.method public static synthetic f(Lcom/anythink/expressad/video/dynview/j/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->e:Z

    return v0
.end method

.method public static synthetic g(Lcom/anythink/expressad/video/dynview/j/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->j:J

    return-wide v0
.end method

.method public static synthetic h(Lcom/anythink/expressad/video/dynview/j/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/dynview/j/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/anythink/expressad/video/dynview/j/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;Lcom/anythink/expressad/video/dynview/f/e;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    sget-object p1, Lcom/anythink/expressad/video/dynview/c/b;->a:Lcom/anythink/expressad/video/dynview/c/b;

    invoke-interface {p3, p1}, Lcom/anythink/expressad/video/dynview/f/e;->a(Lcom/anythink/expressad/video/dynview/c/b;)V

    return-void

    :cond_1
    :try_start_0
    const-string p1, "anythink_iv_adbanner_bg"

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_2
    const-string p1, "anythink_iv_adbanner"

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/j/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p2, p1}, Lcom/anythink/expressad/video/dynview/f/e;->a(Landroid/view/View;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/anythink/expressad/video/dynview/f/e;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/video/dynview/c;->g()Ljava/util/List;

    move-result-object v5

    if-nez v2, :cond_1

    sget-object v1, Lcom/anythink/expressad/video/dynview/c/b;->f:Lcom/anythink/expressad/video/dynview/c/b;

    :goto_0
    invoke-interface {v4, v1}, Lcom/anythink/expressad/video/dynview/f/e;->a(Lcom/anythink/expressad/video/dynview/c/b;)V

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v1, Lcom/anythink/expressad/video/dynview/c/b;->b:Lcom/anythink/expressad/video/dynview/c/b;

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v8, :cond_3

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/anythink/expressad/foundation/d/c;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/anythink/expressad/foundation/d/c;

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-nez v10, :cond_4

    if-eqz v4, :cond_4

    :goto_2
    sget-object v1, Lcom/anythink/expressad/video/dynview/c/b;->d:Lcom/anythink/expressad/video/dynview/c/b;

    goto :goto_0

    :cond_4
    if-nez v11, :cond_5

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    sput-boolean v9, Lcom/anythink/expressad/video/dynview/j/a;->k:Z

    const-string v12, "anythink_top_item_rl"

    invoke-static {v12}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    const-string v13, "anythink_top_iv"

    invoke-static {v13}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    const-string v14, "anythink_top_ration"

    invoke-static {v14}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    const-string v21, "anythink_top_icon_iv"

    invoke-static/range {v21 .. v21}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const-string v14, "anythink_top_title_tv"

    invoke-static {v14}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const-string v16, "anythink_bottom_item_rl"

    invoke-static/range {v16 .. v16}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const-string v16, "anythink_bottom_ration"

    invoke-static/range {v16 .. v16}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    const-string v16, "anythink_bottom_iv"

    invoke-static/range {v16 .. v16}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    const-string v16, "anythink_bottom_icon_iv"

    move-object/from16 v17, v14

    invoke-static/range {v16 .. v16}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    const-string v16, "anythink_bottom_title_tv"

    move-object/from16 v18, v14

    invoke-static/range {v16 .. v16}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const-string v16, "anythink_reward_choice_one_like_iv"

    move-object/from16 v19, v14

    invoke-static/range {v16 .. v16}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    if-eqz v12, :cond_6

    new-instance v14, Lcom/anythink/expressad/video/dynview/j/a$3;

    invoke-direct {v14, v0, v3, v5}, Lcom/anythink/expressad/video/dynview/j/a$3;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v14, 0x3ee66666    # 0.45f

    if-eqz v13, :cond_9

    const/16 v16, 0x14

    const/16 v20, 0x14

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/high16 v25, -0x1000000

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    move-object/from16 v31, v19

    const v12, 0x3ee66666    # 0.45f

    move-object v14, v13

    move-object v12, v15

    move/from16 v15, v16

    move/from16 v16, v20

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v19, v24

    move/from16 v20, v25

    invoke-virtual/range {v14 .. v20}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;->setCustomBorder(IIIIII)V

    invoke-virtual {v10}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14, v13, v1, v2}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V

    if-eqz v12, :cond_a

    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->aD()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v10}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    new-instance v13, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/video/dynview/c;->a()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/video/dynview/c;->a()Landroid/content/Context;

    move-result-object v15

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v15, v4}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v15

    const/4 v4, -0x1

    invoke-direct {v14, v4, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v10}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v13}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v4, 0x3ee66666    # 0.45f

    invoke-virtual {v12, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setWidthRatio(F)V

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v12, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setHeightRatio(F)V

    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setAutoscroll(Z)V

    goto :goto_4

    :cond_7
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v12, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setWidthRatio(F)V

    invoke-virtual {v12, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setHeightRatio(F)V

    const/4 v13, 0x0

    goto :goto_3

    :cond_8
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-virtual {v12, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setWidthRatio(F)V

    invoke-virtual {v12, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setHeightRatio(F)V

    :goto_3
    invoke-virtual {v12, v13}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setAutoscroll(Z)V

    goto :goto_5

    :cond_9
    move-object/from16 v29, v17

    move-object/from16 v30, v18

    move-object/from16 v31, v19

    :cond_a
    :goto_4
    const/4 v13, 0x0

    :goto_5
    invoke-static/range {v21 .. v21}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    if-eqz v4, :cond_b

    invoke-virtual {v4, v13}, Lcom/anythink/expressad/videocommon/view/RoundImageView;->setType(I)V

    invoke-virtual {v10}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12, v4}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_b
    move-object/from16 v14, v29

    if-eqz v14, :cond_d

    invoke-virtual {v10}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v10}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_c
    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    :goto_6
    if-eqz v7, :cond_e

    new-instance v4, Lcom/anythink/expressad/video/dynview/j/a$4;

    invoke-direct {v4, v0, v3, v5}, Lcom/anythink/expressad/video/dynview/j/a$4;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    if-eqz v8, :cond_11

    const/16 v23, 0x14

    const/16 v24, 0x14

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0xa

    const/high16 v28, -0x1000000

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v28}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;->setCustomBorder(IIIIII)V

    invoke-virtual {v11}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v8, v1, v2}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;)V

    if-eqz v9, :cond_11

    invoke-virtual {v11}, Lcom/anythink/expressad/foundation/d/c;->aD()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v11}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/video/dynview/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/video/dynview/c;->a()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x43480000    # 200.0f

    invoke-static {v7, v8}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, -0x1

    invoke-direct {v5, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v4, 0x3ee66666    # 0.45f

    invoke-virtual {v9, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setWidthRatio(F)V

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v9, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setHeightRatio(F)V

    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setAutoscroll(Z)V

    move-object/from16 v14, v30

    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v9, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setWidthRatio(F)V

    invoke-virtual {v9, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setHeightRatio(F)V

    const/4 v5, 0x0

    goto :goto_7

    :cond_10
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v9, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setWidthRatio(F)V

    invoke-virtual {v9, v4}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setHeightRatio(F)V

    :goto_7
    invoke-virtual {v9, v5}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setAutoscroll(Z)V

    goto :goto_8

    :cond_11
    const/4 v5, 0x0

    :goto_8
    move-object/from16 v14, v30

    :goto_9
    if-eqz v14, :cond_12

    invoke-virtual {v14, v5}, Lcom/anythink/expressad/videocommon/view/RoundImageView;->setType(I)V

    invoke-virtual {v11}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v14}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_12
    move-object/from16 v14, v31

    if-eqz v14, :cond_13

    invoke-virtual {v11}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    invoke-virtual {v10}, Lcom/anythink/expressad/foundation/d/c;->ar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/anythink/expressad/video/dynview/c;->e()I

    move-result v1

    const-string v5, "cltp"

    invoke-static {v4, v5}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v7, 0x0

    if-nez v5, :cond_14

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_a

    :cond_14
    move-wide v4, v7

    :goto_a
    cmp-long v9, v4, v7

    if-eqz v9, :cond_18

    if-eqz v3, :cond_15

    const-string v7, "is_dy_success"

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sput-boolean v7, Lcom/anythink/expressad/video/dynview/j/a;->k:Z

    :cond_15
    const/4 v7, 0x0

    sput-boolean v7, Lcom/anythink/expressad/video/dynview/j/a;->k:Z

    const-string v7, "anythink_choice_one_countdown_tv"

    invoke-static {v7}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/high16 v8, 0x41300000    # 11.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v8, v0, Lcom/anythink/expressad/video/dynview/j/a;->f:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v0, Lcom/anythink/expressad/video/dynview/j/a;->g:Ljava/lang/String;

    if-eqz v7, :cond_16

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v10, v11}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v10, v8}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    const/4 v8, 0x2

    if-ne v1, v8, :cond_17

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_17

    invoke-static {v6}, Lcom/anythink/expressad/foundation/h/t;->d(Landroid/content/Context;)I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v6, v9}, Lcom/anythink/expressad/foundation/h/t;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v6, v6, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_17
    if-eqz v7, :cond_18

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Lcom/anythink/expressad/video/dynview/j/a$5;

    invoke-direct {v1, v0, v3}, Lcom/anythink/expressad/video/dynview/j/a$5;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/anythink/expressad/video/dynview/j/a$6;

    invoke-direct {v1, v0, v7, v3}, Lcom/anythink/expressad/video/dynview/j/a$6;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Landroid/widget/TextView;Ljava/util/Map;)V

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/j/a;->l:Lcom/anythink/expressad/video/dynview/i/c/a;

    new-instance v1, Lcom/anythink/expressad/video/dynview/i/c/b;

    invoke-direct {v1}, Lcom/anythink/expressad/video/dynview/i/c/b;-><init>()V

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/anythink/expressad/video/dynview/i/c/b;->a(J)Lcom/anythink/expressad/video/dynview/i/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/video/dynview/i/c/b;->a()Lcom/anythink/expressad/video/dynview/i/c/b;

    move-result-object v1

    iget-object v3, v0, Lcom/anythink/expressad/video/dynview/j/a;->l:Lcom/anythink/expressad/video/dynview/i/c/a;

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/video/dynview/i/c/b;->a(Lcom/anythink/expressad/video/dynview/i/c/a;)Lcom/anythink/expressad/video/dynview/i/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/j/a;->c:Lcom/anythink/expressad/video/dynview/i/c/b;

    invoke-virtual {v1}, Lcom/anythink/expressad/video/dynview/i/c/b;->b()V

    :cond_18
    move-object/from16 v1, p4

    if-eqz v1, :cond_19

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/anythink/expressad/video/dynview/f/e;->a(Landroid/view/View;Ljava/util/List;)V

    :cond_19
    return-void
.end method

.method public final b(Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/anythink/expressad/video/dynview/f/e;)V
    .locals 11

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/anythink/expressad/video/dynview/c/b;->a:Lcom/anythink/expressad/video/dynview/c/b;

    :goto_0
    invoke-interface {p4, p1}, Lcom/anythink/expressad/video/dynview/f/e;->a(Lcom/anythink/expressad/video/dynview/c/b;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "is_dy_success"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    sput-boolean p3, Lcom/anythink/expressad/video/dynview/j/a;->k:Z

    :cond_2
    const/4 p3, 0x0

    sput-boolean p3, Lcom/anythink/expressad/video/dynview/j/a;->k:Z

    const-string v0, "anythink_reward_icon_riv"

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "anythink_reward_title_tv"

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "anythink_reward_stars_mllv"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const-string v3, "anythink_reward_click_tv"

    invoke-static {v3}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "anythink_videoview_bg"

    invoke-static {v4}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const-string v5, "anythink_reward_desc_tv"

    invoke-static {v5}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/c;->g()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f

    invoke-interface {v7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/expressad/foundation/d/c;

    if-eqz p3, :cond_f

    if-eqz v0, :cond_3

    move-object v7, v0

    check-cast v7, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Lcom/anythink/expressad/videocommon/view/RoundImageView;->setBorderRadius(I)V

    invoke-virtual {p3}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v0}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p3}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {p3}, Lcom/anythink/expressad/out/j;->bc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v2, :cond_7

    invoke-virtual {p3}, Lcom/anythink/expressad/out/j;->aX()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpg-double v1, v7, v9

    if-gtz v1, :cond_6

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    :cond_6
    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    invoke-virtual {p3}, Lcom/anythink/expressad/out/j;->aY()I

    move-result v1

    invoke-virtual {v2, v7, v8, v1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;->setRatingAndUser(DI)V

    :cond_7
    if-eqz v3, :cond_8

    iget-object v1, p3, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/c;->h()I

    move-result v1

    const/16 v2, 0x66

    if-eq v1, v2, :cond_d

    const/16 v2, 0xca

    if-eq v1, v2, :cond_d

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_d

    const/16 v2, 0x322

    if-eq v1, v2, :cond_a

    const/16 p3, 0x388

    if-eq v1, p3, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/c;->k()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_b

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v3, :cond_c

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual {p3}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v4, p1, v1}, Lcom/anythink/expressad/video/dynview/j/a;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_1

    :cond_d
    if-eqz v3, :cond_e

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_1
    invoke-interface {p4, p2, v6}, Lcom/anythink/expressad/video/dynview/f/e;->a(Landroid/view/View;Ljava/util/List;)V

    return-void

    :cond_f
    sget-object p1, Lcom/anythink/expressad/video/dynview/c/b;->d:Lcom/anythink/expressad/video/dynview/c/b;

    goto/16 :goto_0
.end method

.method public final c(Lcom/anythink/expressad/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/anythink/expressad/video/dynview/f/e;)V
    .locals 10

    const-string v0, "is_dy_success"

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/video/dynview/j/a;->d:Ljava/util/Map;

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/anythink/expressad/video/dynview/c/b;->b:Lcom/anythink/expressad/video/dynview/c/b;

    invoke-interface {p4, p1}, Lcom/anythink/expressad/video/dynview/f/e;->a(Lcom/anythink/expressad/video/dynview/c/b;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/anythink/expressad/video/dynview/j/a;->k:Z

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/expressad/video/dynview/j/a;->k:Z

    const-string v2, "anythink_order_view_lv"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    const-string v3, "anythink_order_view_h_lv"

    invoke-static {v3}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    const-string v4, "anythink_order_view_iv_close"

    invoke-static {v4}, Lcom/anythink/expressad/video/dynview/j/a;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v5, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;

    invoke-direct {v5, v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/c;->e()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    if-eqz v2, :cond_4

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/anythink/expressad/video/dynview/j/a$7;

    invoke-direct {p1, p0, p3, v1}, Lcom/anythink/expressad/video/dynview/j/a$7;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/anythink/expressad/video/dynview/c;->d()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, p1, v2

    div-int/lit8 v6, v2, 0x9

    div-int/lit8 v7, v6, 0x2

    invoke-virtual {v3}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr p1, v9

    iput p1, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v3, v8}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr v2, v6

    div-int/lit8 p1, v7, 0x2

    sub-int/2addr v2, p1

    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    invoke-virtual {v3, v7}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setStretchMode(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/anythink/expressad/video/dynview/j/a$8;

    invoke-direct {p1, p0, p3, v1}, Lcom/anythink/expressad/video/dynview/j/a$8;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v3, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    new-instance p1, Lcom/anythink/expressad/video/dynview/j/a$9;

    invoke-direct {p1, p0, p3}, Lcom/anythink/expressad/video/dynview/j/a$9;-><init>(Lcom/anythink/expressad/video/dynview/j/a;Ljava/util/Map;)V

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz p4, :cond_6

    const/4 p1, 0x0

    invoke-interface {p4, p2, p1}, Lcom/anythink/expressad/video/dynview/f/e;->a(Landroid/view/View;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :catch_0
    nop

    if-eqz p4, :cond_7

    sget-object p1, Lcom/anythink/expressad/video/dynview/c/b;->a:Lcom/anythink/expressad/video/dynview/c/b;

    invoke-interface {p4, p1}, Lcom/anythink/expressad/video/dynview/f/e;->a(Lcom/anythink/expressad/video/dynview/c/b;)V

    :cond_7
    return-void
.end method
