.class public Lz2/u0;
.super Landroidx/fragment/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/u0$OooO00o;
    }
.end annotation


# static fields
.field private static final OooooOo:Ljava/lang/String; = "SupportRMFragment"


# instance fields
.field private final OoooOoO:Lz2/g0;

.field private final OoooOoo:Lz2/s0;

.field private final Ooooo00:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lz2/u0;",
            ">;"
        }
    .end annotation
.end field

.field private Ooooo0o:Lz2/u0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooooO0:Lz2/o0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OooooOO:Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lz2/g0;

    invoke-direct {v0}, Lz2/g0;-><init>()V

    invoke-direct {p0, v0}, Lz2/u0;-><init>(Lz2/g0;)V

    return-void
.end method

.method public constructor <init>(Lz2/g0;)V
    .locals 1
    .param p1    # Lz2/g0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lz2/u0$OooO00o;

    invoke-direct {v0, p0}, Lz2/u0$OooO00o;-><init>(Lz2/u0;)V

    iput-object v0, p0, Lz2/u0;->OoooOoo:Lz2/s0;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lz2/u0;->Ooooo00:Ljava/util/Set;

    iput-object p1, p0, Lz2/u0;->OoooOoO:Lz2/g0;

    return-void
.end method

.method private OooOo00(Lz2/u0;)V
    .locals 1

    iget-object v0, p0, Lz2/u0;->Ooooo00:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private OooOo0o()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/u0;->OooooOO:Landroidx/fragment/app/Fragment;

    :goto_0
    return-object v0
.end method

.method private OooOoO(Landroidx/fragment/app/Fragment;)Z
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lz2/u0;->OooOo0o()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private OooOoOO(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lz2/u0;->OooOooo()V

    invoke-static {p1}, Lz2/o00Oo00;->OooO0Oo(Landroid/content/Context;)Lz2/o00Oo00;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o00Oo00;->OooOOO()Lz2/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz2/r0;->OooOOo(Landroidx/fragment/app/FragmentActivity;)Lz2/u0;

    move-result-object p1

    iput-object p1, p0, Lz2/u0;->Ooooo0o:Lz2/u0;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/u0;->Ooooo0o:Lz2/u0;

    invoke-direct {p1, p0}, Lz2/u0;->OooOo00(Lz2/u0;)V

    :cond_0
    return-void
.end method

.method private OooOoo0(Lz2/u0;)V
    .locals 1

    iget-object v0, p0, Lz2/u0;->Ooooo00:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private OooOooo()V
    .locals 1

    iget-object v0, p0, Lz2/u0;->Ooooo0o:Lz2/u0;

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Lz2/u0;->OooOoo0(Lz2/u0;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/u0;->Ooooo0o:Lz2/u0;

    :cond_0
    return-void
.end method


# virtual methods
.method public OooOo()Lz2/o0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lz2/u0;->OooooO0:Lz2/o0;

    return-object v0
.end method

.method public OooOo0()Ljava/util/Set;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lz2/u0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/u0;->Ooooo0o:Lz2/u0;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/u0;->Ooooo00:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lz2/u0;->Ooooo0o:Lz2/u0;

    invoke-virtual {v1}, Lz2/u0;->OooOo0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/u0;

    invoke-direct {v2}, Lz2/u0;->OooOo0o()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lz2/u0;->OooOoO(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public OooOo0O()Lz2/g0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/u0;->OoooOoO:Lz2/g0;

    return-object v0
.end method

.method public OooOoO0()Lz2/s0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lz2/u0;->OoooOoo:Lz2/s0;

    return-object v0
.end method

.method public OooOoo(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/u0;->OooooOO:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/u0;->OooOoOO(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void
.end method

.method public OooOooO(Lz2/o0;)V
    .locals 0
    .param p1    # Lz2/o0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lz2/u0;->OooooO0:Lz2/o0;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/u0;->OooOoOO(Landroidx/fragment/app/FragmentActivity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to register fragment with root"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lz2/u0;->OoooOoO:Lz2/g0;

    invoke-virtual {v0}, Lz2/g0;->OooO0OO()V

    invoke-direct {p0}, Lz2/u0;->OooOooo()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/u0;->OooooOO:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lz2/u0;->OooOooo()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-object v0, p0, Lz2/u0;->OoooOoO:Lz2/g0;

    invoke-virtual {v0}, Lz2/g0;->OooO0Oo()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lz2/u0;->OoooOoO:Lz2/g0;

    invoke-virtual {v0}, Lz2/g0;->OooO0o0()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lz2/u0;->OooOo0o()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
