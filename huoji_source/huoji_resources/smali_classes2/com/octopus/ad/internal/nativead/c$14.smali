.class public Lcom/octopus/ad/internal/nativead/c$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/nativead/c;->a(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/octopus/ad/internal/nativead/c;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/nativead/c;Landroid/widget/ImageView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/nativead/c$14;->d:Lcom/octopus/ad/internal/nativead/c;

    iput-object p2, p0, Lcom/octopus/ad/internal/nativead/c$14;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/octopus/ad/internal/nativead/c$14;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/octopus/ad/internal/nativead/c$14;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoadFailed()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$14;->d:Lcom/octopus/ad/internal/nativead/c;

    invoke-static {v0}, Lcom/octopus/ad/internal/nativead/c;->d(Lcom/octopus/ad/internal/nativead/c;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    move-result-object v0

    const v1, 0x138e5

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$14;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$14;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$14;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$14;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$14;->d:Lcom/octopus/ad/internal/nativead/c;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$14;->b:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/octopus/ad/internal/nativead/c;->b(Lcom/octopus/ad/internal/nativead/c;Landroid/view/View;)Z

    iget-object p1, p0, Lcom/octopus/ad/internal/nativead/c$14;->d:Lcom/octopus/ad/internal/nativead/c;

    iget-object v0, p0, Lcom/octopus/ad/internal/nativead/c$14;->b:Landroid/view/ViewGroup;

    new-instance v1, Lcom/octopus/ad/internal/nativead/c$14$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/nativead/c$14$1;-><init>(Lcom/octopus/ad/internal/nativead/c$14;)V

    invoke-static {p1, v0, v1}, Lcom/octopus/ad/internal/nativead/c;->a(Lcom/octopus/ad/internal/nativead/c;Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V

    return-void
.end method
