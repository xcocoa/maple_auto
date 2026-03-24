.class public Lz2/OooOOOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final OoooOoO:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public OoooOoo:Lz2/OooO0o;

.field public Ooooo00:Lz2/OooO;

.field public Ooooo0o:Lz2/OooO0OO;

.field public OooooO0:Landroid/view/View;

.field public OooooOO:Landroid/content/Context;

.field public OooooOo:I

.field public Oooooo:Landroidx/recyclerview/widget/RecyclerView;

.field public Oooooo0:Lz2/OooOOO;

.field public OoooooO:Landroid/view/ViewGroup;

.field public Ooooooo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lz2/OooOOOO;->OoooOoO:Landroid/util/SparseArray;

    iput-object p1, p0, Lz2/OooOOOO;->OoooooO:Landroid/view/ViewGroup;

    iput-object p2, p0, Lz2/OooOOOO;->OooooO0:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lz2/OooOOOO;->OooooOO:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lz2/OooOOOO;->OoooOoO:Landroid/util/SparseArray;

    iput-object p1, p0, Lz2/OooOOOO;->Oooooo:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lz2/OooOOOO;->OooooO0:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lz2/OooOOOO;->OooooOO:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public OooO(II)Lz2/OooOOOO;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lz2/OooOOOO;->OooooOO:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public OooO00o()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lz2/OooOOOO;->OooooO0:Landroid/view/View;

    return-object v0
.end method

.method public OooO0O0(I)Landroid/widget/ImageView;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method public OooO0OO()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/OooOOOO;->Ooooooo:Ljava/lang/Object;

    return-object v0
.end method

.method public OooO0Oo()I
    .locals 1

    iget-object v0, p0, Lz2/OooOOOO;->Oooooo0:Lz2/OooOOO;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lz2/OooOOOO;->OooooOo:I

    return v0
.end method

.method public OooO0o(I)Landroid/widget/TextView;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public OooO0o0()Lz2/OooOOO;
    .locals 1

    iget-object v0, p0, Lz2/OooOOOO;->Oooooo0:Lz2/OooOOO;

    return-object v0
.end method

.method public OooO0oO(I)Landroid/view/View;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooOOOO;->OoooOoO:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/OooOOOO;->OooooO0:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lz2/OooOOOO;->OoooOoO:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public OooO0oo(II)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p0
.end method

.method public OooOO0(II)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-object p0
.end method

.method public OooOO0O(IZ)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-object p0
.end method

.method public OooOO0o(ILjava/lang/String;)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public OooOOO(ILandroid/graphics/drawable/Drawable;)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public OooOOO0(ILandroid/graphics/Bitmap;)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public OooOOOO(II)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public OooOOOo(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public OooOOo(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public OooOOo0(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public OooOOoo(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOOO;->Ooooooo:Ljava/lang/Object;

    return-void
.end method

.method public OooOo(Lz2/OooOOO;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOOO;->Oooooo0:Lz2/OooOOO;

    return-void
.end method

.method public OooOo0(Lz2/OooO0o;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOOO;->OoooOoo:Lz2/OooO0o;

    return-void
.end method

.method public OooOo00(Lz2/OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOOO;->Ooooo0o:Lz2/OooO0OO;

    return-void
.end method

.method public OooOo0O(Lz2/OooO;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOOO;->Ooooo00:Lz2/OooO;

    return-void
.end method

.method public OooOo0o(I)V
    .locals 0

    iput p1, p0, Lz2/OooOOOO;->OooooOo:I

    return-void
.end method

.method public OooOoO(ILjava/lang/Object;)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public OooOoO0(IILjava/lang/Object;)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object p0
.end method

.method public OooOoOO(II)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public OooOoo(II)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public OooOoo0(ILjava/lang/CharSequence;)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public OooOooO(II)Lz2/OooOOOO;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lz2/OooOOOO;->OooooOO:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public OooOooo(II)Lz2/OooOOOO;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lz2/OooOOOO;->OooO0oO(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lz2/OooOOOO;->Ooooo0o:Lz2/OooO0OO;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lz2/OooOOOO;->Oooooo:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lz2/OooOOOO;->OooO0Oo()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p2}, Lz2/OooO0OO;->OooO00o(Landroid/view/ViewGroup;Landroid/widget/CompoundButton;IZ)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lz2/OooOOOO;->OoooooO:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lz2/OooOOOO;->OoooOoo:Lz2/OooO0o;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lz2/OooOOOO;->Oooooo:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lz2/OooOOOO;->OooO0Oo()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lz2/OooO0o;->OooO00o(Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lz2/OooOOOO;->OoooooO:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lz2/OooOOOO;->Ooooo00:Lz2/OooO;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lz2/OooOOOO;->Oooooo:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lz2/OooOOOO;->OooO0Oo()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lz2/OooO;->OooO00o(Landroid/view/ViewGroup;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_0
    iget-object v1, p0, Lz2/OooOOOO;->OoooooO:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
