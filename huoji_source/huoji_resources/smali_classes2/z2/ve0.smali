.class public Lz2/ve0;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/ve0$OooO0O0;
    }
.end annotation


# instance fields
.field private OoooOoO:Lrazerdp/blur/BlurImageView;

.field private OoooOoo:Lz2/ve0$OooO0O0;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/ve0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lz2/ve0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic OooO00o(Lz2/ve0;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    return p0
.end method

.method public static OooO0O0(Landroid/content/Context;Lrazerdp/basepopup/BasePopupHelper;)Lz2/ve0;
    .locals 1

    new-instance v0, Lz2/ve0;

    invoke-direct {v0, p0}, Lz2/ve0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, p1}, Lz2/ve0;->OooO0o(Landroid/content/Context;Lrazerdp/basepopup/BasePopupHelper;)V

    return-object v0
.end method

.method private OooO0o(Landroid/content/Context;Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->Ooooooo()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lrazerdp/blur/BlurImageView;

    invoke-direct {v0, p1}, Lrazerdp/blur/BlurImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lz2/ve0;->OoooOoO:Lrazerdp/blur/BlurImageView;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoOO()Lz2/gf0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrazerdp/blur/BlurImageView;->OooO0o(Lz2/gf0;)V

    iget-object v0, p0, Lz2/ve0;->OoooOoO:Lrazerdp/blur/BlurImageView;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lz2/ve0;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :cond_1
    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p1, Lz2/ve0$OooO0O0;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OooOoO()Landroid/view/View;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2}, Lz2/ve0$OooO0O0;-><init>(Lz2/ve0;Landroid/view/View;Lrazerdp/basepopup/BasePopupHelper;)V

    iput-object p1, p0, Lz2/ve0;->OoooOoo:Lz2/ve0$OooO0O0;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lz2/nf0;->OooO0O0(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lz2/ve0$OooO0O0;

    invoke-static {p1, p2}, Lz2/re0;->OooO00o(Landroid/content/Context;Lrazerdp/basepopup/BasePopupHelper;)Lz2/re0;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lz2/ve0$OooO0O0;-><init>(Lz2/ve0;Landroid/view/View;Lrazerdp/basepopup/BasePopupHelper;)V

    iput-object v0, p0, Lz2/ve0;->OoooOoo:Lz2/ve0$OooO0O0;

    :cond_3
    :goto_0
    iget-object p1, p0, Lz2/ve0;->OoooOoo:Lz2/ve0$OooO0O0;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lz2/ve0$OooO0O0;->OooO00o()V

    :cond_4
    new-instance p1, Lz2/ve0$OooO00o;

    invoke-direct {p1, p0}, Lz2/ve0$OooO00o;-><init>(Lz2/ve0;)V

    invoke-virtual {p2, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0OO00O(Lz2/ye0;)Lrazerdp/basepopup/BasePopupHelper;

    return-void
.end method


# virtual methods
.method public OooO0OO(IIIII)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    and-int/lit8 v4, p1, 0x7

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const v5, 0x800003

    if-eq v4, v5, :cond_0

    const p2, 0x800005

    if-eq v4, p2, :cond_1

    move p2, v0

    :cond_0
    move p4, v2

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x30

    if-eq p1, v0, :cond_2

    const/16 p3, 0x50

    if-eq p1, p3, :cond_3

    move p3, v1

    :cond_2
    move p5, v3

    goto :goto_1

    :cond_3
    move p3, v1

    :goto_1
    iget-object p1, p0, Lz2/ve0;->OoooOoo:Lz2/ve0$OooO0O0;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2, p3, p4, p5}, Lz2/ve0$OooO0O0;->OooO0Oo(IIII)V

    :cond_4
    return-void
.end method

.method public OooO0Oo(J)V
    .locals 1

    iget-object v0, p0, Lz2/ve0;->OoooOoO:Lrazerdp/blur/BlurImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lrazerdp/blur/BlurImageView;->OooO(J)V

    :cond_0
    iget-object p1, p0, Lz2/ve0;->OoooOoo:Lz2/ve0$OooO0O0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lz2/ve0$OooO0O0;->OooO0OO()V

    :cond_1
    return-void
.end method

.method public OooO0o0(J)V
    .locals 1

    iget-object v0, p0, Lz2/ve0;->OoooOoO:Lrazerdp/blur/BlurImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lrazerdp/blur/BlurImageView;->OooOOO(J)V

    :cond_0
    return-void
.end method

.method public OooO0oO()V
    .locals 1

    iget-object v0, p0, Lz2/ve0;->OoooOoO:Lrazerdp/blur/BlurImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrazerdp/blur/BlurImageView;->OooOOo()V

    :cond_0
    iget-object v0, p0, Lz2/ve0;->OoooOoo:Lz2/ve0$OooO0O0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz2/ve0$OooO0O0;->OooO0o0()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatch  >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrazerdp/util/log/PopupLog;->OooO0oo(Ljava/lang/Object;)V

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lz2/ve0;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lz2/ve0;->OoooOoo:Lz2/ve0$OooO0O0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/ve0$OooO0O0;->OooO0O0()V

    iput-object v1, p0, Lz2/ve0;->OoooOoo:Lz2/ve0$OooO0O0;

    :cond_0
    iget-object v0, p0, Lz2/ve0;->OoooOoO:Lrazerdp/blur/BlurImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrazerdp/blur/BlurImageView;->OooO0oo()V

    iput-object v1, p0, Lz2/ve0;->OoooOoO:Lrazerdp/blur/BlurImageView;

    :cond_1
    return-void
.end method
