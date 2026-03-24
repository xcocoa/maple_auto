.class public Lz2/cf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/ne0;


# instance fields
.field public OoooOoO:I

.field public OoooOoo:Landroid/view/animation/Animation;

.field public Ooooo00:Landroid/view/animation/Animation;

.field public Ooooo0o:Landroid/animation/Animator;

.field public OooooO0:Landroid/animation/Animator;

.field public OooooOO:I

.field public OooooOo:Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

.field public Oooooo:Lz2/gf0;

.field public Oooooo0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lrazerdp/basepopup/BasePopupWindow$OooOOO;",
            ">;"
        }
    .end annotation
.end field

.field public OoooooO:I

.field public Ooooooo:I

.field public o00O0O:I

.field public o00Oo0:I

.field public o00Ooo:I

.field public o00o0O:I

.field public o00oO0o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/view/View$OnClickListener;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public o00ooo:Landroid/graphics/drawable/Drawable;

.field public o0OoOo0:I

.field public oo000o:Landroid/view/View;

.field public ooOO:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d

    iput v0, p0, Lz2/cf0;->OooooOO:I

    const/16 v0, 0x11

    iput v0, p0, Lz2/cf0;->OoooooO:I

    const/16 v0, 0x30

    iput v0, p0, Lz2/cf0;->Ooooooo:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lrazerdp/basepopup/BasePopupWindow;->o00Ooo:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lz2/cf0;->o00ooo:Landroid/graphics/drawable/Drawable;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    iget v0, p0, Lz2/cf0;->OooooOO:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lz2/cf0;->OooooOO:I

    :cond_0
    return-void
.end method

.method public static OooOOo0()Lz2/cf0;
    .locals 5

    new-instance v0, Lz2/cf0;

    invoke-direct {v0}, Lz2/cf0;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lz2/of0;->OooO0O0(Z)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/cf0;->OoooOoo(Landroid/view/animation/Animation;)Lz2/cf0;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Lz2/of0;->OooO0O0(Z)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Lz2/cf0;->OoooOo0(Landroid/view/animation/Animation;)Lz2/cf0;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lz2/cf0;->OooOOOO(Z)Lz2/cf0;

    move-result-object v0

    return-object v0
.end method

.method private OoooOO0(IZ)V
    .locals 0

    if-nez p2, :cond_0

    iget p2, p0, Lz2/cf0;->OooooOO:I

    not-int p1, p1

    and-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lz2/cf0;->OooooOO:I

    or-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lz2/cf0;->OooooOO:I

    return-void
.end method


# virtual methods
.method public OooO(ZLrazerdp/basepopup/BasePopupWindow$OooOOO;)Lz2/cf0;
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lz2/cf0;->Oooooo0:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public OooO00o(Z)Lz2/cf0;
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OooO0O0(I)Lz2/cf0;
    .locals 0

    iput p1, p0, Lz2/cf0;->Ooooooo:I

    return-object p0
.end method

.method public OooO0OO(Z)Lz2/cf0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OooO0Oo(Z)Lz2/cf0;
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OooO0o(I)Lz2/cf0;
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lz2/cf0;->OooO0o0(Landroid/graphics/drawable/Drawable;)Lz2/cf0;

    move-result-object p1

    return-object p1
.end method

.method public OooO0o0(Landroid/graphics/drawable/Drawable;)Lz2/cf0;
    .locals 0

    iput-object p1, p0, Lz2/cf0;->o00ooo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public OooO0oO(Z)Lz2/cf0;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OooO0oo(Z)Lz2/cf0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lz2/cf0;->OooO(ZLrazerdp/basepopup/BasePopupWindow$OooOOO;)Lz2/cf0;

    move-result-object p1

    return-object p1
.end method

.method public OooOO0(Z)Lz2/cf0;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OooOO0O(Z)Lz2/cf0;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OooOO0o(I)Lz2/cf0;
    .locals 0

    iput p1, p0, Lz2/cf0;->OoooOoO:I

    return-object p0
.end method

.method public OooOOO(Z)Lz2/cf0;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OooOOO0(Lrazerdp/basepopup/BasePopupWindow$OooOOOO;)Lz2/cf0;
    .locals 0

    iput-object p1, p0, Lz2/cf0;->OooooOo:Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    return-object p0
.end method

.method public OooOOOO(Z)Lz2/cf0;
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OooOOOo(Z)Lz2/cf0;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OooOOo()I
    .locals 1

    iget v0, p0, Lz2/cf0;->Ooooooo:I

    return v0
.end method

.method public OooOOoo()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->o00ooo:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public OooOo()I
    .locals 1

    iget v0, p0, Lz2/cf0;->OoooooO:I

    return v0
.end method

.method public OooOo0()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->Ooooo00:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public OooOo00()I
    .locals 1

    iget v0, p0, Lz2/cf0;->OoooOoO:I

    return v0
.end method

.method public OooOo0O()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->OooooO0:Landroid/animation/Animator;

    return-object v0
.end method

.method public OooOo0o()Lrazerdp/basepopup/BasePopupWindow$OooOOOO;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->OooooOo:Lrazerdp/basepopup/BasePopupWindow$OooOOOO;

    return-object v0
.end method

.method public OooOoO()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/view/View$OnClickListener;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/cf0;->o00oO0o:Ljava/util/HashMap;

    return-object v0
.end method

.method public OooOoO0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->oo000o:Landroid/view/View;

    return-object v0
.end method

.method public OooOoOO()I
    .locals 1

    iget v0, p0, Lz2/cf0;->o00o0O:I

    return v0
.end method

.method public OooOoo()I
    .locals 1

    iget v0, p0, Lz2/cf0;->o00Ooo:I

    return v0
.end method

.method public OooOoo0()I
    .locals 1

    iget v0, p0, Lz2/cf0;->o00Oo0:I

    return v0
.end method

.method public OooOooO()I
    .locals 1

    iget v0, p0, Lz2/cf0;->o00O0O:I

    return v0
.end method

.method public OooOooo()I
    .locals 1

    iget v0, p0, Lz2/cf0;->o0OoOo0:I

    return v0
.end method

.method public Oooo(I)Lz2/cf0;
    .locals 0

    iput p1, p0, Lz2/cf0;->o00Ooo:I

    return-object p0
.end method

.method public Oooo0()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->OoooOoo:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public Oooo000()I
    .locals 1

    iget v0, p0, Lz2/cf0;->ooOO:I

    return v0
.end method

.method public Oooo00O()Lrazerdp/basepopup/BasePopupWindow$OooOOO;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->Oooooo0:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrazerdp/basepopup/BasePopupWindow$OooOOO;

    return-object v0
.end method

.method public Oooo00o()Lz2/gf0;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->Oooooo:Lz2/gf0;

    return-object v0
.end method

.method public Oooo0O0()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->Ooooo0o:Landroid/animation/Animator;

    return-object v0
.end method

.method public Oooo0OO(I)Lz2/cf0;
    .locals 0

    iput p1, p0, Lz2/cf0;->OoooooO:I

    return-object p0
.end method

.method public Oooo0o(Landroid/view/View;)Lz2/cf0;
    .locals 0

    iput-object p1, p0, Lz2/cf0;->oo000o:Landroid/view/View;

    return-object p0
.end method

.method public Oooo0o0(Z)Lz2/cf0;
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public Oooo0oO(I)Lz2/cf0;
    .locals 0

    iput p1, p0, Lz2/cf0;->o00o0O:I

    return-object p0
.end method

.method public Oooo0oo(I)Lz2/cf0;
    .locals 0

    iput p1, p0, Lz2/cf0;->o00Oo0:I

    return-object p0
.end method

.method public OoooO(Z)Lz2/cf0;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lz2/cf0;->OoooOO0(IZ)V

    return-object p0
.end method

.method public OoooO0(I)Lz2/cf0;
    .locals 0

    iput p1, p0, Lz2/cf0;->o0OoOo0:I

    return-object p0
.end method

.method public OoooO00(I)Lz2/cf0;
    .locals 0

    iput p1, p0, Lz2/cf0;->o00O0O:I

    return-object p0
.end method

.method public OoooO0O(I)Lz2/cf0;
    .locals 0

    iput p1, p0, Lz2/cf0;->ooOO:I

    return-object p0
.end method

.method public OoooOOO(ILandroid/view/View$OnClickListener;)Lz2/cf0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lz2/cf0;->OoooOOo(ILandroid/view/View$OnClickListener;Z)Lz2/cf0;

    move-result-object p1

    return-object p1
.end method

.method public OoooOOo(ILandroid/view/View$OnClickListener;Z)Lz2/cf0;
    .locals 1

    iget-object v0, p0, Lz2/cf0;->o00oO0o:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/cf0;->o00oO0o:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lz2/cf0;->o00oO0o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public OoooOo0(Landroid/view/animation/Animation;)Lz2/cf0;
    .locals 0

    iput-object p1, p0, Lz2/cf0;->Ooooo00:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public OoooOoO(Landroid/animation/Animator;)Lz2/cf0;
    .locals 0

    iput-object p1, p0, Lz2/cf0;->OooooO0:Landroid/animation/Animator;

    return-object p0
.end method

.method public OoooOoo(Landroid/view/animation/Animation;)Lz2/cf0;
    .locals 0

    iput-object p1, p0, Lz2/cf0;->OoooOoo:Landroid/view/animation/Animation;

    return-object p0
.end method

.method public Ooooo00(Landroid/animation/Animator;)Lz2/cf0;
    .locals 0

    iput-object p1, p0, Lz2/cf0;->Ooooo0o:Landroid/animation/Animator;

    return-object p0
.end method

.method public o000oOoO(Lz2/gf0;)Lz2/cf0;
    .locals 0

    iput-object p1, p0, Lz2/cf0;->Oooooo:Lz2/gf0;

    return-object p0
.end method
