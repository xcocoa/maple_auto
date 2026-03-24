.class public Lcom/octopus/ad/utils/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/utils/j$a;
    }
.end annotation


# static fields
.field private static b:Landroid/hardware/SensorManager;


# instance fields
.field public a:Lcom/octopus/ad/widget/ShakeView;

.field private c:Landroid/content/Context;

.field private d:D

.field private e:D

.field private f:D

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:Lcom/octopus/ad/utils/j$a;

.field private r:Z

.field private s:I

.field private final t:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/octopus/ad/utils/j;->k:I

    iput v0, p0, Lcom/octopus/ad/utils/j;->l:I

    const/high16 v1, -0x3d380000    # -100.0f

    iput v1, p0, Lcom/octopus/ad/utils/j;->m:F

    iput v1, p0, Lcom/octopus/ad/utils/j;->n:F

    iput v1, p0, Lcom/octopus/ad/utils/j;->o:F

    iput v0, p0, Lcom/octopus/ad/utils/j;->p:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/octopus/ad/utils/j;->q:Lcom/octopus/ad/utils/j$a;

    iput-boolean v0, p0, Lcom/octopus/ad/utils/j;->r:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/octopus/ad/utils/j;->s:I

    new-instance v0, Lcom/octopus/ad/utils/j$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/j$1;-><init>(Lcom/octopus/ad/utils/j;)V

    iput-object v0, p0, Lcom/octopus/ad/utils/j;->t:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    sput-object p1, Lcom/octopus/ad/utils/j;->b:Landroid/hardware/SensorManager;

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/j;)F
    .locals 0

    iget p0, p0, Lcom/octopus/ad/utils/j;->m:F

    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/j;F)F
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/j;->m:F

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/j;I)I
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/j;->p:I

    return p1
.end method

.method private a(FFFD)Z
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x402399999999999aL    # 9.8

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    cmpl-double p3, p1, p4

    if-lez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/j;FFFD)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/octopus/ad/utils/j;->a(FFFD)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/utils/j;)F
    .locals 0

    iget p0, p0, Lcom/octopus/ad/utils/j;->n:F

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/utils/j;F)F
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/j;->n:F

    return p1
.end method

.method private b(FFFD)Z
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x402399999999999aL    # 9.8

    div-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    float-to-double p1, p3

    div-double/2addr p1, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    cmpl-double p3, p1, p4

    if-lez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/utils/j;FFFD)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/octopus/ad/utils/j;->b(FFFD)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/octopus/ad/utils/j;)F
    .locals 0

    iget p0, p0, Lcom/octopus/ad/utils/j;->o:F

    return p0
.end method

.method public static synthetic c(Lcom/octopus/ad/utils/j;F)F
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/j;->o:F

    return p1
.end method

.method public static synthetic d(Lcom/octopus/ad/utils/j;)D
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/utils/j;->f:D

    return-wide v0
.end method

.method public static synthetic e(Lcom/octopus/ad/utils/j;)I
    .locals 2

    iget v0, p0, Lcom/octopus/ad/utils/j;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/octopus/ad/utils/j;->l:I

    return v0
.end method

.method public static e(I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    if-gt v0, p0, :cond_0

    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method private e()V
    .locals 4

    iget v0, p0, Lcom/octopus/ad/utils/j;->j:I

    invoke-static {v0}, Lcom/octopus/ad/utils/j;->e(I)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/octopus/ad/utils/j$2;

    invoke-direct {v1, p0}, Lcom/octopus/ad/utils/j$2;-><init>(Lcom/octopus/ad/utils/j;)V

    iget v2, p0, Lcom/octopus/ad/utils/j;->i:I

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/utils/c;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/octopus/ad/utils/j;)D
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/utils/j;->d:D

    return-wide v0
.end method

.method public static synthetic g(Lcom/octopus/ad/utils/j;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/utils/j;->p:I

    return p0
.end method

.method public static synthetic h(Lcom/octopus/ad/utils/j;)D
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/utils/j;->e:D

    return-wide v0
.end method

.method public static synthetic i(Lcom/octopus/ad/utils/j;)I
    .locals 2

    iget v0, p0, Lcom/octopus/ad/utils/j;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/octopus/ad/utils/j;->k:I

    return v0
.end method

.method public static synthetic j(Lcom/octopus/ad/utils/j;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/utils/j;->k:I

    return p0
.end method

.method public static synthetic k(Lcom/octopus/ad/utils/j;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/utils/j;->g:I

    return p0
.end method

.method public static synthetic l(Lcom/octopus/ad/utils/j;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/utils/j;->l:I

    return p0
.end method

.method public static synthetic m(Lcom/octopus/ad/utils/j;)I
    .locals 0

    iget p0, p0, Lcom/octopus/ad/utils/j;->h:I

    return p0
.end method


# virtual methods
.method public a(II)Landroid/view/View;
    .locals 10

    const-string v0, "OctopusAd"

    const-string v1, "enter getShakeView"

    invoke-static {v0, v1}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/octopus/ad/utils/j;->h:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/octopus/ad/utils/j;->g:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/octopus/ad/utils/j;->j:I

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    new-instance v1, Lcom/octopus/ad/widget/ShakeView;

    iget-object v2, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/octopus/ad/widget/ShakeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/octopus/ad/utils/j;->a:Lcom/octopus/ad/widget/ShakeView;

    const-string v1, "70%"

    const-string v2, "50%"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const-string v3, "140"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "180"

    if-nez v4, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v5

    :goto_2
    iget-object v5, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidthDp(Landroid/content/Context;)F

    move-result v5

    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int v2, v2, p1

    div-int/lit8 v2, v2, 0x64

    goto :goto_3

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, p2

    div-int/lit8 v1, v1, 0x64

    goto :goto_4

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    const/16 v9, 0x190

    if-eqz v7, :cond_7

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/high16 v7, 0x43c80000    # 400.0f

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_6

    mul-int/lit16 v4, v4, 0x190

    div-int/lit8 v4, v4, 0x64

    goto :goto_5

    :cond_6
    float-to-int v5, v5

    mul-int v5, v5, v4

    div-int/lit8 v5, v5, 0x64

    move v9, v5

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v9, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    move v9, v4

    :goto_6
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int v3, v3, v9

    div-int/lit8 v3, v3, 0x64

    goto :goto_7

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_7
    iget-object v4, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    int-to-float v5, v9

    invoke-static {v4, v5}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    int-to-float v3, v3

    invoke-static {v5, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v5, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v5, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v5, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v5, v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "widthInt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",heightInt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_a

    const/16 v4, 0xb4

    :cond_a
    if-nez v3, :cond_b

    move v3, v4

    :cond_b
    new-instance v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "centerYInt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",centerXInt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",adWidthDp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",adHeightDp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    int-to-float p2, p2

    invoke-static {v1, p2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    div-int/lit8 v1, p2, 0x2

    :cond_c
    if-nez v2, :cond_d

    iget-object p2, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    int-to-float p1, p1

    invoke-static {p2, p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    div-int/lit8 v2, p1, 0x2

    :cond_d
    div-int/lit8 p1, v3, 0x2

    sub-int/2addr v1, p1

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    div-int/lit8 p1, v4, 0x2

    sub-int/2addr v2, p1

    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object p1, p0, Lcom/octopus/ad/utils/j;->a:Lcom/octopus/ad/widget/ShakeView;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "topMargin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",leftMargin = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",widthInt = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/utils/j;->a:Lcom/octopus/ad/widget/ShakeView;

    invoke-virtual {p1}, Lcom/octopus/ad/widget/ShakeView;->startShake()V

    invoke-virtual {p0}, Lcom/octopus/ad/utils/j;->b()V

    iget-object p1, p0, Lcom/octopus/ad/utils/j;->a:Lcom/octopus/ad/widget/ShakeView;

    return-object p1

    :cond_e
    :goto_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter callBackShakeHappened and mShakeStateListener != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/utils/j;->q:Lcom/octopus/ad/utils/j$a;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",!isCallBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/octopus/ad/utils/j;->r:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OctopusAd"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/utils/j;->q:Lcom/octopus/ad/utils/j$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/utils/j;->r:Z

    if-nez v0, :cond_1

    const-string v0, "callback onShakeHappened()"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/utils/j;->q:Lcom/octopus/ad/utils/j$a;

    invoke-interface {v0}, Lcom/octopus/ad/utils/j$a;->a()V

    iput-boolean v2, p0, Lcom/octopus/ad/utils/j;->r:Z

    iget-object v0, p0, Lcom/octopus/ad/utils/j;->a:Lcom/octopus/ad/widget/ShakeView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/widget/ShakeView;->stopShake()V

    invoke-virtual {p0}, Lcom/octopus/ad/utils/j;->c()V

    :cond_1
    return-void
.end method

.method public a(D)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/octopus/ad/utils/j;->a(I)V

    invoke-virtual {p0, p1, p2}, Lcom/octopus/ad/utils/j;->b(D)V

    invoke-virtual {p0, p1, p2}, Lcom/octopus/ad/utils/j;->c(D)V

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/octopus/ad/utils/j;->d(D)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/octopus/ad/utils/j;->d(I)V

    const/16 p2, 0x3e8

    invoke-virtual {p0, p2}, Lcom/octopus/ad/utils/j;->b(I)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/utils/j;->c(I)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/utils/j;->f(I)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/j;->g:I

    return-void
.end method

.method public a(Lcom/octopus/ad/utils/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/j;->q:Lcom/octopus/ad/utils/j$a;

    return-void
.end method

.method public b()V
    .locals 4

    sget-object v0, Lcom/octopus/ad/utils/j;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/utils/j;->t:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const v3, 0x186a0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method public b(D)V
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/utils/j;->d:D

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/j;->i:I

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "OctopusAd"

    const-string v1, "enter unRegisterShakeListenerAndSetDefault"

    invoke-static {v0, v1}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/octopus/ad/utils/j;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/utils/j;->t:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/utils/j;->d()V

    iget-object v0, p0, Lcom/octopus/ad/utils/j;->a:Lcom/octopus/ad/widget/ShakeView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/widget/ShakeView;->stopShake()V

    :cond_1
    return-void
.end method

.method public c(D)V
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/utils/j;->e:D

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/j;->j:I

    invoke-direct {p0}, Lcom/octopus/ad/utils/j;->e()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/utils/j;->r:Z

    iput v0, p0, Lcom/octopus/ad/utils/j;->k:I

    iput v0, p0, Lcom/octopus/ad/utils/j;->l:I

    const/high16 v1, -0x3d380000    # -100.0f

    iput v1, p0, Lcom/octopus/ad/utils/j;->m:F

    iput v1, p0, Lcom/octopus/ad/utils/j;->n:F

    iput v1, p0, Lcom/octopus/ad/utils/j;->o:F

    iput v0, p0, Lcom/octopus/ad/utils/j;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/utils/j;->q:Lcom/octopus/ad/utils/j$a;

    iput-object v0, p0, Lcom/octopus/ad/utils/j;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/octopus/ad/utils/j;->a:Lcom/octopus/ad/widget/ShakeView;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/octopus/ad/utils/j;->s:I

    return-void
.end method

.method public d(D)V
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/utils/j;->f:D

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/j;->h:I

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/j;->s:I

    return-void
.end method
