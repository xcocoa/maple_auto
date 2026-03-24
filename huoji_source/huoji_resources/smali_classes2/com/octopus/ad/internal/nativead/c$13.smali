.class public Lcom/octopus/ad/internal/nativead/c$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Lcom/octopus/ad/internal/nativead/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/c;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c$13;->b:Lcom/octopus/ad/internal/nativead/c;

    iput-object p2, p0, Lcom/octopus/ad/internal/nativead/c$13;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$13;->b:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->d(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    move-result-object v0

    const v1, 0x138e5

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$13;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c$13;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x11

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/octopus/ad/internal/nativead/c$13;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$13;->b:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/c;->e(Lcom/octopus/ad/internal/nativead/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/octopus/ad/internal/nativead/c$13;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/octopus/ad/R$drawable;->oct_ic_close:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const v2, 0x800005

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/octopus/ad/internal/nativead/c$13$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/nativead/c$13$1;-><init>(Lcom/octopus/ad/internal/nativead/c$13;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$13;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$13;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$13;->b:Lcom/octopus/ad/internal/nativead/c;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$13;->a:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/nativead/c;->b(Lcom/octopus/ad/internal/nativead/c;Landroid/view/View;)Z

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$13;->b:Lcom/octopus/ad/internal/nativead/c;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$13;->a:Landroid/view/ViewGroup;

    new-instance v1, Lcom/octopus/ad/internal/nativead/c$13$2;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/nativead/c$13$2;-><init>(Lcom/octopus/ad/internal/nativead/c$13;)V

    invoke-static {p1, v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$13;->b:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {p1}, Lcom/octopus/ad/internal/nativead/c;->d(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    move-result-object p1

    const v0, 0x138e5

    invoke-interface {p1, v0}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    :goto_0
    return-void
.end method
