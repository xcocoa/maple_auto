.class public final Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;->b:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    iput-object p2, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;->a:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;->b:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;->b:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$6;->b:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
