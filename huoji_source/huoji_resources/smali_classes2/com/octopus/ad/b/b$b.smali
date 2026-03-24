.class public Lcom/octopus/ad/b/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/b/b$b$b;,
        Lcom/octopus/ad/b/b$b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/octopus/ad/b/b$i;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:Lcom/octopus/ad/b/b$j;

.field private n:Lcom/octopus/ad/b/b$b$a;

.field private o:Lcom/octopus/ad/b/b$b$b;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$j;",
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
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/b/b$b;->c:I

    return-void
.end method

.method public a(Lcom/octopus/ad/b/b$b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->n:Lcom/octopus/ad/b/b$b$a;

    return-void
.end method

.method public a(Lcom/octopus/ad/b/b$b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->o:Lcom/octopus/ad/b/b$b$b;

    return-void
.end method

.method public a(Lcom/octopus/ad/b/b$i;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->i:Lcom/octopus/ad/b/b$i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->p:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/b/b$b;->k:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/octopus/ad/b/b$b;->l:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->b:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/octopus/ad/b/b$b;->c:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->f:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->g:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/b$b;->h:Ljava/lang/String;

    return-void
.end method

.method public h()Lcom/octopus/ad/b/b$i;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->i:Lcom/octopus/ad/b/b$i;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/octopus/ad/b/b$j;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->m:Lcom/octopus/ad/b/b$j;

    return-object v0
.end method

.method public k()Lcom/octopus/ad/b/b$b$a;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->n:Lcom/octopus/ad/b/b$b$a;

    return-object v0
.end method

.method public l()Lcom/octopus/ad/b/b$b$b;
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->o:Lcom/octopus/ad/b/b$b$b;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/octopus/ad/b/b$j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/b/b$b;->p:Ljava/util/List;

    return-object v0
.end method
