.class public final Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/foundation/g/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_4

    :try_start_0
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->d(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-boolean v1, p2, Lcom/anythink/expressad/video/module/AnythinkBaseView;->i:Z

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->d(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->d(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-virtual {p2, p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->blurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    iget-boolean v1, p2, Lcom/anythink/expressad/video/module/AnythinkBaseView;->i:Z

    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p2, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p2}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    nop

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView$11;->a:Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;

    invoke-static {p1}, Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;->e(Lcom/anythink/expressad/video/module/AnythinkNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
