.class public Lz2/qj;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private OooO00o:Lz2/rj;

.field private OooO0O0:I

.field private OooO0OO:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/qj;->OooO0O0:I

    iput v0, p0, Lz2/qj;->OooO0OO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lz2/qj;->OooO0O0:I

    iput p1, p0, Lz2/qj;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    iget-object v0, p0, Lz2/qj;->OooO00o:Lz2/rj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/rj;->OooO0OO()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0O0()I
    .locals 1

    iget-object v0, p0, Lz2/qj;->OooO00o:Lz2/rj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/rj;->OooO0Oo()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO0OO(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    return-void
.end method

.method public OooO0Oo(I)Z
    .locals 1

    iget-object v0, p0, Lz2/qj;->OooO00o:Lz2/rj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/rj;->OooO0o(I)Z

    move-result p1

    return p1

    :cond_0
    iput p1, p0, Lz2/qj;->OooO0OO:I

    const/4 p1, 0x0

    return p1
.end method

.method public OooO0o0(I)Z
    .locals 1

    iget-object v0, p0, Lz2/qj;->OooO00o:Lz2/rj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/rj;->OooO0oO(I)Z

    move-result p1

    return p1

    :cond_0
    iput p1, p0, Lz2/qj;->OooO0O0:I

    const/4 p1, 0x0

    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lz2/qj;->OooO0OO(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lz2/qj;->OooO00o:Lz2/rj;

    if-nez p1, :cond_0

    new-instance p1, Lz2/rj;

    invoke-direct {p1, p2}, Lz2/rj;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lz2/qj;->OooO00o:Lz2/rj;

    :cond_0
    iget-object p1, p0, Lz2/qj;->OooO00o:Lz2/rj;

    invoke-virtual {p1}, Lz2/rj;->OooO0o0()V

    iget p1, p0, Lz2/qj;->OooO0O0:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p3, p0, Lz2/qj;->OooO00o:Lz2/rj;

    invoke-virtual {p3, p1}, Lz2/rj;->OooO0oO(I)Z

    iput p2, p0, Lz2/qj;->OooO0O0:I

    :cond_1
    iget p1, p0, Lz2/qj;->OooO0OO:I

    if-eqz p1, :cond_2

    iget-object p3, p0, Lz2/qj;->OooO00o:Lz2/rj;

    invoke-virtual {p3, p1}, Lz2/rj;->OooO0o(I)Z

    iput p2, p0, Lz2/qj;->OooO0OO:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
