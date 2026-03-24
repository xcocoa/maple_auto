.class public final Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/res/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/WrapRoundImageView;

.field public final synthetic b:Lcom/anythink/basead/ui/WrapRoundImageView;

.field public final synthetic c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;Lcom/anythink/basead/ui/WrapRoundImageView;Lcom/anythink/basead/ui/WrapRoundImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->a:Lcom/anythink/basead/ui/WrapRoundImageView;

    iput-object p3, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->b:Lcom/anythink/basead/ui/WrapRoundImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    const-string p2, "40003"

    const-string v0, "Animation render fail"

    invoke-static {p2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->a(Lcom/anythink/basead/c/e;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/BaseAnimPlayerView;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Lcom/anythink/core/common/res/image/RecycleImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1$1;-><init>(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;)V

    invoke-static {p1, p2, v0}, Lcom/anythink/core/common/o/c;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/anythink/core/common/o/c$a;)V

    :cond_0
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->b(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    new-instance v0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->a(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;Lcom/anythink/basead/ui/animplayerview/c;)Lcom/anythink/basead/ui/animplayerview/c;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->b(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->b(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->b(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/anythink/basead/ui/WrapRoundImageView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->a:Lcom/anythink/basead/ui/WrapRoundImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->b:Lcom/anythink/basead/ui/WrapRoundImageView;

    aput-object v2, v0, v1

    invoke-interface {p1, p2, v0}, Lcom/anythink/basead/ui/animplayerview/c;->addMainView(Landroid/graphics/Bitmap;[Lcom/anythink/basead/ui/WrapRoundImageView;)V

    :cond_1
    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->c(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->d(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Z

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->b(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView$1;->c:Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;->b(Lcom/anythink/basead/ui/animplayerview/ViewPagerAnimPlayerView;)Lcom/anythink/basead/ui/animplayerview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/animplayerview/b;->start()V

    :cond_2
    return-void
.end method
