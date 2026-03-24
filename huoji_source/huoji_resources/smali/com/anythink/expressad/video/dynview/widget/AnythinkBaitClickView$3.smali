.class public final Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$3;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$3;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->a(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$3;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->a(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$3;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->a(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$3;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-static {p1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->a(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
