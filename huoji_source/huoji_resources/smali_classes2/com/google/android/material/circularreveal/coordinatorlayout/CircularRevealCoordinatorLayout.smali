.class public Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source ""

# interfaces
.implements Lz2/fk;


# instance fields
.field private final OoooOoO:Lz2/ek;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lz2/ek;

    invoke-direct {p1, p0}, Lz2/ek;-><init>(Lz2/ek$OooO00o;)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    return-void
.end method


# virtual methods
.method public OooO00o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    invoke-virtual {v0}, Lz2/ek;->OooO00o()V

    return-void
.end method

.method public OooO0O0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    invoke-virtual {v0}, Lz2/ek;->OooO0O0()V

    return-void
.end method

.method public OooO0OO(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public OooO0Oo()Z
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/ek;->OooO0OO(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    invoke-virtual {v0}, Lz2/ek;->OooO0oO()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    invoke-virtual {v0}, Lz2/ek;->OooO0oo()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lz2/fk$OooO;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    invoke-virtual {v0}, Lz2/ek;->OooOO0()Lz2/fk$OooO;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lz2/ek;->OooOO0o()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    invoke-virtual {v0, p1}, Lz2/ek;->OooOOO0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    invoke-virtual {v0, p1}, Lz2/ek;->OooOOO(I)V

    return-void
.end method

.method public setRevealInfo(Lz2/fk$OooO;)V
    .locals 1
    .param p1    # Lz2/fk$OooO;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/material/circularreveal/coordinatorlayout/CircularRevealCoordinatorLayout;->OoooOoO:Lz2/ek;

    invoke-virtual {v0, p1}, Lz2/ek;->OooOOOO(Lz2/fk$OooO;)V

    return-void
.end method
