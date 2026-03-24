.class public final Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;

    iget-object v1, v1, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$1;->b:Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;

    iget-object v2, v2, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1;->a:Lcom/anythink/basead/ui/WrapRoundImageView;

    iget-object v3, p0, Lcom/anythink/basead/ui/animplayerview/BaseMainAnimPlayerView$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v0, v1}, Lcom/anythink/basead/ui/WrapRoundImageView;->setBitmapAndResize(Landroid/graphics/Bitmap;II)[I

    return-void
.end method
