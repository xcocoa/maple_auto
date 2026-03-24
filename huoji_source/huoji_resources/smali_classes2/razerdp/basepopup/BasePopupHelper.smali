.class public final Lrazerdp/basepopup/BasePopupHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/xe0;
.implements Lz2/ye0;
.implements Lz2/ze0;
.implements Lz2/ue0;
.implements Lz2/ne0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrazerdp/basepopup/BasePopupHelper$OooO00o;,
        Lrazerdp/basepopup/BasePopupHelper$ShowMode;
    }
.end annotation


# static fields
.field private static final o00000Oo:I

.field public static final o00000o0:I = -0x2

.field private static o00000oO:I = 0x0

.field public static final o0000Ooo:I = -0x2


# instance fields
.field private OoooOoO:Lrazerdp/basepopup/BasePopupHelper$ShowMode;

.field private OoooOoo:I

.field private Ooooo00:I

.field private Ooooo0o:Landroid/view/animation/Animation;

.field private OooooO0:Landroid/animation/Animator;

.field private OooooOO:Landroid/view/animation/Animation;

.field private OooooOo:Landroid/animation/Animator;

.field private Oooooo:Lrazerdp/basepopup/BasePopupWindow$OooOOO0;

.field private Oooooo0:Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

.field private OoooooO:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

.field private Ooooooo:I

.field private o00000:I

.field private o000000:Landroid/view/ViewGroup$MarginLayoutParams;

.field private o000000O:Landroid/graphics/Point;

.field private o000000o:I

.field private o00000O:I

.field private o00000O0:I

.field private o00000OO:Lrazerdp/basepopup/BasePopupHelper$OooO00o;

.field private o000OOo:I

.field private o00O0O:I

.field private o00Oo0:I

.field private o00Ooo:I

.field private o00o0O:I

.field private o00oO0O:Lz2/gf0;

.field private o00oO0o:I

.field private o00ooo:[I

.field private o0O0O00:Lz2/if0;

.field private o0OO00O:Lz2/ze0;

.field private o0OOO0o:Lz2/xe0;

.field private o0Oo0oo:Lz2/ye0;

.field private o0OoOo0:I

.field private o0ooOO0:Landroid/graphics/drawable/Drawable;

.field private o0ooOOo:I

.field private o0ooOoO:Landroid/view/View;

.field private oo000o:I

.field private oo0o0Oo:Lz2/ue0;

.field private ooOO:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lrazerdp/library/R$id;->base_popup_content_root:I

    sput v0, Lrazerdp/basepopup/BasePopupHelper;->o00000Oo:I

    return-void
.end method

.method public constructor <init>(Lz2/xe0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lrazerdp/basepopup/BasePopupHelper$ShowMode;->SCREEN:Lrazerdp/basepopup/BasePopupHelper$ShowMode;

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper$ShowMode;

    sget v0, Lrazerdp/basepopup/BasePopupHelper;->o00000Oo:I

    iput v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooOoo:I

    const/16 v0, 0x7d

    iput v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    sget-object v0, Lrazerdp/basepopup/BasePopupWindow$GravityMode;->RELATIVE_TO_ANCHOR:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooooO:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    const/4 v0, 0x0

    iput v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooooo:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lrazerdp/basepopup/BasePopupWindow;->o00Ooo:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOO0:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x30

    iput v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo:I

    const/16 v0, 0x10

    iput v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000OOo:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000O:Landroid/graphics/Point;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00ooo:[I

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OOO0o:Lz2/xe0;

    return-void
.end method

.method private OooOOo0(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooooO:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_0
    invoke-virtual {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o0000O(Lrazerdp/basepopup/BasePopupWindow$GravityMode;I)Lrazerdp/basepopup/BasePopupHelper;

    goto :goto_1

    :cond_1
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooooO:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private Oooo000(Landroid/animation/Animator;)J
    .locals 5

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method private o00000o0(IZ)V
    .locals 1

    if-nez p2, :cond_0

    iget p2, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    goto :goto_1

    :cond_0
    iget p2, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    or-int/2addr p2, p1

    iput p2, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    const/16 v0, 0x80

    if-ne p1, v0, :cond_1

    or-int/lit16 p1, p2, 0x100

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public OooO()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OOO0o:Lz2/xe0;

    invoke-interface {v0}, Lz2/xe0;->OooO()Z

    move-result v0

    return v0
.end method

.method public OooO00o(IIZZ)V
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->oo0o0Oo:Lz2/ue0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lz2/ue0;->OooO00o(IIZZ)V

    :cond_0
    return-void
.end method

.method public OooO0O0(Z)V
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0Oo0oo:Lz2/ye0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/ye0;->OooO0O0(Z)V

    :cond_0
    return-void
.end method

.method public OooO0OO()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OOO0o:Lz2/xe0;

    invoke-interface {v0}, Lz2/xe0;->OooO0OO()Z

    move-result v0

    return v0
.end method

.method public OooO0Oo()Z
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00000OO:Lrazerdp/basepopup/BasePopupHelper$OooO00o;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lrazerdp/basepopup/BasePopupHelper$OooO00o;->OooO00o:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00000OO:Lrazerdp/basepopup/BasePopupHelper$OooO00o;

    iget-boolean v1, v1, Lrazerdp/basepopup/BasePopupHelper$OooO00o;->OooO0O0:Z

    invoke-virtual {p0, v0, v1}, Lrazerdp/basepopup/BasePopupHelper;->o0Oo0oo(Landroid/view/View;Z)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public OooO0o()V
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OO00O:Lz2/ze0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/ze0;->OooO0o()V

    :cond_0
    return-void
.end method

.method public OooO0o0()V
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OO00O:Lz2/ze0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/ze0;->OooO0o0()V

    :cond_0
    return-void
.end method

.method public OooO0oO()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OOO0o:Lz2/xe0;

    invoke-interface {v0}, Lz2/xe0;->OooO0oO()Z

    move-result v0

    return v0
.end method

.method public OooO0oo(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OOO0o:Lz2/xe0;

    invoke-interface {v0, p1}, Lz2/xe0;->OooO0oo(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public OooOO0(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OOO0o:Lz2/xe0;

    invoke-interface {v0, p1}, Lz2/xe0;->OooOO0(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public OooOO0O()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OOO0o:Lz2/xe0;

    invoke-interface {v0}, Lz2/xe0;->OooOO0O()Z

    move-result v0

    return v0
.end method

.method public OooOO0o(Z)V
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0Oo0oo:Lz2/ye0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lz2/ye0;->OooOO0o(Z)V

    :cond_0
    return-void
.end method

.method public OooOOO(Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public OooOOO0(Lz2/gf0;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 5

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O:Lz2/gf0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lz2/gf0;->OooO00o()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupHelper;->OoooOo0()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1, v0, v1}, Lz2/gf0;->OooOO0(J)Lz2/gf0;

    :cond_0
    invoke-virtual {p1}, Lz2/gf0;->OooO0O0()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupHelper;->OooOooO()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p1, v0, v1}, Lz2/gf0;->OooOO0O(J)Lz2/gf0;

    :cond_1
    return-object p0
.end method

.method public OooOOOO(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x200

    invoke-direct {p0, v0, p2}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    if-eqz p2, :cond_1

    const/16 p2, 0x10

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    return-object p0
.end method

.method public OooOOOo(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public OooOOo(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public OooOOoo(Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public OooOo()I
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00ooo:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public OooOo0()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->oo000o:I

    return v0
.end method

.method public OooOo00()I
    .locals 1

    invoke-virtual {p0}, Lrazerdp/basepopup/BasePopupHelper;->OoooooO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo:I

    if-nez v0, :cond_0

    const/16 v0, 0x30

    iput v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo:I

    :cond_0
    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo:I

    return v0
.end method

.method public OooOo0O(Landroid/view/View;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00ooo:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0o:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->oo000o:I

    return-object p0
.end method

.method public OooOo0o()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0o:I

    return v0
.end method

.method public OooOoO()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOoO:Landroid/view/View;

    return-object v0
.end method

.method public OooOoO0()I
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00ooo:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public OooOoOO()Lz2/gf0;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O:Lz2/gf0;

    return-object v0
.end method

.method public OooOoo()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooOO:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public OooOoo0()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooOoo:I

    return v0
.end method

.method public OooOooO()J
    .locals 5

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooOO:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooOo:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo000(Landroid/animation/Animator;)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    const-wide/16 v3, 0x1f4

    :cond_2
    return-wide v3
.end method

.method public OooOooo()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooOo:Landroid/animation/Animator;

    return-object v0
.end method

.method public Oooo()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Oooooo0:Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    return-object v0
.end method

.method public Oooo0()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00000:I

    return v0
.end method

.method public Oooo00O()Lz2/if0;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0O0O00:Lz2/if0;

    return-object v0
.end method

.method public Oooo00o()Lrazerdp/basepopup/BasePopupWindow$GravityMode;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooooO:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    return-object v0
.end method

.method public Oooo0O0()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000o:I

    return v0
.end method

.method public Oooo0OO()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00000O:I

    return v0
.end method

.method public Oooo0o()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OoOo0:I

    return v0
.end method

.method public Oooo0o0()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00000O0:I

    return v0
.end method

.method public Oooo0oO()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->ooOO:I

    return v0
.end method

.method public Oooo0oo()Lrazerdp/basepopup/BasePopupWindow$OooOOO0;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Oooooo:Lrazerdp/basepopup/BasePopupWindow$OooOOO0;

    return-object v0
.end method

.method public OoooO()I
    .locals 2

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00o0O:I

    return v0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000:Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return v0

    :cond_1
    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00o0O:I

    return v0
.end method

.method public OoooO0()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOO0:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public OoooO00()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object v0
.end method

.method public OoooO0O()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooooo:I

    return v0
.end method

.method public OoooOO0()I
    .locals 2

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo:I

    return v0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000:Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return v0

    :cond_1
    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo:I

    return v0
.end method

.method public OoooOOO()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00O0O:I

    return v0
.end method

.method public OoooOOo()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo0o:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public OoooOo0()J
    .locals 5

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo0o:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooO0:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lrazerdp/basepopup/BasePopupHelper;->Oooo000(Landroid/animation/Animator;)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    const-wide/16 v3, 0x1f4

    :cond_2
    return-wide v3
.end method

.method public OoooOoO()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooO0:Landroid/animation/Animator;

    return-object v0
.end method

.method public OoooOoo()I
    .locals 1

    sget v0, Lrazerdp/basepopup/BasePopupHelper;->o00000oO:I

    return v0
.end method

.method public Ooooo00()Lrazerdp/basepopup/BasePopupHelper$ShowMode;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper$ShowMode;

    return-object v0
.end method

.method public Ooooo0o()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000OOo:I

    return v0
.end method

.method public OooooO0()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000O:Landroid/graphics/Point;

    return-object v0
.end method

.method public OooooOO(II)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000O:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000O:Landroid/graphics/Point;

    return-object p1
.end method

.method public OooooOo()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    sget v0, Lrazerdp/basepopup/BasePopupHelper;->o00000oO:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lrazerdp/basepopup/BasePopupHelper;->o00000oO:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lrazerdp/basepopup/BasePopupHelper;->o00000oO:I

    :cond_1
    return-void
.end method

.method public Oooooo(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-direct {p0, p2}, Lrazerdp/basepopup/BasePopupHelper;->OooOOo0(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x2000000

    const/high16 v2, 0x1000000

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000:Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    iget v2, p0, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_0
    and-int/2addr p2, v1

    if-eqz p2, :cond_1

    iget p2, p0, Lrazerdp/basepopup/BasePopupHelper;->o00o0O:I

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_1
    return-object p1

    :cond_2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000:Landroid/view/ViewGroup$MarginLayoutParams;

    iget p2, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_3

    iget v2, p0, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_3
    and-int/2addr p2, v1

    if-eqz p2, :cond_4

    iget p2, p0, Lrazerdp/basepopup/BasePopupHelper;->o00o0O:I

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public Oooooo0()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    sget v0, Lrazerdp/basepopup/BasePopupHelper;->o00000oO:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lrazerdp/basepopup/BasePopupHelper;->o00000oO:I

    :cond_1
    return-void
.end method

.method public OoooooO()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Ooooooo()Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O:Lz2/gf0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/gf0;->OooO0o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0000(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00000O0:I

    return-object p0
.end method

.method public o00000(Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public o000000(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOOo:I

    return-object p0
.end method

.method public o000000O(Landroid/view/View;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOoO:Landroid/view/View;

    return-object p0
.end method

.method public o000000o(Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public o00000O(Landroid/view/animation/Animation;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooOO:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooOO:Landroid/view/animation/Animation;

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O:Lz2/gf0;

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOOO0(Lz2/gf0;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o00000O0(Landroid/view/View;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget v0, Lrazerdp/basepopup/BasePopupHelper;->o00000Oo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooOoo:I

    return-object p0
.end method

.method public o00000OO(Landroid/animation/Animator;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooOo:Landroid/animation/Animator;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooOo:Landroid/animation/Animator;

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O:Lz2/gf0;

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOOO0(Lz2/gf0;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o00000Oo(Lz2/if0;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o0O0O00:Lz2/if0;

    return-object p0
.end method

.method public o00000oO(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000o:I

    return-object p0
.end method

.method public o00000oo(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00000O:I

    return-object p0
.end method

.method public o0000O(Lrazerdp/basepopup/BasePopupWindow$GravityMode;I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooooo:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooooO:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooooO:Lrazerdp/basepopup/BasePopupWindow$GravityMode;

    iput p2, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooooo:I

    return-object p0
.end method

.method public o0000O0(Lrazerdp/basepopup/BasePopupWindow$OooOOOO;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->Oooooo0:Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    return-object p0
.end method

.method public o0000O00(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OoOo0:I

    return-object p0
.end method

.method public o0000O0O(Landroid/graphics/drawable/Drawable;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o0ooOO0:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public o0000OO(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 2

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00Ooo:I

    const/high16 v0, 0x1000000

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000:Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public o0000OO0(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 2

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00o0O:I

    const/high16 v0, 0x2000000

    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o000000:Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public o0000OOO(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00Oo0:I

    return-object p0
.end method

.method public o0000OOo(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00O0O:I

    return-object p0
.end method

.method public o0000Oo(Landroid/animation/Animator;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooO0:Landroid/animation/Animator;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->OooooO0:Landroid/animation/Animator;

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O:Lz2/gf0;

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOOO0(Lz2/gf0;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000Oo0(Landroid/view/animation/Animation;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo0o:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1
    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo0o:Landroid/view/animation/Animation;

    iget-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0O:Lz2/gf0;

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOOO0(Lz2/gf0;)Lrazerdp/basepopup/BasePopupHelper;

    return-object p0
.end method

.method public o0000OoO(Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public o0000Ooo(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00000:I

    return-object p0
.end method

.method public o0000o0(II)Lrazerdp/basepopup/BasePopupHelper;
    .locals 2

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00ooo:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o00oO0o:I

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->oo000o:I

    return-object p0
.end method

.method public o0000o0O(Lrazerdp/basepopup/BasePopupHelper$ShowMode;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->OoooOoO:Lrazerdp/basepopup/BasePopupHelper$ShowMode;

    return-object p0
.end method

.method public o0000o0o(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o000OOo:I

    return-object p0
.end method

.method public o0000oO(Lrazerdp/basepopup/BasePopupWindow$OooOOO0;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->Oooooo:Lrazerdp/basepopup/BasePopupWindow$OooOOO0;

    return-object p0
.end method

.method public o0000oo(I)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput p1, p0, Lrazerdp/basepopup/BasePopupHelper;->ooOO:I

    return-object p0
.end method

.method public o000OO(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/16 p1, 0x40

    invoke-direct {p0, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public o000OOo(Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o000000(I)Lrazerdp/basepopup/BasePopupHelper;

    :cond_0
    return-object p0
.end method

.method public o000oOoO()I
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00Oo0:I

    return v0
.end method

.method public o00O0O()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00Oo0()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00Ooo()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00o0O()Z
    .locals 2

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    const/high16 v1, 0x3000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00oO0O()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00oO0o()Z
    .locals 2

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public o00ooo()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0O00(Lz2/ze0;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OO00O:Lz2/ze0;

    return-object p0
.end method

.method public o0OO00O(Lz2/ye0;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->o0Oo0oo:Lz2/ye0;

    return-object p0
.end method

.method public o0OOO0o(Landroid/widget/PopupWindow;Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public o0Oo0oo(Landroid/view/View;Z)V
    .locals 1

    new-instance v0, Lrazerdp/basepopup/BasePopupHelper$OooO00o;

    invoke-direct {v0, p1, p2}, Lrazerdp/basepopup/BasePopupHelper$OooO00o;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o00000OO:Lrazerdp/basepopup/BasePopupHelper$OooO00o;

    if-eqz p2, :cond_0

    sget-object p2, Lrazerdp/basepopup/BasePopupHelper$ShowMode;->POSITION:Lrazerdp/basepopup/BasePopupHelper$ShowMode;

    :goto_0
    invoke-virtual {p0, p2}, Lrazerdp/basepopup/BasePopupHelper;->o0000o0O(Lrazerdp/basepopup/BasePopupHelper$ShowMode;)Lrazerdp/basepopup/BasePopupHelper;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    sget-object p2, Lrazerdp/basepopup/BasePopupHelper$ShowMode;->SCREEN:Lrazerdp/basepopup/BasePopupHelper$ShowMode;

    goto :goto_0

    :cond_1
    sget-object p2, Lrazerdp/basepopup/BasePopupHelper$ShowMode;->RELATIVE_TO_ANCHOR:Lrazerdp/basepopup/BasePopupHelper$ShowMode;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1}, Lrazerdp/basepopup/BasePopupHelper;->OooOo0O(Landroid/view/View;)Lrazerdp/basepopup/BasePopupHelper;

    return-void
.end method

.method public o0OoOo0()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0ooOO0()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0ooOOo()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0ooOoO(Z)Lrazerdp/basepopup/BasePopupHelper;
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lrazerdp/basepopup/BasePopupHelper;->o00000o0(IZ)V

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lrazerdp/basepopup/BasePopupHelper;->o0OOO0o:Lz2/xe0;

    invoke-interface {v0, p1}, Lz2/xe0;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public oo000o()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public oo0o0Oo(Lz2/ue0;)Lrazerdp/basepopup/BasePopupHelper;
    .locals 0

    iput-object p1, p0, Lrazerdp/basepopup/BasePopupHelper;->oo0o0Oo:Lz2/ue0;

    return-object p0
.end method

.method public ooOO()Z
    .locals 1

    iget v0, p0, Lrazerdp/basepopup/BasePopupHelper;->Ooooo00:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
