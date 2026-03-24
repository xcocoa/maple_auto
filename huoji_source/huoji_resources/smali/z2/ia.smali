.class public Lz2/ia;
.super Lz2/i3;
.source ""


# instance fields
.field private OoooOoO:Landroidx/recyclerview/widget/RecyclerView;

.field private OoooOoo:Lz2/OooOOO0;

.field private Ooooo00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo0o:Landroid/widget/TextView;

.field private OooooO0:Lz2/OooOO0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lz2/i3;-><init>()V

    new-instance v0, Lz2/ia$OooO00o;

    invoke-direct {v0, p0}, Lz2/ia$OooO00o;-><init>(Lz2/ia;)V

    iput-object v0, p0, Lz2/ia;->OooooO0:Lz2/OooOO0;

    return-void
.end method

.method private OooOo(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0902e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lz2/ia;->OoooOoO:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lz2/ia;->OoooOoO:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lz2/ia;->OoooOoO:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lz2/p9;

    iget-object v1, p0, Lz2/ia;->OoooOoO:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f0c0037

    invoke-direct {v0, v1, v2}, Lz2/p9;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    iput-object v0, p0, Lz2/ia;->OoooOoo:Lz2/OooOOO0;

    iget-object v1, p0, Lz2/ia;->OooooO0:Lz2/OooOO0;

    invoke-virtual {v0, v1}, Lz2/OooOOO0;->OooOo0(Lz2/OooOO0;)V

    const v0, 0x7f090306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lz2/ia;->Ooooo0o:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic OooOo0o(Lz2/ia;)Lz2/OooOOO0;
    .locals 0

    iget-object p0, p0, Lz2/ia;->OoooOoo:Lz2/OooOOO0;

    return-object p0
.end method

.method public static OooOoO(Ljava/util/ArrayList;)Lz2/ia;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cyjh/http/bean/NotifyMsgBean;",
            ">;)",
            "Lz2/ia;"
        }
    .end annotation

    new-instance v0, Lz2/ia;

    invoke-direct {v0}, Lz2/ia;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "msg_data"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private OooOoO0()V
    .locals 3

    iget-object v0, p0, Lz2/ia;->Ooooo00:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lz2/ia;->Ooooo0o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lz2/ia;->OoooOoO:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lz2/ia;->OoooOoo:Lz2/OooOOO0;

    iget-object v1, p0, Lz2/ia;->Ooooo00:Ljava/util/List;

    invoke-virtual {v0, v1}, Lz2/OooOOO0;->OooOOO(Ljava/util/List;)V

    iget-object v0, p0, Lz2/ia;->OoooOoO:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lz2/ia;->OoooOoo:Lz2/OooOOO0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/ia;->Ooooo0o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lz2/ia;->OoooOoO:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public OooOo00()I
    .locals 1

    const v0, 0x7f0c00f2

    return v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l10;->OooOoO0(Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageMainThread(Lcom/cyjh/elfin/entity/MsgItem;)V
    .locals 2
    .annotation runtime Lz2/r10;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-virtual {p1}, Lcom/cyjh/elfin/entity/MsgItem;->getMsgType()I

    move-result p1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lz2/ia;->OoooOoo:Lz2/OooOOO0;

    invoke-virtual {p1}, Lz2/OooOOO0;->OooO0o()V

    iget-object p1, p0, Lz2/ia;->Ooooo0o:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lz2/ia;->OoooOoO:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/entity/MsgItem;

    const/16 v1, 0x3eb

    invoke-direct {v0, v1}, Lcom/cyjh/elfin/entity/MsgItem;-><init>(I)V

    invoke-virtual {p1, v0}, Lz2/l10;->OooOOOO(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const-class v0, Lz2/ia;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0OO(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-class v0, Lz2/ia;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/bh;->OooO0Oo(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {}, Lz2/l10;->OooO0o()Lz2/l10;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz2/l10;->OooOo00(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string v0, "msg_data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lz2/ia;->Ooooo00:Ljava/util/List;

    :cond_0
    invoke-direct {p0, p1}, Lz2/ia;->OooOo(Landroid/view/View;)V

    invoke-direct {p0}, Lz2/ia;->OooOoO0()V

    return-void
.end method
