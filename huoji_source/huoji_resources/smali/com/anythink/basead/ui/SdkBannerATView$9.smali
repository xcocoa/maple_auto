.class public final Lcom/anythink/basead/ui/SdkBannerATView$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/SdkBannerATView;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/core/common/res/image/RecycleImageView;

.field public final synthetic c:Lcom/anythink/core/common/res/image/RecycleImageView;

.field public final synthetic d:Lcom/anythink/basead/ui/SdkBannerATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/SdkBannerATView;Ljava/lang/String;Lcom/anythink/core/common/res/image/RecycleImageView;Lcom/anythink/core/common/res/image/RecycleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/SdkBannerATView$9;->d:Lcom/anythink/basead/ui/SdkBannerATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/SdkBannerATView$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/basead/ui/SdkBannerATView$9;->b:Lcom/anythink/core/common/res/image/RecycleImageView;

    iput-object p4, p0, Lcom/anythink/basead/ui/SdkBannerATView$9;->c:Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/ui/SdkBannerATView$9;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/SdkBannerATView$9;->b:Lcom/anythink/core/common/res/image/RecycleImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/SdkBannerATView$9;->d:Lcom/anythink/basead/ui/SdkBannerATView;

    new-instance v0, Lcom/anythink/basead/ui/SdkBannerATView$9$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/ui/SdkBannerATView$9$1;-><init>(Lcom/anythink/basead/ui/SdkBannerATView$9;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/anythink/basead/ui/SdkBannerATView$9;->d:Lcom/anythink/basead/ui/SdkBannerATView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/SdkBannerATView$9$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/SdkBannerATView$9$2;-><init>(Lcom/anythink/basead/ui/SdkBannerATView$9;)V

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    :cond_0
    return-void
.end method
