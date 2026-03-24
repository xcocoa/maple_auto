.class public final Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/ThirdPartyBannerATView;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/ThirdPartyBannerATView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/anythink/basead/ui/ThirdPartyBannerATView$3;->b:Lcom/anythink/basead/ui/ThirdPartyBannerATView;

    invoke-static {p1}, Lcom/anythink/basead/ui/ThirdPartyBannerATView;->c(Lcom/anythink/basead/ui/ThirdPartyBannerATView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
