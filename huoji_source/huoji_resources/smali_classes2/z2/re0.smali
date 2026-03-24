.class public Lz2/re0;
.super Landroid/view/View;
.source ""


# instance fields
.field public OoooOoO:Lrazerdp/basepopup/BasePopupHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lz2/re0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lz2/re0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static OooO00o(Landroid/content/Context;Lrazerdp/basepopup/BasePopupHelper;)Lz2/re0;
    .locals 1

    new-instance v0, Lz2/re0;

    invoke-direct {v0, p0}, Lz2/re0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, p1}, Lz2/re0;->OooO0Oo(Landroid/content/Context;Lrazerdp/basepopup/BasePopupHelper;)V

    return-object v0
.end method

.method private OooO0Oo(Landroid/content/Context;Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 4

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lz2/nf0;->OooO0O0(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iput-object p2, p0, Lz2/re0;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOO0()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lrazerdp/library/R$anim;->basepopup_fade_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooOo0()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public OooO0O0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/re0;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    return-void
.end method

.method public OooO0OO()V
    .locals 5

    iget-object v0, p0, Lz2/re0;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lrazerdp/library/R$anim;->basepopup_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/re0;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {v1}, Lrazerdp/basepopup/BasePopupHelper;->OooOooO()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public OooO0o0()V
    .locals 3

    iget-object v0, p0, Lz2/re0;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->OoooO0()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
