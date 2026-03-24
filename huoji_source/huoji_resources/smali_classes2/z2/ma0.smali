.class public Lz2/ma0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:I

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:Ljava/lang/String;

.field private OooO0Oo:Z

.field private OooO0o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz2/ma0;->OooO0Oo:Z

    iput-object p1, p0, Lz2/ma0;->OooO0O0:Ljava/lang/String;

    iput p2, p0, Lz2/ma0;->OooO00o:I

    return-void
.end method

.method public static OooO0O0(Ljava/lang/String;)Lz2/ma0;
    .locals 3

    invoke-static {}, Lz2/ub0;->OooO0O0()Lz2/sb0;

    move-result-object v0

    new-instance v1, Lz2/ma0;

    invoke-virtual {v0}, Lz2/sb0;->OooO0o()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lz2/ma0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lz2/sb0;->OooO0o0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lz2/ma0;->OooOO0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lz2/sb0;->OooO0OO()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lz2/ma0;->OooO0oo(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public OooO(Z)V
    .locals 0

    iput-boolean p1, p0, Lz2/ma0;->OooO0Oo:Z

    return-void
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lz2/ma0;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0OO()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lz2/ma0;->OooO0o0:Ljava/util/List;

    const-string v1, "org.litepal.model.Table_Schema"

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/ma0;->OooO0o0:Ljava/util/List;

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/ma0;->OooO0o0:Ljava/util/List;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lz2/ma0;->OooO0o0:Ljava/util/List;

    return-object v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/ma0;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o()I
    .locals 1

    iget v0, p0, Lz2/ma0;->OooO00o:I

    return v0
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/ma0;->OooO0OO:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0oO()Z
    .locals 1

    iget-boolean v0, p0, Lz2/ma0;->OooO0Oo:Z

    return v0
.end method

.method public OooO0oo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz2/ma0;->OooO0o0:Ljava/util/List;

    return-void
.end method

.method public OooOO0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/ma0;->OooO0OO:Ljava/lang/String;

    return-void
.end method
