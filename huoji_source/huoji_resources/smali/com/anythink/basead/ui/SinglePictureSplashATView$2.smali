.class public final Lcom/anythink/basead/ui/SinglePictureSplashATView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SinglePictureSplashATView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/ui/component/RoundImageView;

.field public final synthetic b:Lcom/anythink/basead/ui/SinglePictureSplashATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/SinglePictureSplashATView;Lcom/anythink/core/common/ui/component/RoundImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->b:Lcom/anythink/basead/ui/SinglePictureSplashATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->a:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->b:Lcom/anythink/basead/ui/SinglePictureSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->b:Lcom/anythink/basead/ui/SinglePictureSplashATView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "myoffer_splash_ad_content_image_area"

    const-string v2, "id"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/anythink/basead/ui/WrapRoundImageView;

    iget-object v0, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->b:Lcom/anythink/basead/ui/SinglePictureSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->b:Lcom/anythink/core/common/f/m;

    iget-object v0, v0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->p()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$1;-><init>(Lcom/anythink/basead/ui/SinglePictureSplashATView$2;Lcom/anythink/basead/ui/WrapRoundImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object p1, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->a:Lcom/anythink/core/common/ui/component/RoundImageView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2;->b:Lcom/anythink/basead/ui/SinglePictureSplashATView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/SinglePictureSplashATView$2$2;-><init>(Lcom/anythink/basead/ui/SinglePictureSplashATView$2;)V

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    :cond_1
    return-void
.end method
