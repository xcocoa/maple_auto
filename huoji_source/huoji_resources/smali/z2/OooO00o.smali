.class public abstract Lz2/OooO00o;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field public final OoooOoO:I

.field public OoooOoo:Landroid/content/Context;

.field public Ooooo00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TM;>;"
        }
    .end annotation
.end field

.field public Ooooo0o:Lz2/OooO0o;

.field public OooooO0:Lz2/OooO;

.field public OooooOO:Lz2/OooO0OO;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lz2/OooO00o;->OoooOoo:Landroid/content/Context;

    iput p2, p0, Lz2/OooO00o;->OoooOoO:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO(II)V
    .locals 1

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

    invoke-virtual {p0, v0, p1}, Lz2/OooO00o;->OooO0O0(ILjava/lang/Object;)V

    return-void
.end method

.method public OooO0O0(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public OooO0OO(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lz2/OooO00o;->OooO0O0(ILjava/lang/Object;)V

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

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public OooO0o()V
    .locals 1

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

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

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    return-object v0
.end method

.method public OooOO0(I)V
    .locals 1

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public OooOO0O(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public OooOO0o(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TM;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public OooOOO(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;TM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lz2/OooO00o;->OooOOO0(ILjava/lang/Object;)V

    return-void
.end method

.method public OooOOO0(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITM;)V"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public OooOOOO(Lz2/OooOOOO;)V
    .locals 0

    return-void
.end method

.method public OooOOOo(Lz2/OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lz2/OooO00o;->OooooOO:Lz2/OooO0OO;

    return-void
.end method

.method public OooOOo(Lz2/OooO;)V
    .locals 0

    iput-object p1, p0, Lz2/OooO00o;->OooooO0:Lz2/OooO;

    return-void
.end method

.method public OooOOo0(Lz2/OooO0o;)V
    .locals 0

    iput-object p1, p0, Lz2/OooO00o;->Ooooo0o:Lz2/OooO0o;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TM;"
        }
    .end annotation

    iget-object v0, p0, Lz2/OooO00o;->Ooooo00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lz2/OooO00o;->OoooOoO:I

    invoke-static {p2, p3, v0}, Lz2/OooO0O0;->OooO00o(Landroid/view/View;Landroid/view/ViewGroup;I)Lz2/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, Lz2/OooO0O0;->OooO0OO()Lz2/OooOOOO;

    move-result-object p3

    invoke-virtual {p3, p1}, Lz2/OooOOOO;->OooOo0o(I)V

    invoke-virtual {p2}, Lz2/OooO0O0;->OooO0OO()Lz2/OooOOOO;

    move-result-object p3

    iget-object v0, p0, Lz2/OooO00o;->Ooooo0o:Lz2/OooO0o;

    invoke-virtual {p3, v0}, Lz2/OooOOOO;->OooOo0(Lz2/OooO0o;)V

    invoke-virtual {p2}, Lz2/OooO0O0;->OooO0OO()Lz2/OooOOOO;

    move-result-object p3

    iget-object v0, p0, Lz2/OooO00o;->OooooO0:Lz2/OooO;

    invoke-virtual {p3, v0}, Lz2/OooOOOO;->OooOo0O(Lz2/OooO;)V

    invoke-virtual {p2}, Lz2/OooO0O0;->OooO0OO()Lz2/OooOOOO;

    move-result-object p3

    iget-object v0, p0, Lz2/OooO00o;->OooooOO:Lz2/OooO0OO;

    invoke-virtual {p3, v0}, Lz2/OooOOOO;->OooOo00(Lz2/OooO0OO;)V

    invoke-virtual {p2}, Lz2/OooO0O0;->OooO0OO()Lz2/OooOOOO;

    move-result-object p3

    invoke-virtual {p0, p3}, Lz2/OooO00o;->OooOOOO(Lz2/OooOOOO;)V

    invoke-virtual {p2}, Lz2/OooO0O0;->OooO0OO()Lz2/OooOOOO;

    move-result-object p3

    invoke-virtual {p0, p1}, Lz2/OooO00o;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, p1, v0}, Lz2/OooO00o;->OooO0oO(Lz2/OooOOOO;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lz2/OooO0O0;->OooO0O0()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
