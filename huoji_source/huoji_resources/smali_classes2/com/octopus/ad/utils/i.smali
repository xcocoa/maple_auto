.class public Lcom/octopus/ad/utils/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/utils/i$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Lcom/octopus/ad/utils/i$a;

.field private g:Z

.field private h:I

.field private i:Lcom/octopus/ad/widget/ScrollClickView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/utils/i;->f:Lcom/octopus/ad/utils/i$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/utils/i;->g:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/octopus/ad/utils/i;->h:I

    iput-object p1, p0, Lcom/octopus/ad/utils/i;->c:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/utils/i;)Lcom/octopus/ad/widget/ScrollClickView;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    return-object p0
.end method

.method public static synthetic b(Lcom/octopus/ad/utils/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/utils/i;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static c(I)Landroid/util/Pair;
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

.method private d()V
    .locals 4

    iget v0, p0, Lcom/octopus/ad/utils/i;->e:I

    invoke-static {v0}, Lcom/octopus/ad/utils/i;->c(I)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/octopus/ad/utils/i$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/utils/i$1;-><init>(Lcom/octopus/ad/utils/i;)V

    iget v2, p0, Lcom/octopus/ad/utils/i;->d:I

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


# virtual methods
.method public a(II)Landroid/view/View;
    .locals 7

    const-string v0, "%"

    const-string v1, "50%"

    const-string v2, "ScrollClickUtil"

    const-string v3, "enter getScrollClick"

    invoke-static {v2, v3}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/octopus/ad/utils/i;->c:Landroid/content/Context;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    new-instance v3, Lcom/octopus/ad/widget/ScrollClickView;

    iget-object v5, p0, Lcom/octopus/ad/utils/i;->c:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/octopus/ad/widget/ScrollClickView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    const-string v5, "up"

    invoke-virtual {v3, v5}, Lcom/octopus/ad/widget/ScrollClickView;->setScrollDirection(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    const-string v5, "\u5411\u4e0a\u6ed1\u52a8"

    invoke-virtual {v3, v5}, Lcom/octopus/ad/widget/ScrollClickView;->setTitleText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Lcom/octopus/ad/widget/ScrollClickView;->setTitleFont(I)V

    iget-object v3, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    const-string v5, "\u89e3\u9501\u66f4\u591a\u6709\u8da3\u5185\u5bb9"

    invoke-virtual {v3, v5}, Lcom/octopus/ad/widget/ScrollClickView;->setDetailText(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Lcom/octopus/ad/widget/ScrollClickView;->setDetailsFont(I)V

    const-string v3, "50"

    const-string v5, "80"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-virtual {v6, v3}, Lcom/octopus/ad/widget/ScrollClickView;->setHandWidth(I)V

    iget-object v3, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-virtual {v3, v5}, Lcom/octopus/ad/widget/ScrollClickView;->setScrollbarHeight(I)V

    iget-object v3, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-virtual {v3}, Lcom/octopus/ad/widget/ScrollClickView;->buildRealView()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int v3, v3, p1

    div-int/lit8 v3, v3, 0x64

    :goto_0
    iput v3, p0, Lcom/octopus/ad/utils/i;->a:I

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int v0, v0, p2

    div-int/lit8 v0, v0, 0x64

    :goto_2
    iput v0, p0, Lcom/octopus/ad/utils/i;->b:I

    goto :goto_3

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcom/octopus/ad/utils/i;->c:Landroid/content/Context;

    iget v1, p0, Lcom/octopus/ad/utils/i;->a:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/utils/i;->a:I

    iget-object v0, p0, Lcom/octopus/ad/utils/i;->c:Landroid/content/Context;

    iget v1, p0, Lcom/octopus/ad/utils/i;->b:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/utils/i;->b:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topInt = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/octopus/ad/utils/i;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",centerXInt = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/octopus/ad/utils/i;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",adWidthDp = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",adHeightDp = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/utils/i$2;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/octopus/ad/utils/i$2;-><init>(Lcom/octopus/ad/utils/i;IILandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    new-instance p2, Lcom/octopus/ad/utils/i$3;

    invoke-direct {p2, p0}, Lcom/octopus/ad/utils/i$3;-><init>(Lcom/octopus/ad/utils/i;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    return-object p1

    :catchall_0
    return-object v4
.end method

.method public a()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/octopus/ad/utils/i;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/octopus/ad/utils/i;->b(I)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/i;->d:I

    return-void
.end method

.method public a(Lcom/octopus/ad/utils/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/i;->f:Lcom/octopus/ad/utils/i$a;

    return-void
.end method

.method public b()V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter callBackShakeHappened and mShakeStateListener != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/octopus/ad/utils/i;->f:Lcom/octopus/ad/utils/i$a;

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

    iget-boolean v1, p0, Lcom/octopus/ad/utils/i;->g:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollClickUtil"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/utils/i;->f:Lcom/octopus/ad/utils/i$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/octopus/ad/utils/i;->g:Z

    if-nez v0, :cond_1

    const-string v0, "callback onShakeHappened()"

    invoke-static {v1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/octopus/ad/utils/i;->f:Lcom/octopus/ad/utils/i$a;

    const-string v4, "100"

    const-string v5, "200"

    const-string v6, "105"

    const-string v7, "206"

    const-string v8, "100"

    const-string v9, "200"

    const-string v10, "105"

    const-string v11, "206"

    invoke-interface/range {v3 .. v11}, Lcom/octopus/ad/utils/i$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/octopus/ad/utils/i;->g:Z

    iget-object v0, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/widget/ScrollClickView;->stopAnim()V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/utils/i;->e:I

    invoke-direct {p0}, Lcom/octopus/ad/utils/i;->d()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/utils/i;->g:Z

    iget-object v0, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/widget/ScrollClickView;->stopAnim()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/utils/i;->f:Lcom/octopus/ad/utils/i$a;

    iput-object v0, p0, Lcom/octopus/ad/utils/i;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/octopus/ad/utils/i;->i:Lcom/octopus/ad/widget/ScrollClickView;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/octopus/ad/utils/i;->h:I

    return-void
.end method
