.class public Lz2/cc0;
.super Lz2/wb0;
.source ""


# instance fields
.field public OooOOo:Lz2/hc0;

.field public OooOOo0:Lz2/hc0;

.field private OooOOoo:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz2/wb0;-><init>()V

    return-void
.end method

.method private o00000()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v0}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/wb0;->Oooooo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {p0, v1}, Lz2/yb0;->OoooOoO(Lz2/hc0;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lz2/cc0;->o000000O()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lz2/cc0;->OooOOo:Lz2/hc0;

    invoke-virtual {p0, v3}, Lz2/wb0;->Ooooooo(Lz2/hc0;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v4}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lz2/wb0;->o0OoOo0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "AssociationUpdater"

    const-string v1, "generateChangeConstraintSQL >> "

    invoke-static {v0, v1}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "<< generateChangeConstraintSQL"

    invoke-static {v0, v1}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private o000000(Lz2/fc0;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v0}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lz2/vb0;->Oooo(Ljava/lang/String;Lz2/fc0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private o000000O()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {p0, v1}, Lz2/wb0;->ooOO(Lz2/hc0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v3, v2}, Lz2/hc0;->OooO0O0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lz2/fc0;

    invoke-direct {v3}, Lz2/fc0;-><init>()V

    invoke-virtual {v3, v2}, Lz2/fc0;->OooO0oO(Ljava/lang/String;)V

    const-string v2, "integer"

    invoke-virtual {v3, v2}, Lz2/fc0;->OooO0oo(Ljava/lang/String;)V

    iget-object v2, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v2}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lz2/vb0;->Oooo(Ljava/lang/String;Lz2/fc0;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private o000000o(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/fc0;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/fc0;

    invoke-direct {p0, v1}, Lz2/cc0;->o000000(Lz2/fc0;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private o00000O(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lz2/cc0;->o00000OO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lz2/la0;->OooOOOo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {p0, v0, p1}, Lz2/wb0;->o00o0O(Lz2/hc0;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private o00000O0()Z
    .locals 5

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v0}, Lz2/hc0;->OooO0o0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/fc0;

    iget-object v2, p0, Lz2/cc0;->OooOOo:Lz2/hc0;

    invoke-virtual {v1}, Lz2/fc0;->OooO00o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lz2/hc0;->OooO0Oo(Ljava/lang/String;)Lz2/fc0;

    move-result-object v2

    invoke-virtual {v1}, Lz2/fc0;->OooO0o()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lz2/fc0;->OooO0o()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return v4

    :cond_2
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lz2/fc0;->OooO0o0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lz2/fc0;->OooO0o0()Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private o00000OO(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v0, p1}, Lz2/hc0;->OooO0O0(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private o00000Oo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do removeColumns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssociationUpdater"

    invoke-static {v1, v0}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v0}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lz2/wb0;->o00oO0o(Ljava/util/Collection;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lz2/cc0;->OooOOo:Lz2/hc0;

    invoke-virtual {v1, v0}, Lz2/hc0;->OooO0oO(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o00000o0()V
    .locals 6

    invoke-direct {p0}, Lz2/cc0;->o00000O0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    iget-object v1, p0, Lz2/wb0;->OooOOOO:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lz2/yb0;->OoooOo0(Lz2/hc0;Landroid/database/sqlite/SQLiteDatabase;Z)V

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v0}, Lz2/hc0;->OooO0OO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz2/la0;->OooO0o0(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/ob0;

    invoke-virtual {v1}, Lz2/ob0;->OooO0Oo()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lz2/ob0;->OooO0Oo()I

    move-result v3

    if-ne v3, v2, :cond_0

    :cond_1
    invoke-virtual {v1}, Lz2/ob0;->OooO0o0()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v4}, Lz2/hc0;->OooO0OO()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lz2/ob0;->OooO0OO()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lz2/rc0;->OooOOO0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v3}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v4}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lz2/wb0;->OooOOOO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v3, v1, v4, v5}, Lz2/vb0;->Oooo0o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/cc0;->OooOOoo:Z

    invoke-direct {p0}, Lz2/cc0;->o000OOo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/cc0;->o00000Oo(Ljava/util/List;)V

    invoke-direct {p0}, Lz2/cc0;->o0O0O00()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/cc0;->o0OOO0o(Ljava/util/List;)V

    invoke-direct {p0}, Lz2/cc0;->oo0o0Oo()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lz2/cc0;->o0OO00O(Ljava/util/List;)V

    invoke-direct {p0}, Lz2/cc0;->o0Oo0oo()V

    :cond_3
    return-void
.end method

.method private o000OOo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v0}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lz2/cc0;->OooOOo:Lz2/hc0;

    invoke-virtual {v2}, Lz2/hc0;->OooO0o0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz2/fc0;

    invoke-virtual {v3}, Lz2/fc0;->OooO00o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lz2/cc0;->o00000O(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove columns from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AssociationUpdater"

    invoke-static {v2, v0}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private o0O0O00()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/fc0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v1}, Lz2/hc0;->OooO0o0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/fc0;

    invoke-virtual {v2}, Lz2/fc0;->OooO00o()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lz2/cc0;->OooOOo:Lz2/hc0;

    invoke-virtual {v4, v3}, Lz2/hc0;->OooO0O0(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private o0OO00O(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/fc0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AssociationUpdater"

    const-string v1, "do changeColumnsType"

    invoke-static {v0, v1}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/fc0;

    invoke-virtual {v2}, Lz2/fc0;->OooO00o()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lz2/cc0;->o00000Oo(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lz2/cc0;->o0OOO0o(Ljava/util/List;)V

    return-void
.end method

.method private o0OOO0o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz2/fc0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AssociationUpdater"

    const-string v1, "do addColumn"

    invoke-static {v0, v1}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lz2/cc0;->o000000o(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lz2/wb0;->OooOOOO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v1}, Lz2/ac0;->Oooo000(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz2/fc0;

    iget-object v1, p0, Lz2/cc0;->OooOOo:Lz2/hc0;

    invoke-virtual {v1, v0}, Lz2/hc0;->OooO00o(Lz2/fc0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o0Oo0oo()V
    .locals 2

    iget-boolean v0, p0, Lz2/cc0;->OooOOoo:Z

    if-eqz v0, :cond_0

    const-string v0, "AssociationUpdater"

    const-string v1, "do changeColumnsConstraints"

    invoke-static {v0, v1}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lz2/cc0;->o00000()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lz2/wb0;->OooOOOO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, v1}, Lz2/ac0;->Oooo000(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method private oo0o0Oo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz2/fc0;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lz2/cc0;->OooOOo:Lz2/hc0;

    invoke-virtual {v1}, Lz2/hc0;->OooO0o0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz2/fc0;

    iget-object v3, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v3}, Lz2/hc0;->OooO0o0()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2/fc0;

    invoke-virtual {v2}, Lz2/fc0;->OooO00o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lz2/fc0;->OooO00o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lz2/fc0;->OooO0O0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lz2/fc0;->OooO0O0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lz2/fc0;->OooO0O0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "blob"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lz2/fc0;->OooO0O0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-boolean v5, p0, Lz2/cc0;->OooOOoo:Z

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default value db is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lz2/fc0;->OooO0OO()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", default value is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lz2/fc0;->OooO0OO()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AssociationUpdater"

    invoke-static {v6, v5}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lz2/fc0;->OooO0o0()Z

    move-result v5

    invoke-virtual {v4}, Lz2/fc0;->OooO0o0()Z

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {v2}, Lz2/fc0;->OooO0OO()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lz2/fc0;->OooO0OO()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lz2/fc0;->OooO0o()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lz2/fc0;->OooO0o()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lz2/cc0;->OooOOoo:Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public OooOooO(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    iput-object p1, p0, Lz2/wb0;->OooOOOO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lz2/ac0;->Oooo00o()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lz2/hc0;

    iput-object p2, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {p2}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lz2/wb0;->o00Oo0(Ljava/lang/String;)Lz2/hc0;

    move-result-object p2

    iput-object p2, p0, Lz2/cc0;->OooOOo:Lz2/hc0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOrUpgradeTable: model is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lz2/cc0;->OooOOo0:Lz2/hc0;

    invoke-virtual {v0}, Lz2/hc0;->OooO0o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AssociationUpdater"

    invoke-static {v0, p2}, Lz2/sc0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lz2/cc0;->o00000o0()V

    goto :goto_0

    :cond_0
    return-void
.end method
