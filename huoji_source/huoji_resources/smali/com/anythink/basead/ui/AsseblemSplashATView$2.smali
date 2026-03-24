.class public final Lcom/anythink/basead/ui/AsseblemSplashATView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/AsseblemSplashATView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/ui/component/RoundImageView;

.field public final synthetic b:Lcom/anythink/basead/ui/AsseblemSplashATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/AsseblemSplashATView;Lcom/anythink/core/common/ui/component/RoundImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$2;->b:Lcom/anythink/basead/ui/AsseblemSplashATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$2;->a:Lcom/anythink/core/common/ui/component/RoundImageView;

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

    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$2;->b:Lcom/anythink/basead/ui/AsseblemSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$2;->a:Lcom/anythink/core/common/ui/component/RoundImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
