.class public Lcom/octopus/ad/internal/view/AdViewImpl$13;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/AdViewImpl;->a(IIIILcom/octopus/ad/internal/view/e$a;ZLcom/octopus/ad/internal/view/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/internal/view/e;

.field public final synthetic b:Lcom/octopus/ad/internal/view/AdViewImpl;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/AdViewImpl;Landroid/content/Context;Lcom/octopus/ad/internal/view/e;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    iput-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->a:Lcom/octopus/ad/internal/view/e;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "DrawAllocation"
        }
    .end annotation

    const/4 p1, 0x2

    new-array p2, p1, [I

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    new-instance p3, Landroid/graphics/Point;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4}, Landroid/graphics/Point;-><init>(II)V

    const/4 p5, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->a:Lcom/octopus/ad/internal/view/e;

    iget-object v0, v0, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :cond_0
    new-array v0, p1, [I

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-interface {v2}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/l;

    move-result-object v2

    sget-object v3, Lcom/octopus/ad/internal/l;->c:Lcom/octopus/ad/internal/l;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v2, p4, p4}, Landroid/widget/FrameLayout;->measure(II)V

    sget-object v2, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Point;

    sget-object v3, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sget-object v4, Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;->INTERSTITIALADVIEW_TO_USE:Lcom/octopus/ad/internal/view/InterstitialAdViewImpl;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v2, p4, p4}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget v4, v4, Lcom/octopus/ad/internal/view/AdViewImpl;->l:I

    sub-int v5, v3, v4

    iget v6, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    if-eqz v1, :cond_2

    aget v1, v0, p4

    iget v4, p3, Landroid/graphics/Point;->x:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget v3, v3, Lcom/octopus/ad/internal/view/AdViewImpl;->l:I

    sub-int v5, v1, v3

    aget v1, v0, p5

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int/2addr v1, p3

    iget-object p3, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    iget p3, p3, Lcom/octopus/ad/internal/view/AdViewImpl;->l:I

    sub-int v6, v1, p3

    aget p3, v0, p4

    aget v0, v0, p5

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_2
    aget v1, p2, p4

    add-int/2addr v1, p5

    if-lt v1, p3, :cond_3

    aget p3, p2, p4

    sub-int/2addr p3, p5

    if-gt p3, v5, :cond_3

    aget p3, p2, p5

    add-int/2addr p3, p5

    if-lt p3, v0, :cond_3

    aget p2, p2, p5

    sub-int/2addr p2, p5

    if-le p2, v6, :cond_4

    :cond_3
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p3, 0x35

    const/4 p4, -0x2

    invoke-direct {p2, p4, p4, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 p3, 0x28

    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance p3, Lcom/octopus/ad/internal/view/AdViewImpl$13$1;

    invoke-direct {p3, p0, p2}, Lcom/octopus/ad/internal/view/AdViewImpl$13$1;-><init>(Lcom/octopus/ad/internal/view/AdViewImpl$13;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->l(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/octopus/ad/R$drawable;->oct_close_background:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->l(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/octopus/ad/R$color;->oct_text_selector:I

    invoke-static {p3, p4}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p2}, Lcom/octopus/ad/internal/view/AdViewImpl;->l(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p2

    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/octopus/ad/internal/view/AdViewImpl$13;->b:Lcom/octopus/ad/internal/view/AdViewImpl;

    invoke-static {p1}, Lcom/octopus/ad/internal/view/AdViewImpl;->l(Lcom/octopus/ad/internal/view/AdViewImpl;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    sget p2, Lcom/octopus/ad/R$string;->skip_ad:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    return-void
.end method
