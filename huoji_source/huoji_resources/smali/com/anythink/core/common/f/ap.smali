.class public final Lcom/anythink/core/common/f/ap;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/anythink/core/d/f;

.field public b:Lcom/anythink/core/common/f/h;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation
.end field

.field public g:I


# direct methods
.method public constructor <init>(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/h;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/core/common/f/ap;->g:I

    iput-object p1, p0, Lcom/anythink/core/common/f/ap;->a:Lcom/anythink/core/d/f;

    iput-object p2, p0, Lcom/anythink/core/common/f/ap;->b:Lcom/anythink/core/common/f/h;

    iput p3, p0, Lcom/anythink/core/common/f/ap;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/core/d/f;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->a:Lcom/anythink/core/d/f;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/core/common/f/ap;->c:Ljava/util/List;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/ap;->g:I

    return v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/core/common/f/ap;->d:Ljava/util/List;

    return-void
.end method

.method public final c()Lcom/anythink/core/common/f/h;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->b:Lcom/anythink/core/common/f/h;

    return-object v0
.end method

.method public final c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/core/common/f/ap;->e:Ljava/util/List;

    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/anythink/core/common/f/ap;->f:Ljava/util/List;

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->d:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->e:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->f:Ljava/util/List;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/f/ap;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method
