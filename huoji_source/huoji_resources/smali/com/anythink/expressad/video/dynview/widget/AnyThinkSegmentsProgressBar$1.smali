.class public final Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar$1;->a:Lcom/anythink/expressad/video/dynview/widget/AnyThinkSegmentsProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

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
