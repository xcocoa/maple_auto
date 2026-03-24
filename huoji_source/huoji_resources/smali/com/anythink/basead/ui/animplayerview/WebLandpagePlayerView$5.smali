.class public final Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->openInternalWebView(Ljava/lang/String;Lcom/anythink/core/api/IOfferClickHandler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->b(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->D:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/core/basead/a/a;->a(Ljava/lang/String;)Lcom/anythink/core/common/f/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    iget v2, v0, Lcom/anythink/core/common/f/bb;->l:I

    iput v2, v1, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->z:I

    invoke-static {v1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->b(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v0, v0, Lcom/anythink/core/common/f/bb;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->b(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->recordRedirectUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    iget-object v0, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    iget-object v1, v0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->y:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->d(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->b(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$5;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-static {v1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->e(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
