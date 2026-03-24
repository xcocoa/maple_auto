.class public final Lcom/anythink/basead/ui/AsseblemSplashATView$3;
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
.field public final synthetic a:Landroid/widget/FrameLayout;

.field public final synthetic b:Lcom/anythink/basead/ui/WrapRoundImageView;

.field public final synthetic c:Lcom/anythink/core/common/ui/component/RoundImageView;

.field public final synthetic d:Lcom/anythink/basead/ui/AsseblemSplashATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/AsseblemSplashATView;Landroid/widget/FrameLayout;Lcom/anythink/basead/ui/WrapRoundImageView;Lcom/anythink/core/common/ui/component/RoundImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->d:Lcom/anythink/basead/ui/AsseblemSplashATView;

    iput-object p2, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->b:Lcom/anythink/basead/ui/WrapRoundImageView;

    iput-object p4, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->c:Lcom/anythink/core/common/ui/component/RoundImageView;

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

    iget-object v0, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->d:Lcom/anythink/basead/ui/AsseblemSplashATView;

    iget-object v0, v0, Lcom/anythink/basead/ui/BaseATView;->c:Lcom/anythink/core/common/f/l;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->a:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/basead/ui/AsseblemSplashATView$3$1;-><init>(Lcom/anythink/basead/ui/AsseblemSplashATView$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/anythink/basead/ui/AsseblemSplashATView$3;->d:Lcom/anythink/basead/ui/AsseblemSplashATView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/AsseblemSplashATView$3$2;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/AsseblemSplashATView$3$2;-><init>(Lcom/anythink/basead/ui/AsseblemSplashATView$3;)V

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    :cond_0
    return-void
.end method
