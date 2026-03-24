.class public Lz2/sb0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OooO00o:I

.field private OooO0O0:Ljava/lang/String;

.field private OooO0OO:Ljava/lang/String;

.field private OooO0Oo:Ljava/lang/String;

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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/sb0;->OooO0O0:Ljava/lang/String;

    return-void
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lz2/sb0;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/sb0;->OooO0OO:Ljava/lang/String;

    return-object v0
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

    iget-object v0, p0, Lz2/sb0;->OooO0o0:Ljava/util/List;

    const-string v1, "org.litepal.model.Table_Schema"

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/sb0;->OooO0o0:Ljava/util/List;

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/sb0;->OooO0o0:Ljava/util/List;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lz2/sb0;->OooO0o0:Ljava/util/List;

    return-object v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/sb0;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0o()I
    .locals 1

    iget v0, p0, Lz2/sb0;->OooO00o:I

    return v0
.end method

.method public OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/sb0;->OooO0Oo:Ljava/lang/String;

    return-object v0
.end method

.method public OooO0oO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/sb0;->OooO0OO:Ljava/lang/String;

    return-void
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

    iput-object p1, p0, Lz2/sb0;->OooO0o0:Ljava/util/List;

    return-void
.end method

.method public OooOO0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lz2/sb0;->OooO0Oo:Ljava/lang/String;

    return-void
.end method

.method public OooOO0O(I)V
    .locals 0

    iput p1, p0, Lz2/sb0;->OooO00o:I

    return-void
.end method
