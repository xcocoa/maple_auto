.class public Lcom/octopus/ad/utils/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/utils/h$a;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/octopus/ad/utils/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    return-void
.end method

.method private a(II)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenHeightDp(Landroid/content/Context;)F

    move-result v0

    const-string v1, "50%"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v2, "85%"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ",adHeightDp = "

    const-string v5, "OctopusAd"

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screenHeightDp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v2, p2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const-string v2, "63"

    goto :goto_0

    :cond_1
    const-string v2, "188"

    :goto_0
    const-string v0, "250"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "325"

    :goto_1
    const-string v3, "40"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    const-string v3, "65"

    :goto_2
    iget-object v6, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidthDp(Landroid/content/Context;)F

    move-result v6

    const-string v7, "%"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v1, v1, p1

    div-int/lit8 v1, v1, 0x64

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int v2, v2, p2

    div-int/lit8 v2, v2, 0x64

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int v2, p2, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adHeightDp = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", centerYInt = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v10, 0x190

    if-eqz v8, :cond_7

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v8, 0x43c80000    # 400.0f

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_6

    mul-int/lit16 v0, v0, 0x190

    div-int/lit8 v0, v0, 0x64

    goto :goto_5

    :cond_6
    float-to-int v6, v6

    mul-int v6, v6, v0

    div-int/lit8 v6, v6, 0x64

    move v10, v6

    goto :goto_6

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v10, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    move v10, v0

    :goto_6
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, v10

    div-int/lit8 v0, v0, 0x64

    goto :goto_7

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_7
    iget-object v3, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    int-to-float v6, v10

    invoke-static {v3, v6}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v6, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v6, v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v6, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v6, v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v6, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v6, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "widthInt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",heightInt = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v6, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "centerYInt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",centerXInt = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",adWidthDp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    iput v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iput v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return-object v6
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/h;)Lcom/octopus/ad/utils/h$a;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/utils/h;->b:Lcom/octopus/ad/utils/h$a;

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/octopus/ad/utils/h;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/octopus/ad/utils/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/octopus/ad/utils/h;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/octopus/ad/utils/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/octopus/ad/utils/h;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/octopus/ad/utils/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/octopus/ad/utils/h;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/octopus/ad/utils/h;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(IIZ)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adWidthDp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",adHeightDp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OctopusAd"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/octopus/ad/widget/RegionClickView;

    iget-object v1, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/octopus/ad/widget/RegionClickView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/octopus/ad/widget/RegionClickView;->setRegionalClickViewBean()V

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/utils/h;->a(II)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_1

    new-instance p1, Lcom/octopus/ad/utils/h$1;

    invoke-direct {p1, p0}, Lcom/octopus/ad/utils/h$1;-><init>(Lcom/octopus/ad/utils/h;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/octopus/ad/utils/h$2;

    invoke-direct {p1, p0}, Lcom/octopus/ad/utils/h$2;-><init>(Lcom/octopus/ad/utils/h;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/utils/h;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/octopus/ad/utils/h;->b:Lcom/octopus/ad/utils/h$a;

    return-void
.end method

.method public a(Lcom/octopus/ad/utils/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/h;->b:Lcom/octopus/ad/utils/h$a;

    return-void
.end method
