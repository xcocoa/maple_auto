.class public final Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$a;->a:Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$a;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$a;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView$a;->a:Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;

    invoke-static {v0}, Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;->e(Lcom/anythink/basead/ui/animplayerview/viewpager/VpMainImgAnimatorView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
