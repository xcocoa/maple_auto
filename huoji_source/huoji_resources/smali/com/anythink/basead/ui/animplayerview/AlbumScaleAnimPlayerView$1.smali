.class public final Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    const-string p2, "40003"

    const-string v0, "Animation render fail"

    invoke-static {p2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    new-instance v0, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/animplayerview/scale/AlbumScaleAnimatorView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;Lcom/anythink/basead/ui/animplayerview/c;)Lcom/anythink/basead/ui/animplayerview/c;

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->b(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/ui/animplayerview/b;->setBitmapResources(Ljava/util/List;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-interface {p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/c;->addMainView(Landroid/graphics/Bitmap;[Lcom/anythink/basead/ui/WrapRoundImageView;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->c(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->d(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Z

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView$1;->a:Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/AlbumScaleAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/b;->start()V

    :cond_1
    return-void
.end method
