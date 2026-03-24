.class public Lz2/oO000OOo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz2/o0OOo000;
.implements Lz2/o0O0oo00$OooO00o;
.implements Lz2/o0OOo000$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz2/o0OOo000;",
        "Lz2/o0O0oo00$OooO00o<",
        "Ljava/lang/Object;",
        ">;",
        "Lz2/o0OOo000$OooO00o;"
    }
.end annotation


# static fields
.field private static final Oooooo0:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field private final OoooOoO:Lz2/o0o0000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/o0o0000<",
            "*>;"
        }
    .end annotation
.end field

.field private final OoooOoo:Lz2/o0OOo000$OooO00o;

.field private Ooooo00:I

.field private Ooooo0o:Lz2/o0OOO0OO;

.field private OooooO0:Ljava/lang/Object;

.field private volatile OooooOO:Lz2/oO0o0000$OooO00o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/oO0o0000$OooO00o<",
            "*>;"
        }
    .end annotation
.end field

.field private OooooOo:Lz2/o0OOOO00;


# direct methods
.method public constructor <init>(Lz2/o0o0000;Lz2/o0OOo000$OooO00o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0o0000<",
            "*>;",
            "Lz2/o0OOo000$OooO00o;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    iput-object p2, p0, Lz2/oO000OOo;->OoooOoo:Lz2/o0OOo000$OooO00o;

    return-void
.end method

.method private OooO0oO(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SourceGenerator"

    invoke-static {}, Lz2/n2;->OooO0O0()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v3, p1}, Lz2/o0o0000;->OooOOOo(Ljava/lang/Object;)Lz2/o0oO0O0o;

    move-result-object v3

    new-instance v4, Lz2/o0OOOO0o;

    iget-object v5, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v5}, Lz2/o0o0000;->OooOO0O()Lz2/o0O0OOO0;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lz2/o0OOOO0o;-><init>(Lz2/o0oO0O0o;Ljava/lang/Object;Lz2/o0O0OOO0;)V

    new-instance v5, Lz2/o0OOOO00;

    iget-object v6, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v6, v6, Lz2/oO0o0000$OooO00o;->OooO00o:Lz2/o0O0O0Oo;

    iget-object v7, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v7}, Lz2/o0o0000;->OooOOOO()Lz2/o0O0O0Oo;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lz2/o0OOOO00;-><init>(Lz2/o0O0O0Oo;Lz2/o0O0O0Oo;)V

    iput-object v5, p0, Lz2/oO000OOo;->OooooOo:Lz2/o0OOOO00;

    iget-object v5, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v5}, Lz2/o0o0000;->OooO0Oo()Lz2/oO00Oo0;

    move-result-object v5

    iget-object v6, p0, Lz2/oO000OOo;->OooooOo:Lz2/o0OOOO00;

    invoke-interface {v5, v6, v4}, Lz2/oO00Oo0;->OooO00o(Lz2/o0O0O0Oo;Lz2/oO00Oo0$OooO0O0;)V

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lz2/oO000OOo;->OooooOo:Lz2/o0OOOO00;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lz2/n2;->OooO00o(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p1, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object p1, p1, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {p1}, Lz2/o0O0oo00;->OooO0O0()V

    new-instance p1, Lz2/o0OOO0OO;

    iget-object v0, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v0, v0, Lz2/oO0o0000$OooO00o;->OooO00o:Lz2/o0O0O0Oo;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-direct {p1, v0, v1, p0}, Lz2/o0OOO0OO;-><init>(Ljava/util/List;Lz2/o0o0000;Lz2/o0OOo000$OooO00o;)V

    iput-object p1, p0, Lz2/oO000OOo;->Ooooo0o:Lz2/o0OOO0OO;

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v0, v0, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v0}, Lz2/o0O0oo00;->OooO0O0()V

    throw p1
.end method

.method private OooO0oo()Z
    .locals 2

    iget v0, p0, Lz2/oO000OOo;->Ooooo00:I

    iget-object v1, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v1}, Lz2/o0o0000;->OooO0oO()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public OooO00o(Lz2/o0O0O0Oo;Ljava/lang/Exception;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Ljava/lang/Exception;",
            "Lz2/o0O0oo00<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lz2/oO000OOo;->OoooOoo:Lz2/o0OOo000$OooO00o;

    iget-object v0, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v0, v0, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v0}, Lz2/o0O0oo00;->OooO0Oo()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lz2/o0OOo000$OooO00o;->OooO00o(Lz2/o0O0O0Oo;Ljava/lang/Exception;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public OooO0O0()Z
    .locals 5

    iget-object v0, p0, Lz2/oO000OOo;->OooooO0:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lz2/oO000OOo;->OooooO0:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lz2/oO000OOo;->OooO0oO(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lz2/oO000OOo;->Ooooo0o:Lz2/o0OOO0OO;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lz2/o0OOO0OO;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iput-object v1, p0, Lz2/oO000OOo;->Ooooo0o:Lz2/o0OOO0OO;

    iput-object v1, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-direct {p0}, Lz2/oO000OOo;->OooO0oo()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v1}, Lz2/o0o0000;->OooO0oO()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lz2/oO000OOo;->Ooooo00:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lz2/oO000OOo;->Ooooo00:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/oO0o0000$OooO00o;

    iput-object v1, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v1, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v1}, Lz2/o0o0000;->OooO0o0()Lz2/o0oo0000;

    move-result-object v1

    iget-object v3, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v3, v3, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v3}, Lz2/o0O0oo00;->OooO0Oo()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lz2/o0oo0000;->OooO0OO(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    iget-object v3, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v3, v3, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v3}, Lz2/o0O0oo00;->OooO00o()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lz2/o0o0000;->OooOo00(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v0, v0, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    iget-object v1, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v1}, Lz2/o0o0000;->OooOO0o()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lz2/o0O0oo00;->OooO0o0(Lcom/bumptech/glide/Priority;Lz2/o0O0oo00$OooO00o;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public OooO0OO(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lz2/oO000OOo;->OoooOoo:Lz2/o0OOo000$OooO00o;

    iget-object v1, p0, Lz2/oO000OOo;->OooooOo:Lz2/o0OOOO00;

    iget-object v2, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v2, v2, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    iget-object v3, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v3, v3, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v3}, Lz2/o0O0oo00;->OooO0Oo()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lz2/o0OOo000$OooO00o;->OooO00o(Lz2/o0O0O0Oo;Ljava/lang/Exception;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public OooO0Oo()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public OooO0o(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lz2/oO000OOo;->OoooOoO:Lz2/o0o0000;

    invoke-virtual {v0}, Lz2/o0o0000;->OooO0o0()Lz2/o0oo0000;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v1, v1, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v1}, Lz2/o0O0oo00;->OooO0Oo()Lcom/bumptech/glide/load/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/o0oo0000;->OooO0OO(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lz2/oO000OOo;->OooooO0:Ljava/lang/Object;

    iget-object p1, p0, Lz2/oO000OOo;->OoooOoo:Lz2/o0OOo000$OooO00o;

    invoke-interface {p1}, Lz2/o0OOo000$OooO00o;->OooO0Oo()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/oO000OOo;->OoooOoo:Lz2/o0OOo000$OooO00o;

    iget-object v1, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v1, v1, Lz2/oO0o0000$OooO00o;->OooO00o:Lz2/o0O0O0Oo;

    iget-object v2, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v3, v2, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    iget-object v2, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object v2, v2, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v2}, Lz2/o0O0oo00;->OooO0Oo()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    iget-object v5, p0, Lz2/oO000OOo;->OooooOo:Lz2/o0OOOO00;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lz2/o0OOo000$OooO00o;->OooO0o0(Lz2/o0O0O0Oo;Ljava/lang/Object;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;Lz2/o0O0O0Oo;)V

    :goto_0
    return-void
.end method

.method public OooO0o0(Lz2/o0O0O0Oo;Ljava/lang/Object;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;Lz2/o0O0O0Oo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0O0Oo;",
            "Ljava/lang/Object;",
            "Lz2/o0O0oo00<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lz2/o0O0O0Oo;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lz2/oO000OOo;->OoooOoo:Lz2/o0OOo000$OooO00o;

    iget-object p4, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    iget-object p4, p4, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {p4}, Lz2/o0O0oo00;->OooO0Oo()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lz2/o0OOo000$OooO00o;->OooO0o0(Lz2/o0O0O0Oo;Ljava/lang/Object;Lz2/o0O0oo00;Lcom/bumptech/glide/load/DataSource;Lz2/o0O0O0Oo;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lz2/oO000OOo;->OooooOO:Lz2/oO0o0000$OooO00o;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lz2/oO0o0000$OooO00o;->OooO0OO:Lz2/o0O0oo00;

    invoke-interface {v0}, Lz2/o0O0oo00;->cancel()V

    :cond_0
    return-void
.end method
