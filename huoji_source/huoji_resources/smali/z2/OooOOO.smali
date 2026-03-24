.class public Lz2/OooOOO;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public OoooOoO:Landroid/content/Context;

.field public OoooOoo:Lz2/OooOO0;

.field public Ooooo00:Lz2/OooOO0O;

.field public Ooooo0o:Lz2/OooOOOO;

.field public OooooO0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lz2/OooOO0;Lz2/OooOO0O;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lz2/OooOOO;->OooooO0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lz2/OooOOO;->OoooOoO:Landroid/content/Context;

    iput-object p3, p0, Lz2/OooOOO;->OoooOoo:Lz2/OooOO0;

    iput-object p4, p0, Lz2/OooOOO;->Ooooo00:Lz2/OooOO0O;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p1, Lz2/OooOOOO;

    iget-object p2, p0, Lz2/OooOOO;->OooooO0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p1, p2, p3}, Lz2/OooOOOO;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    iput-object p1, p0, Lz2/OooOOO;->Ooooo0o:Lz2/OooOOOO;

    invoke-virtual {p1, p0}, Lz2/OooOOOO;->OooOo(Lz2/OooOOO;)V

    return-void
.end method


# virtual methods
.method public OooO00o()Lz2/OooOOOO;
    .locals 1

    iget-object v0, p0, Lz2/OooOOO;->Ooooo0o:Lz2/OooOOOO;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz2/OooOOO;->OoooOoo:Lz2/OooOO0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/OooOOO;->OooooO0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lz2/OooOO0;->OooO00o(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lz2/OooOOO;->Ooooo00:Lz2/OooOO0O;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/OooOOO;->OooooO0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, p1, v2}, Lz2/OooOO0O;->OooO00o(Landroid/view/ViewGroup;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
