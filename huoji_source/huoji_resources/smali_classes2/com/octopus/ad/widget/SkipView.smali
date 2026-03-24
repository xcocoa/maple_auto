.class public Lcom/octopus/ad/widget/SkipView;
.super Landroid/widget/TextView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/widget/SkipView$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/text/TextPaint;

.field private c:F

.field private d:F

.field private e:Z

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:I

.field private i:Z

.field private j:Landroid/util/SparseIntArray;

.field private final k:Lcom/octopus/ad/widget/SkipView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/octopus/ad/widget/SkipView;->d:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/widget/SkipView;->f:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/octopus/ad/widget/SkipView;->i:Z

    new-instance v0, Lcom/octopus/ad/widget/SkipView$1;

    invoke-direct {v0, p0}, Lcom/octopus/ad/widget/SkipView$1;-><init>(Lcom/octopus/ad/widget/SkipView;)V

    iput-object v0, p0, Lcom/octopus/ad/widget/SkipView;->k:Lcom/octopus/ad/widget/SkipView$a;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/SkipView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x41a00000    # 20.0f

    iput p2, p0, Lcom/octopus/ad/widget/SkipView;->d:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/octopus/ad/widget/SkipView;->f:Landroid/graphics/RectF;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/octopus/ad/widget/SkipView;->i:Z

    new-instance p2, Lcom/octopus/ad/widget/SkipView$1;

    invoke-direct {p2, p0}, Lcom/octopus/ad/widget/SkipView$1;-><init>(Lcom/octopus/ad/widget/SkipView;)V

    iput-object p2, p0, Lcom/octopus/ad/widget/SkipView;->k:Lcom/octopus/ad/widget/SkipView$a;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/SkipView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x41a00000    # 20.0f

    iput p2, p0, Lcom/octopus/ad/widget/SkipView;->d:F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/octopus/ad/widget/SkipView;->f:Landroid/graphics/RectF;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/octopus/ad/widget/SkipView;->i:Z

    new-instance p2, Lcom/octopus/ad/widget/SkipView$1;

    invoke-direct {p2, p0}, Lcom/octopus/ad/widget/SkipView$1;-><init>(Lcom/octopus/ad/widget/SkipView;)V

    iput-object p2, p0, Lcom/octopus/ad/widget/SkipView;->k:Lcom/octopus/ad/widget/SkipView$a;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/widget/SkipView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private a(IILcom/octopus/ad/widget/SkipView$a;Landroid/graphics/RectF;)I
    .locals 2

    iget-boolean v0, p0, Lcom/octopus/ad/widget/SkipView;->i:Z

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/octopus/ad/widget/SkipView;->b(IILcom/octopus/ad/widget/SkipView$a;Landroid/graphics/RectF;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/widget/SkipView;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/octopus/ad/widget/SkipView;->b(IILcom/octopus/ad/widget/SkipView$a;Landroid/graphics/RectF;)I

    move-result p1

    iget-object p2, p0, Lcom/octopus/ad/widget/SkipView;->j:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/widget/SkipView;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/widget/SkipView;->b:Landroid/text/TextPaint;

    return-object p0
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/widget/SkipView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const-string v1, "#80000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string p2, "#C0C0C0"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    const/high16 p2, 0x42340000    # 45.0f

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-boolean p1, p0, Lcom/octopus/ad/widget/SkipView;->e:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lcom/octopus/ad/widget/SkipView;->d:F

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/octopus/ad/widget/SkipView;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/octopus/ad/internal/utilities/ViewUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/octopus/ad/widget/SkipView;->h:I

    iget-object v2, p0, Lcom/octopus/ad/widget/SkipView;->g:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    iget v1, p0, Lcom/octopus/ad/widget/SkipView;->c:F

    float-to-int v1, v1

    iget-object v3, p0, Lcom/octopus/ad/widget/SkipView;->k:Lcom/octopus/ad/widget/SkipView$a;

    invoke-direct {p0, p1, v1, v3, v2}, Lcom/octopus/ad/widget/SkipView;->a(IILcom/octopus/ad/widget/SkipView$a;Landroid/graphics/RectF;)I

    move-result p1

    int-to-float p1, p1

    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private static b(IILcom/octopus/ad/widget/SkipView$a;Landroid/graphics/RectF;)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    move v0, p1

    move p1, p0

    :goto_0
    if-gt p0, v0, :cond_1

    add-int p1, p0, v0

    ushr-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p1, p3}, Lcom/octopus/ad/widget/SkipView$a;->a(ILandroid/graphics/RectF;)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    move v2, p1

    move p1, p0

    move p0, v2

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    move v0, p1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/widget/SkipView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/widget/SkipView;->f:Landroid/graphics/RectF;

    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/octopus/ad/widget/SkipView;->a(Landroid/content/Context;I)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/widget/SkipView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/octopus/ad/widget/SkipView;->c:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/widget/SkipView;->g:Landroid/graphics/RectF;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/widget/SkipView;->j:Landroid/util/SparseIntArray;

    iput-boolean v0, p0, Lcom/octopus/ad/widget/SkipView;->e:Z

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v1, 0x35

    invoke-direct {p1, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/widget/SkipView;->j:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/octopus/ad/widget/SkipView;->a()V

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    invoke-direct {p0}, Lcom/octopus/ad/widget/SkipView;->a()V

    return-void
.end method

.method public setData(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/octopus/ad/widget/SkipView;->a(Landroid/content/Context;I)V

    iput p2, p0, Lcom/octopus/ad/widget/SkipView;->a:I

    return-void
.end method
