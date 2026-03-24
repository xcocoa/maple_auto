.class public final Lz2/jk;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final OooO00o:Landroid/view/View;

.field private OooO0O0:Z

.field private OooO0OO:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz2/ik;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/jk;->OooO0O0:Z

    iput v0, p0, Lz2/jk;->OooO0OO:I

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lz2/jk;->OooO00o:Landroid/view/View;

    return-void
.end method

.method private OooO00o()V
    .locals 2

    iget-object v0, p0, Lz2/jk;->OooO00o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lz2/jk;->OooO00o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO0O0()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    iget v0, p0, Lz2/jk;->OooO0OO:I

    return v0
.end method

.method public OooO0OO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/jk;->OooO0O0:Z

    return v0
.end method

.method public OooO0Oo(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "expanded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lz2/jk;->OooO0O0:Z

    const-string v0, "expandedComponentIdHint"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lz2/jk;->OooO0OO:I

    iget-boolean p1, p0, Lz2/jk;->OooO0O0:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lz2/jk;->OooO00o()V

    :cond_0
    return-void
.end method

.method public OooO0o(Z)Z
    .locals 1

    iget-boolean v0, p0, Lz2/jk;->OooO0O0:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lz2/jk;->OooO0O0:Z

    invoke-direct {p0}, Lz2/jk;->OooO00o()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public OooO0o0()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lz2/jk;->OooO0O0:Z

    const-string v2, "expanded"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lz2/jk;->OooO0OO:I

    const-string v2, "expandedComponentIdHint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public OooO0oO(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iput p1, p0, Lz2/jk;->OooO0OO:I

    return-void
.end method
