.class public Lz2/hc0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:Ljava/lang/String;

.field private OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz2/fc0;",
            ">;"
        }
    .end annotation
.end field

.field private OooO0OO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/hc0;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/hc0;->OooO00o:Ljava/lang/String;

    return-void
.end method

.method public OooO00o(Lz2/fc0;)V
    .locals 1

    iget-object v0, p0, Lz2/hc0;->OooO0O0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lz2/hc0;->OooO0O0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lz2/hc0;->OooO0O0:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/fc0;

    invoke-virtual {v2}, Lz2/fc0;->OooO00o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/hc0;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0Oo(Ljava/lang/String;)Lz2/fc0;
    .locals 3

    iget-object v0, p0, Lz2/hc0;->OooO0O0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/fc0;

    invoke-virtual {v1}, Lz2/fc0;->OooO00o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/hc0;->OooO00o:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/fc0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/hc0;->OooO0O0:Ljava/util/List;

    return-object v0
.end method

.method public OooO0oO(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lz2/hc0;->OooO0O0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lz2/hc0;->OooO0O0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/fc0;

    invoke-virtual {v1}, Lz2/fc0;->OooO00o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v2, :cond_3

    iget-object p1, p0, Lz2/hc0;->OooO0O0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public OooO0oo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/hc0;->OooO0OO:Ljava/lang/String;

    return-void
.end method
