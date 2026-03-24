.class public Lz2/tk$OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/tk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OoooOoO:Lz2/tk;


# direct methods
.method public constructor <init>(Lz2/tk;)V
    .locals 0

    iput-object p1, p0, Lz2/tk$OooO00o;->OoooOoO:Lz2/tk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-object v0, p0, Lz2/tk$OooO00o;->OoooOoO:Lz2/tk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz2/tk;->OooOo0(Z)V

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    iget-object v0, p0, Lz2/tk$OooO00o;->OoooOoO:Lz2/tk;

    iget-object v1, v0, Lz2/tk;->Ooooo0o:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/tk$OooO00o;->OoooOoO:Lz2/tk;

    iget-object v0, v0, Lz2/tk;->OooooOO:Lz2/tk$OooO0OO;

    invoke-virtual {v0, p1}, Lz2/tk$OooO0OO;->OooO(Landroidx/appcompat/view/menu/MenuItemImpl;)V

    :cond_0
    iget-object p1, p0, Lz2/tk$OooO00o;->OoooOoO:Lz2/tk;

    invoke-virtual {p1, v2}, Lz2/tk;->OooOo0(Z)V

    iget-object p1, p0, Lz2/tk$OooO00o;->OoooOoO:Lz2/tk;

    invoke-virtual {p1, v2}, Lz2/tk;->updateMenuView(Z)V

    return-void
.end method
