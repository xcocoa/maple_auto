.class public Lcn/haorui/sdk/core/view/gif/GifImageView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/core/view/gif/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/haorui/sdk/core/view/gif/GifImageView;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/core/view/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/view/gif/GifImageView$a;->a:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView$a;->a:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-static {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->access$000(Lcn/haorui/sdk/core/view/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView$a;->a:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-static {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->access$000(Lcn/haorui/sdk/core/view/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/haorui/sdk/core/view/gif/GifImageView$a;->a:Lcn/haorui/sdk/core/view/gif/GifImageView;

    invoke-static {v0}, Lcn/haorui/sdk/core/view/gif/GifImageView;->access$000(Lcn/haorui/sdk/core/view/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
