.class public Lz2/tk$OooO0OO;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OooO0OO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lz2/tk$OooOo00;",
        ">;"
    }
.end annotation


# static fields
.field private static final OooO:I = 0x2

.field private static final OooO0o:Ljava/lang/String; = "android:menu:action_views"

.field private static final OooO0o0:Ljava/lang/String; = "android:menu:checked"

.field private static final OooO0oO:I = 0x0

.field private static final OooO0oo:I = 0x1

.field private static final OooOO0:I = 0x3


# instance fields
.field private final OooO00o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz2/tk$OooO;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0O0:Landroidx/appcompat/view/menu/MenuItemImpl;

.field private OooO0OO:Z

.field public final synthetic OooO0Oo:Lz2/tk;


# direct methods
.method public constructor <init>(Lz2/tk;)V
    .locals 0

    iput-object p1, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-direct {p0}, Lz2/tk$OooO0OO;->OooO0oO()V

    return-void
.end method

.method private OooO00o(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/tk$OooOO0O;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lz2/tk$OooOO0O;->OooO0O0:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private OooO0oO()V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lz2/tk$OooO0OO;->OooO0OO:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lz2/tk$OooO0OO;->OooO0OO:Z

    iget-object v2, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    new-instance v3, Lz2/tk$OooO0o;

    invoke-direct {v3}, Lz2/tk$OooO0o;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    iget-object v3, v0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-object v3, v3, Lz2/tk;->Ooooo0o:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v3, :cond_e

    iget-object v8, v0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-object v8, v8, Lz2/tk;->Ooooo0o:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, v8}, Lz2/tk$OooO0OO;->OooO(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    :cond_1
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_2
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_d

    if-eqz v5, :cond_3

    iget-object v10, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    new-instance v11, Lz2/tk$OooOO0;

    iget-object v12, v0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget v12, v12, Lz2/tk;->o00Ooo:I

    invoke-direct {v11, v12, v4}, Lz2/tk$OooOO0;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v10, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    new-instance v11, Lz2/tk$OooOO0O;

    invoke-direct {v11, v8}, Lz2/tk$OooOO0O;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v11, :cond_8

    invoke-interface {v9, v12}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    if-nez v13, :cond_4

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    :cond_4
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v14, v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_5
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v0, v8}, Lz2/tk$OooO0OO;->OooO(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    :cond_6
    iget-object v15, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    new-instance v1, Lz2/tk$OooOO0O;

    invoke-direct {v1, v14}, Lz2/tk$OooOO0O;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_d

    iget-object v1, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v10, v1}, Lz2/tk$OooO0OO;->OooO00o(II)V

    goto :goto_4

    :cond_9
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-eq v1, v2, :cond_b

    iget-object v2, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v6, 0x1

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    :goto_2
    if-eqz v5, :cond_c

    add-int/lit8 v7, v7, 0x1

    iget-object v2, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    new-instance v9, Lz2/tk$OooOO0;

    iget-object v10, v0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget v10, v10, Lz2/tk;->o00Ooo:I

    invoke-direct {v9, v10, v10}, Lz2/tk$OooOO0;-><init>(II)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    if-nez v6, :cond_c

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v7, v2}, Lz2/tk$OooO0OO;->OooO00o(II)V

    const/4 v6, 0x1

    :cond_c
    :goto_3
    new-instance v2, Lz2/tk$OooOO0O;

    invoke-direct {v2, v8}, Lz2/tk$OooOO0O;-><init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    iput-boolean v6, v2, Lz2/tk$OooOO0O;->OooO0O0:Z

    iget-object v8, v0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :cond_d
    :goto_4
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_e
    iput-boolean v4, v0, Lz2/tk$OooO0OO;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public OooO(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 2

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0O0:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0O0:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    iput-object p1, p0, Lz2/tk$OooO0OO;->OooO0O0:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public OooO0O0()Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lz2/tk$OooO0OO;->OooO0O0:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    const-string v2, "android:menu:checked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v4, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2/tk$OooO;

    instance-of v5, v4, Lz2/tk$OooOO0O;

    if-eqz v5, :cond_2

    check-cast v4, Lz2/tk$OooOO0O;

    invoke-virtual {v4}, Lz2/tk$OooOO0O;->OooO00o()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    new-instance v6, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v6}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "android:menu:action_views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public OooO0OO()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0O0:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public OooO0Oo(Lz2/tk$OooOo00;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lz2/tk$OooO0OO;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/tk$OooOO0;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lz2/tk$OooOO0;->OooO0O0()I

    move-result v0

    invoke-virtual {p2}, Lz2/tk$OooOO0;->OooO00o()I

    move-result p2

    invoke-virtual {p1, v1, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/tk$OooOO0O;

    invoke-virtual {p2}, Lz2/tk$OooOO0O;->OooO00o()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-object v0, v0, Lz2/tk;->Ooooooo:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-boolean v2, v0, Lz2/tk;->Oooooo:Z

    if-eqz v2, :cond_3

    iget v0, v0, Lz2/tk;->Oooooo0:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    :cond_3
    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-object v0, v0, Lz2/tk;->OoooooO:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-object v0, v0, Lz2/tk;->o0OoOo0:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/tk$OooOO0O;

    iget-boolean v0, p2, Lz2/tk$OooOO0O;->OooO0O0:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget v0, v0, Lz2/tk;->ooOO:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget v0, v0, Lz2/tk;->o00O0O:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    invoke-virtual {p2}, Lz2/tk$OooOO0O;->OooO00o()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    :goto_1
    return-void
.end method

.method public OooO0o(Lz2/tk$OooOo00;)V
    .locals 1

    instance-of v0, p1, Lz2/tk$OooOOO0;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->OooO0OO()V

    :cond_0
    return-void
.end method

.method public OooO0o0(Landroid/view/ViewGroup;I)Lz2/tk$OooOo00;
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lz2/tk$OooO0O0;

    iget-object p2, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-object p2, p2, Lz2/tk;->OoooOoo:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lz2/tk$OooO0O0;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    new-instance p2, Lz2/tk$OooOOO;

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-object v0, v0, Lz2/tk;->OooooOo:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lz2/tk$OooOOO;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_2
    new-instance p2, Lz2/tk$OooOOOO;

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-object v0, v0, Lz2/tk;->OooooOo:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lz2/tk$OooOOOO;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_3
    new-instance p2, Lz2/tk$OooOOO0;

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO0Oo:Lz2/tk;

    iget-object v1, v0, Lz2/tk;->OooooOo:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lz2/tk;->o00o0O:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lz2/tk$OooOOO0;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public OooO0oo(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "android:menu:checked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lz2/tk$OooO0OO;->OooO0OO:Z

    iget-object v2, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2/tk$OooO;

    instance-of v5, v4, Lz2/tk$OooOO0O;

    if-eqz v5, :cond_0

    check-cast v4, Lz2/tk$OooOO0O;

    invoke-virtual {v4}, Lz2/tk$OooOO0O;->OooO00o()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    if-ne v5, v0, :cond_0

    invoke-virtual {p0, v4}, Lz2/tk$OooO0OO;->OooO(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lz2/tk$OooO0OO;->OooO0OO:Z

    invoke-direct {p0}, Lz2/tk$OooO0OO;->OooO0oO()V

    :cond_2
    const-string v0, "android:menu:action_views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/tk$OooO;

    instance-of v3, v2, Lz2/tk$OooOO0O;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    check-cast v2, Lz2/tk$OooOO0O;

    invoke-virtual {v2}, Lz2/tk$OooOO0O;->OooO00o()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public OooOO0(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/tk$OooO0OO;->OooO0OO:Z

    return-void
.end method

.method public OooOO0O()V
    .locals 0

    invoke-direct {p0}, Lz2/tk$OooO0OO;->OooO0oO()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lz2/tk$OooO0OO;->OooO00o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz2/tk$OooO;

    instance-of v0, p1, Lz2/tk$OooOO0;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    instance-of v0, p1, Lz2/tk$OooO0o;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    instance-of v0, p1, Lz2/tk$OooOO0O;

    if-eqz v0, :cond_3

    check-cast p1, Lz2/tk$OooOO0O;

    invoke-virtual {p1}, Lz2/tk$OooOO0O;->OooO00o()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lz2/tk$OooOo00;

    invoke-virtual {p0, p1, p2}, Lz2/tk$OooO0OO;->OooO0Oo(Lz2/tk$OooOo00;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/tk$OooO0OO;->OooO0o0(Landroid/view/ViewGroup;I)Lz2/tk$OooOo00;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lz2/tk$OooOo00;

    invoke-virtual {p0, p1}, Lz2/tk$OooO0OO;->OooO0o(Lz2/tk$OooOo00;)V

    return-void
.end method
