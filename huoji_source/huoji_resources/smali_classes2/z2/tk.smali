.class public Lz2/tk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/tk$OooO0o;,
        Lz2/tk$OooOO0;,
        Lz2/tk$OooOO0O;,
        Lz2/tk$OooO;,
        Lz2/tk$OooO0OO;,
        Lz2/tk$OooO0O0;,
        Lz2/tk$OooOOO;,
        Lz2/tk$OooOOOO;,
        Lz2/tk$OooOOO0;,
        Lz2/tk$OooOo00;
    }
.end annotation


# static fields
.field private static final o00oO0o:Ljava/lang/String; = "android:menu:header"

.field private static final o00ooo:Ljava/lang/String; = "android:menu:list"

.field private static final oo000o:Ljava/lang/String; = "android:menu:adapter"


# instance fields
.field private OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

.field public OoooOoo:Landroid/widget/LinearLayout;

.field private Ooooo00:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public Ooooo0o:Landroidx/appcompat/view/menu/MenuBuilder;

.field private OooooO0:I

.field public OooooOO:Lz2/tk$OooO0OO;

.field public OooooOo:Landroid/view/LayoutInflater;

.field public Oooooo:Z

.field public Oooooo0:I

.field public OoooooO:Landroid/content/res/ColorStateList;

.field public Ooooooo:Landroid/content/res/ColorStateList;

.field public o00O0O:I

.field private o00Oo0:I

.field public o00Ooo:I

.field public final o00o0O:Landroid/view/View$OnClickListener;

.field public o0OoOo0:Landroid/graphics/drawable/Drawable;

.field public ooOO:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz2/tk$OooO00o;

    invoke-direct {v0, p0}, Lz2/tk$OooO00o;-><init>(Lz2/tk;)V

    iput-object v0, p0, Lz2/tk;->o00o0O:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public OooO()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/tk;->OoooooO:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public OooO00o(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public OooO0O0(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    iget v1, p0, Lz2/tk;->o00Oo0:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lz2/tk;->o00Oo0:I

    iget-object v0, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    iget v1, p0, Lz2/tk;->o00Oo0:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method public OooO0OO()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    invoke-virtual {v0}, Lz2/tk$OooO0OO;->OooO0OO()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo()I
    .locals 1

    iget-object v0, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public OooO0o()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/tk;->o0OoOo0:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public OooO0o0(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public OooO0oO()I
    .locals 1

    iget v0, p0, Lz2/tk;->ooOO:I

    return v0
.end method

.method public OooO0oo()I
    .locals 1

    iget v0, p0, Lz2/tk;->o00O0O:I

    return v0
.end method

.method public OooOO0()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/tk;->Ooooooo:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public OooOO0O(I)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/tk;->OooooOo:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/tk;->OooO00o(Landroid/view/View;)V

    return-object p1
.end method

.method public OooOO0o(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    iget v0, p0, Lz2/tk;->o00Oo0:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public OooOOO(I)V
    .locals 0

    iput p1, p0, Lz2/tk;->OooooO0:I

    return-void
.end method

.method public OooOOO0(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/MenuItemImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    invoke-virtual {v0, p1}, Lz2/tk$OooO0OO;->OooO(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method

.method public OooOOOO(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/tk;->o0OoOo0:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz2/tk;->updateMenuView(Z)V

    return-void
.end method

.method public OooOOOo(I)V
    .locals 0

    iput p1, p0, Lz2/tk;->ooOO:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz2/tk;->updateMenuView(Z)V

    return-void
.end method

.method public OooOOo(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/tk;->Ooooooo:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz2/tk;->updateMenuView(Z)V

    return-void
.end method

.method public OooOOo0(I)V
    .locals 0

    iput p1, p0, Lz2/tk;->o00O0O:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz2/tk;->updateMenuView(Z)V

    return-void
.end method

.method public OooOOoo(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    iput p1, p0, Lz2/tk;->Oooooo0:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz2/tk;->Oooooo:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz2/tk;->updateMenuView(Z)V

    return-void
.end method

.method public OooOo0(Z)V
    .locals 1

    iget-object v0, p0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lz2/tk$OooO0OO;->OooOO0(Z)V

    :cond_0
    return-void
.end method

.method public OooOo00(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/tk;->OoooooO:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lz2/tk;->updateMenuView(Z)V

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lz2/tk;->OooooO0:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 3

    iget-object v0, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/tk;->OooooOo:Landroid/view/LayoutInflater;

    sget v1, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object p1, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object p1, p0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    if-nez p1, :cond_0

    new-instance p1, Lz2/tk$OooO0OO;

    invoke-direct {p1, p0}, Lz2/tk$OooO0OO;-><init>(Lz2/tk;)V

    iput-object p1, p0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    :cond_0
    iget-object p1, p0, Lz2/tk;->OooooOo:Landroid/view/LayoutInflater;

    sget v0, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    iget-object v1, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v0, p0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    iget-object p1, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    return-object p1
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lz2/tk;->OooooOo:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lz2/tk;->Ooooo0o:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$dimen;->design_navigation_separator_vertical_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lz2/tk;->o00Ooo:I

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lz2/tk;->Ooooo00:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    invoke-virtual {v1, v0}, Lz2/tk$OooO0OO;->OooO0oo(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android:menu:header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lz2/tk;->OoooOoO:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_0
    iget-object v1, p0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lz2/tk$OooO0OO;->OooO0O0()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lz2/tk;->Ooooo00:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    iget-object p1, p0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lz2/tk$OooO0OO;->OooOO0O()V

    :cond_0
    return-void
.end method
