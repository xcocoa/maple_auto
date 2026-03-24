.class public final Lcom/anythink/basead/ui/MediaATView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/MediaATView;->init(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/MediaATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/MediaATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/MediaATView$1;->a:Lcom/anythink/basead/ui/MediaATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/anythink/basead/ui/MediaATView;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "load: image load fail:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/MediaATView$1;->a:Lcom/anythink/basead/ui/MediaATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseMediaATView;->a:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/MediaATView$1;->a:Lcom/anythink/basead/ui/MediaATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/MediaATView;->a(Lcom/anythink/basead/ui/MediaATView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/MediaATView$1;->a:Lcom/anythink/basead/ui/MediaATView;

    new-instance v0, Lcom/anythink/basead/ui/MediaATView$1$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/ui/MediaATView$1$1;-><init>(Lcom/anythink/basead/ui/MediaATView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/anythink/basead/ui/MediaATView$1;->a:Lcom/anythink/basead/ui/MediaATView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/MediaATView$1$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/MediaATView$1$2;-><init>(Lcom/anythink/basead/ui/MediaATView$1;)V

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    :cond_0
    return-void
.end method
