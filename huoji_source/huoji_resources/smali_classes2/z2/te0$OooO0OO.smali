.class public Lz2/te0$OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz2/te0;->OooO00o(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic OooO0O0:Lz2/te0;


# direct methods
.method public constructor <init>(Lz2/te0;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lz2/te0$OooO0OO;->OooO0O0:Lz2/te0;

    iput-object p2, p0, Lz2/te0$OooO0OO;->OooO00o:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lz2/te0$OooO0OO;->OooO00o:Landroid/view/ViewGroup$LayoutParams;

    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lz2/te0$OooO0OO;->OooO0O0:Lz2/te0;

    invoke-static {p1}, Lz2/te0;->OooO0o0(Lz2/te0;)Lz2/df0;

    move-result-object p1

    iget-object v0, p0, Lz2/te0$OooO0OO;->OooO0O0:Lz2/te0;

    iget-object v1, p0, Lz2/te0$OooO0OO;->OooO00o:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1}, Lz2/df0;->OooOO0O(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
