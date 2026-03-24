.class public final Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->j()V
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

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->b(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView$2;->a:Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;->b(Lcom/anythink/basead/ui/animplayerview/WebLandpagePlayerView;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    return-void
.end method
