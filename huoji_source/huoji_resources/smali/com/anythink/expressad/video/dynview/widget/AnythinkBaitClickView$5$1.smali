.class public final Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->b(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;

    iget-object v0, v0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-static {v0}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->b(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)Lcom/anythink/expressad/video/dynview/widget/AnyThinkImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;

    iget-object v1, v1, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView$5;->a:Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;

    invoke-static {v1}, Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;->c(Lcom/anythink/expressad/video/dynview/widget/AnythinkBaitClickView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
