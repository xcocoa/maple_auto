.class public Lz2/r1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/m1;
.implements Lz2/l1;


# instance fields
.field private final OoooOoO:Lz2/m1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private OoooOoo:Lz2/l1;

.field private Ooooo00:Lz2/l1;

.field private Ooooo0o:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz2/r1;-><init>(Lz2/m1;)V

    return-void
.end method

.method public constructor <init>(Lz2/m1;)V
    .locals 0
    .param p1    # Lz2/m1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/r1;->OoooOoO:Lz2/m1;

    return-void
.end method

.method private OooOOO()Z
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoO:Lz2/m1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lz2/m1;->OooO0oO(Lz2/l1;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private OooOOO0()Z
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoO:Lz2/m1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lz2/m1;->OooOO0o(Lz2/l1;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private OooOOOO()Z
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoO:Lz2/m1;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lz2/m1;->OooO0oo(Lz2/l1;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private OooOOOo()Z
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoO:Lz2/m1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lz2/m1;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public OooO()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/r1;->Ooooo0o:Z

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->OooOO0O()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->OooO()V

    :cond_0
    iget-boolean v0, p0, Lz2/r1;->Ooooo0o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->OooO()V

    :cond_1
    return-void
.end method

.method public OooO00o(Lz2/l1;)V
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lz2/r1;->OoooOoO:Lz2/m1;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lz2/m1;->OooO00o(Lz2/l1;)V

    :cond_1
    return-void
.end method

.method public OooO0O0()Z
    .locals 1

    invoke-direct {p0}, Lz2/r1;->OooOOOo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lz2/r1;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public OooO0OO(Lz2/l1;)Z
    .locals 3

    instance-of v0, p1, Lz2/r1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lz2/r1;

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    if-nez v0, :cond_0

    iget-object v0, p1, Lz2/r1;->OoooOoo:Lz2/l1;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0, v2}, Lz2/l1;->OooO0OO(Lz2/l1;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    iget-object p1, p1, Lz2/r1;->Ooooo00:Lz2/l1;

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lz2/l1;->OooO0OO(Lz2/l1;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public OooO0Oo()Z
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->OooO0Oo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public OooO0o()Z
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->OooO0o()Z

    move-result v0

    return v0
.end method

.method public OooO0o0()Z
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->OooO0o0()Z

    move-result v0

    return v0
.end method

.method public OooO0oO(Lz2/l1;)Z
    .locals 1

    invoke-direct {p0}, Lz2/r1;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lz2/r1;->OooO0O0()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO0oo(Lz2/l1;)Z
    .locals 1

    invoke-direct {p0}, Lz2/r1;->OooOOOO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {p1}, Lz2/l1;->OooO0Oo()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooOO0(Lz2/l1;)V
    .locals 1

    iget-object v0, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lz2/r1;->OoooOoO:Lz2/m1;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lz2/m1;->OooOO0(Lz2/l1;)V

    :cond_1
    iget-object p1, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    invoke-interface {p1}, Lz2/l1;->OooOO0O()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    invoke-interface {p1}, Lz2/l1;->clear()V

    :cond_2
    return-void
.end method

.method public OooOO0O()Z
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->OooOO0O()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->OooOO0O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public OooOO0o(Lz2/l1;)Z
    .locals 1

    invoke-direct {p0}, Lz2/r1;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooOOo0(Lz2/l1;Lz2/l1;)V
    .locals 0

    iput-object p1, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    iput-object p2, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/r1;->Ooooo0o:Z

    iget-object v0, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->clear()V

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->clear()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->isRunning()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lz2/r1;->OoooOoo:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->recycle()V

    iget-object v0, p0, Lz2/r1;->Ooooo00:Lz2/l1;

    invoke-interface {v0}, Lz2/l1;->recycle()V

    return-void
.end method
