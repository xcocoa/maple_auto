.class public final Lz2/ve0$OooO0O0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/ve0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0O0"
.end annotation


# instance fields
.field public OooO00o:Landroid/view/View;

.field public OooO0O0:Lrazerdp/basepopup/BasePopupHelper;

.field public final synthetic OooO0OO:Lz2/ve0;


# direct methods
.method public constructor <init>(Lz2/ve0;Landroid/view/View;Lrazerdp/basepopup/BasePopupHelper;)V
    .locals 2

    iput-object p1, p0, Lz2/ve0$OooO0O0;->OooO0OO:Lz2/ve0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lz2/ve0$OooO0O0;->OooO00o:Landroid/view/View;

    iput-object p3, p0, Lz2/ve0$OooO0O0;->OooO0O0:Lrazerdp/basepopup/BasePopupHelper;

    instance-of p2, p2, Lz2/re0;

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOO0()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lrazerdp/library/R$anim;->basepopup_fade_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lz2/ve0$OooO0O0;->OooO0O0:Lrazerdp/basepopup/BasePopupHelper;

    invoke-virtual {p2}, Lrazerdp/basepopup/BasePopupHelper;->OoooOo0()J

    move-result-wide p2

    const-wide/16 v0, 0xc8

    sub-long/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object p2, p0, Lz2/ve0$OooO0O0;->OooO00o:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 4

    iget-object v0, p0, Lz2/ve0$OooO0O0;->OooO00o:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/ve0$OooO0O0;->OooO0OO:Lz2/ve0;

    const/4 v2, -0x1

    invoke-virtual {v1}, Lz2/ve0;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lz2/ve0;->OooO00o(Lz2/ve0;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    :cond_0
    return-void
.end method

.method public OooO0O0()V
    .locals 3

    iget-object v0, p0, Lz2/ve0$OooO0O0;->OooO00o:Landroid/view/View;

    instance-of v1, v0, Lz2/re0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lz2/re0;

    invoke-virtual {v0}, Lz2/re0;->OooO0O0()V

    :cond_0
    iput-object v2, p0, Lz2/ve0$OooO0O0;->OooO00o:Landroid/view/View;

    return-void
.end method

.method public OooO0OO()V
    .locals 5

    iget-object v0, p0, Lz2/ve0$OooO0O0;->OooO00o:Landroid/view/View;

    instance-of v1, v0, Lz2/re0;

    if-eqz v1, :cond_0

    check-cast v0, Lz2/re0;

    invoke-virtual {v0}, Lz2/re0;->OooO0OO()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/ve0$OooO0O0;->OooO0O0:Lrazerdp/basepopup/BasePopupHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrazerdp/basepopup/BasePopupHelper;->o0ooOO0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/ve0$OooO0O0;->OooO0OO:Lz2/ve0;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lrazerdp/library/R$anim;->basepopup_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lz2/ve0$OooO0O0;->OooO0O0:Lrazerdp/basepopup/BasePopupHelper;

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

    iget-object v1, p0, Lz2/ve0$OooO0O0;->OooO00o:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0Oo(IIII)V
    .locals 1

    iget-object v0, p0, Lz2/ve0$OooO0O0;->OooO00o:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public OooO0o0()V
    .locals 2

    iget-object v0, p0, Lz2/ve0$OooO0O0;->OooO00o:Landroid/view/View;

    instance-of v1, v0, Lz2/re0;

    if-eqz v1, :cond_0

    check-cast v0, Lz2/re0;

    invoke-virtual {v0}, Lz2/re0;->OooO0o0()V

    :cond_0
    return-void
.end method
