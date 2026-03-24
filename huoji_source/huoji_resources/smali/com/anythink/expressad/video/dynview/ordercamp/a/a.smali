.class public final Lcom/anythink/expressad/video/dynview/ordercamp/a/a;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "OrderCampAdapter"

.field private static final e:Ljava/lang/String; = "anythink_lv_item_rl"

.field private static final f:Ljava/lang/String; = "anythink_lv_iv"

.field private static final g:Ljava/lang/String; = "anythink_lv_icon_iv"

.field private static final h:Ljava/lang/String; = "anythink_lv_title_tv"

.field private static final i:Ljava/lang/String; = "anythink_lv_tv_install"

.field private static final j:Ljava/lang/String; = "anythink_lv_sv_starlevel"

.field private static final k:Ljava/lang/String; = "anythink_lv_sv_heat_level"

.field private static final l:Ljava/lang/String; = "anythink_lv_ration"

.field private static final m:Ljava/lang/String; = "anythink_lv_desc_tv"

.field private static final n:Ljava/lang/String; = "anythink_iv_flag"

.field private static final o:Ljava/lang/String; = "anythink_order_viewed_tv"

.field private static final p:Ljava/lang/String; = "anythink_order_layout_item"

.field private static final q:Ljava/lang/String; = "anythink_lv_iv_burl"

.field private static final r:Ljava/lang/String; = "501"

.field private static final s:Ljava/lang/String; = "\\.xml"

.field private static final t:Ljava/lang/String; = "\\/xml"

.field private static final u:Ljava/lang/String; = "_item.xml"


# instance fields
.field private b:Z

.field private c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b:Z

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p0, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_order_layout_item"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    invoke-direct {v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v2, "anythink_lv_iv"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    iput-object v2, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->c:Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v2, "anythink_lv_icon_iv"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iput-object v2, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->d:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v2, "anythink_lv_sv_starlevel"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iput-object v2, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->i:Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v2, "anythink_lv_ration"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    iput-object v2, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->b:Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/video/dynview/ordercamp/a/a;)Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    return-object p0
.end method

.method private a(I)V
    .locals 7

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->c:Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->d:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    if-eqz v0, :cond_3

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/videocommon/view/RoundImageView;->setBorderRadius(I)V

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->d:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iget-object v2, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->aX()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_4

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    :cond_4
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->i:Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aY()I

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;->setRatingAndUser(DI)V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p1, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->i:Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_5
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p1, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->b:Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    if-eqz p1, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setWidthRatio(F)V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p1, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->b:Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setHeightRatio(F)V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p1, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->b:Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setAutoscroll(Z)V

    :cond_6
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->c:Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    if-eqz v0, :cond_7

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    const/16 v5, 0xa

    const/high16 v6, -0x67000000

    invoke-virtual/range {v0 .. v6}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;->setCustomBorder(IIIIII)V

    :cond_7
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_lv_item_rl"

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_lv_title_tv"

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_lv_tv_install"

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_lv_desc_tv"

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_iv_flag"

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_order_viewed_tv"

    invoke-direct {p0, v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->h:Landroid/widget/TextView;

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$1;-><init>(Lcom/anythink/expressad/video/dynview/ordercamp/a/a;Landroid/widget/ImageView;Z)V

    invoke-virtual {v0, p2, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p0, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private b()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "anythink_order_layout_item"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    invoke-direct {v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v2, "anythink_lv_iv"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    iput-object v2, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->c:Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v2, "anythink_lv_icon_iv"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iput-object v2, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->d:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v2, "anythink_lv_sv_starlevel"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iput-object v2, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->i:Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v2, "anythink_lv_ration"

    invoke-static {v2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    iput-object v2, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->b:Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v1, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->bc()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v1, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    instance-of v0, v0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkTextView;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/h/b;->c(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v2, v2, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkTextView;

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkTextView;->setObjectAnimator(Landroid/animation/ObjectAnimator;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;

    invoke-direct {v2, p0, v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;-><init>(Lcom/anythink/expressad/video/dynview/ordercamp/a/a;Landroid/content/Context;)V

    invoke-virtual {v1, p1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p1, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    :try_start_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    const-string v0, "anythink_reward_viewed_text_str"

    const-string v1, "string"

    invoke-static {p1, v0, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p1, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_5
    return-void
.end method

.method private static c(Ljava/lang/String;)I
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

.method private d(Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const-string v0, "anythink_order_layout_item"

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout"

    invoke-static {v1, v0, v2}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    invoke-direct {v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_lv_iv"

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->c:Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_lv_icon_iv"

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->d:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_lv_sv_starlevel"

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->i:Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v1, "anythink_lv_ration"

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    iput-object v1, v0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->b:Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iput-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    :goto_0
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v0, "anythink_lv_item_rl"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->a:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v0, "anythink_lv_title_tv"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->e:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v0, "anythink_lv_tv_install"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v0, "anythink_lv_desc_tv"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->f:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v0, "anythink_iv_flag"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->j:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    const-string v0, "anythink_order_viewed_tv"

    invoke-direct {p0, v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->h:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->c:Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1, v0}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_2
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->d:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    if-eqz p3, :cond_3

    const/16 v1, 0x19

    invoke-virtual {p3, v1}, Lcom/anythink/expressad/videocommon/view/RoundImageView;->setBorderRadius(I)V

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->d:Lcom/anythink/expressad/videocommon/view/RoundImageView;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p3, v1, v2}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_3
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p3}, Lcom/anythink/expressad/out/j;->aX()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double p3, v1, v3

    if-gtz p3, :cond_4

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    :cond_4
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->i:Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    if-eqz p3, :cond_5

    iget-object v3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v3}, Lcom/anythink/expressad/out/j;->aY()I

    move-result v3

    invoke-virtual {p3, v1, v2, v3}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;->setRatingAndUser(DI)V

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->i:Lcom/anythink/expressad/video/dynview/widget/AnyThinkLevelLayoutView;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_5
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->b:Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    if-eqz p3, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setWidthRatio(F)V

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->b:Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    invoke-virtual {p3, v1}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setHeightRatio(F)V

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->b:Lcom/anythink/expressad/video/dynview/widget/ATRotationView;

    invoke-virtual {p3, v0}, Lcom/anythink/expressad/video/dynview/widget/ATRotationView;->setAutoscroll(Z)V

    :cond_6
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v1, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->c:Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    if-eqz v1, :cond_7

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/16 v6, 0xa

    const/high16 v7, -0x67000000

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;->setCustomBorder(IIIIII)V

    :cond_7
    :goto_1
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    if-eqz p3, :cond_d

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->d:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->e:Landroid/widget/TextView;

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v1, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->f:Landroid/widget/TextView;

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->bc()Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v1, v1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    if-eqz p3, :cond_b

    iget-object v1, p1, Lcom/anythink/expressad/out/j;->cU:Ljava/lang/String;

    instance-of p3, p3, Lcom/anythink/expressad/video/dynview/widget/AnyThinkTextView;

    if-eqz p3, :cond_a

    new-instance p3, Lcom/anythink/expressad/video/dynview/h/b;

    invoke-direct {p3}, Lcom/anythink/expressad/video/dynview/h/b;-><init>()V

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    invoke-static {p3}, Lcom/anythink/expressad/video/dynview/h/b;->c(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    iget-object v2, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object v2, v2, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    check-cast v2, Lcom/anythink/expressad/video/dynview/widget/AnyThinkTextView;

    invoke-virtual {v2, p3}, Lcom/anythink/expressad/video/dynview/widget/AnyThinkTextView;->setObjectAnimator(Landroid/animation/ObjectAnimator;)V

    :cond_a
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->g:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->j:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p3, :cond_c

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p3

    invoke-virtual {p3}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->aE()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;

    invoke-direct {v2, p0, p3}, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$2;-><init>(Lcom/anythink/expressad/video/dynview/ordercamp/a/a;Landroid/content/Context;)V

    invoke-virtual {v1, p1, v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p1, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->h:Landroid/widget/TextView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_d

    :try_start_3
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    const-string p3, "anythink_reward_viewed_text_str"

    const-string v1, "string"

    invoke-static {p1, p3, v1}, Lcom/anythink/expressad/foundation/h/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p3, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p3, p3, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/ordercamp/a/a;->c:Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;

    iget-object p1, p1, Lcom/anythink/expressad/video/dynview/ordercamp/a/a$a;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_d
    :goto_3
    return-object p2
.end method
