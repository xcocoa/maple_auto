.class public abstract Lz2/OooOOO0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lz2/OooOOO;",
        ">;"
    }
.end annotation


# instance fields
.field public OooO:Landroidx/recyclerview/widget/RecyclerView;

.field public final OooO00o:I

.field public OooO0O0:Landroid/content/Context;

.field public OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation
.end field

.field public OooO0Oo:Lz2/OooO0o;

.field public OooO0o:Lz2/OooO0OO;

.field public OooO0o0:Lz2/OooO;

.field public OooO0oO:Lz2/OooOO0;

.field public OooO0oo:Lz2/OooOO0O;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lz2/OooOOO0;->OooO:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lz2/OooOOO0;->OooO0O0:Landroid/content/Context;

    iput p2, p0, Lz2/OooOOO0;->OooO00o:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO(II)V
    .locals 2

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public OooO00o(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lz2/OooOOO0;->OooO0O0(ILjava/lang/Object;)V

    return-void
.end method

.method public OooO0O0(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public OooO0OO(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lz2/OooOOO0;->OooO0O0(ILjava/lang/Object;)V

    return-void
.end method

.method public OooO0Oo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method public OooO0o()V
    .locals 1

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public OooO0o0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_0
    return-void
.end method

.method public abstract OooO0oO(Lz2/OooOOOO;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/OooOOOO;",
            "ITM;)V"
        }
    .end annotation
.end method

.method public OooO0oo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    return-object v0
.end method

.method public OooOO0(Lz2/OooOOO;I)V
    .locals 1

    invoke-virtual {p1}, Lz2/OooOOO;->OooO00o()Lz2/OooOOOO;

    move-result-object p1

    invoke-virtual {p0, p2}, Lz2/OooOOO0;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lz2/OooOOO0;->OooO0oO(Lz2/OooOOOO;ILjava/lang/Object;)V

    return-void
.end method

.method public OooOO0O(Landroid/view/ViewGroup;I)Lz2/OooOOO;
    .locals 4

    new-instance p2, Lz2/OooOOO;

    iget-object v0, p0, Lz2/OooOOO0;->OooO:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lz2/OooOOO0;->OooO0O0:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lz2/OooOOO0;->OooO00o:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lz2/OooOOO0;->OooO0oO:Lz2/OooOO0;

    iget-object v2, p0, Lz2/OooOOO0;->OooO0oo:Lz2/OooOO0O;

    invoke-direct {p2, v0, p1, v1, v2}, Lz2/OooOOO;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lz2/OooOO0;Lz2/OooOO0O;)V

    invoke-virtual {p2}, Lz2/OooOOO;->OooO00o()Lz2/OooOOOO;

    move-result-object p1

    iget-object v0, p0, Lz2/OooOOO0;->OooO0Oo:Lz2/OooO0o;

    invoke-virtual {p1, v0}, Lz2/OooOOOO;->OooOo0(Lz2/OooO0o;)V

    invoke-virtual {p2}, Lz2/OooOOO;->OooO00o()Lz2/OooOOOO;

    move-result-object p1

    iget-object v0, p0, Lz2/OooOOO0;->OooO0o0:Lz2/OooO;

    invoke-virtual {p1, v0}, Lz2/OooOOOO;->OooOo0O(Lz2/OooO;)V

    invoke-virtual {p2}, Lz2/OooOOO;->OooO00o()Lz2/OooOOOO;

    move-result-object p1

    iget-object v0, p0, Lz2/OooOOO0;->OooO0o:Lz2/OooO0OO;

    invoke-virtual {p1, v0}, Lz2/OooOOOO;->OooOo00(Lz2/OooO0OO;)V

    invoke-virtual {p2}, Lz2/OooOOO;->OooO00o()Lz2/OooOOOO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz2/OooOOO0;->OooOOo0(Lz2/OooOOOO;)V

    return-object p2
.end method

.method public OooOO0o(I)V
    .locals 1

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public OooOOO(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public OooOOO0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lz2/OooOOO0;->OooOO0o(I)V

    return-void
.end method

.method public OooOOOO(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public OooOOOo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lz2/OooOOO0;->OooOOOO(ILjava/lang/Object;)V

    return-void
.end method

.method public OooOOo(Lz2/OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOO0;->OooO0o:Lz2/OooO0OO;

    return-void
.end method

.method public OooOOo0(Lz2/OooOOOO;)V
    .locals 0

    return-void
.end method

.method public OooOOoo(Lz2/OooO0o;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOO0;->OooO0Oo:Lz2/OooO0o;

    return-void
.end method

.method public OooOo0(Lz2/OooOO0;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOO0;->OooO0oO:Lz2/OooOO0;

    return-void
.end method

.method public OooOo00(Lz2/OooO;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOO0;->OooO0o0:Lz2/OooO;

    return-void
.end method

.method public OooOo0O(Lz2/OooOO0O;)V
    .locals 0

    iput-object p1, p0, Lz2/OooOOO0;->OooO0oo:Lz2/OooOO0O;

    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TM;"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lz2/OooOOO0;->OooO0OO:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lz2/OooOOO;

    invoke-virtual {p0, p1, p2}, Lz2/OooOOO0;->OooOO0(Lz2/OooOOO;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/OooOOO0;->OooOO0O(Landroid/view/ViewGroup;I)Lz2/OooOOO;

    move-result-object p1

    return-object p1
.end method
