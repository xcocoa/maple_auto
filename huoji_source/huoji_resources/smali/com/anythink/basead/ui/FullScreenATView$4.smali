.class public final Lcom/anythink/basead/ui/FullScreenATView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/FullScreenATView;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/FullScreenATView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/FullScreenATView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView$4;->a:Lcom/anythink/basead/ui/FullScreenATView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/basead/ui/FullScreenATView$4;->a:Lcom/anythink/basead/ui/FullScreenATView;

    iget-object p1, p1, Lcom/anythink/basead/ui/BaseScreenATView;->L:Lcom/anythink/basead/ui/animplayerview/BasePlayerView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/anythink/basead/ui/FullScreenATView$4$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/ui/FullScreenATView$4$1;-><init>(Lcom/anythink/basead/ui/FullScreenATView$4;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
