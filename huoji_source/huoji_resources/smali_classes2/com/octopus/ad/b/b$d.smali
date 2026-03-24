.class public Lcom/octopus/ad/b/b$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/octopus/ad/b/b$b;

.field private c:Lcom/octopus/ad/b/b$c;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/b/b$d;->f:I

    return-void
.end method

.method public a(Lcom/octopus/ad/b/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$d;->b:Lcom/octopus/ad/b/b$b;

    return-void
.end method

.method public a(Lcom/octopus/ad/b/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$d;->c:Lcom/octopus/ad/b/b$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$d;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/octopus/ad/b/b$d;->d:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$d;->h:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/octopus/ad/b/b$b;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$d;->b:Lcom/octopus/ad/b/b$b;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$d;->g:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$d;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public e()Lcom/octopus/ad/b/b$c;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$d;->c:Lcom/octopus/ad/b/b$c;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/b/b$d;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/b/b$d;->e:Ljava/util/List;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$d;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/b/b$d;->f:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$d;->g:Ljava/lang/String;

    return-object v0
.end method
