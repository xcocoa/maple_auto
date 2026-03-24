.class public final Lcom/anythink/basead/ui/MediaATView$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MediaATView$1;->onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/MediaATView$1;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MediaATView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MediaATView$1$2;->a:Lcom/anythink/basead/ui/MediaATView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/MediaATView$1$2;->a:Lcom/anythink/basead/ui/MediaATView$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/MediaATView$1;->a:Lcom/anythink/basead/ui/MediaATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MediaATView;->b(Lcom/anythink/basead/ui/MediaATView;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/MediaATView$1$2;->a:Lcom/anythink/basead/ui/MediaATView$1;

    iget-object v0, v0, Lcom/anythink/basead/ui/MediaATView$1;->a:Lcom/anythink/basead/ui/MediaATView;

    invoke-static {v0}, Lcom/anythink/basead/ui/MediaATView;->b(Lcom/anythink/basead/ui/MediaATView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
