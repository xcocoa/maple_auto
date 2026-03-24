.class public Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private a:Lcom/anythink/expressad/advanced/d/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;)Lcom/anythink/expressad/advanced/d/c;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a:Lcom/anythink/expressad/advanced/d/c;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup$1;-><init>(Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a(I)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/advanced/d/c;->e(I)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 p1, 0x2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a(I)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a:Lcom/anythink/expressad/advanced/d/c;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/advanced/d/c;->e(I)V

    :cond_1
    return-void
.end method

.method public setProvider(Lcom/anythink/expressad/advanced/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/advanced/view/ATOutNativeAdvancedViewGroup;->a:Lcom/anythink/expressad/advanced/d/c;

    return-void
.end method
