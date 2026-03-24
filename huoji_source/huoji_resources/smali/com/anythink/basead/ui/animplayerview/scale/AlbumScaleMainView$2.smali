.class public final Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->initView(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$2;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$2;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$2;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;->b(Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;)Lcom/anythink/basead/ui/WrapRoundImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$2;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$2;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView$2;->b:Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleMainView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/basead/ui/WrapRoundImageView;->setBitmapAndResize(Landroid/graphics/Bitmap;II)[I

    return-void
.end method
