.class public Lcom/octopus/ad/b/d$a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/octopus/ad/b/e$e;

.field private f:Lcom/octopus/ad/b/e$b;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/octopus/ad/b/e$b;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->f:Lcom/octopus/ad/b/e$b;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/b/e$e;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->e:Lcom/octopus/ad/b/e$e;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/octopus/ad/b/d$a$a;->x:Z

    return-object p0
.end method

.method public a()Lcom/octopus/ad/b/d$a;
    .locals 2

    new-instance v0, Lcom/octopus/ad/b/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/octopus/ad/b/d$a;-><init>(Lcom/octopus/ad/b/d$1;)V

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->f:Lcom/octopus/ad/b/e$b;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->a(Lcom/octopus/ad/b/d$a;Lcom/octopus/ad/b/e$b;)Lcom/octopus/ad/b/e$b;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->e:Lcom/octopus/ad/b/e$e;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->a(Lcom/octopus/ad/b/d$a;Lcom/octopus/ad/b/e$e;)Lcom/octopus/ad/b/e$e;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->a(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->b(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->c(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->d(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->e(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->f(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->g(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->h(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->i(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->j(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->k(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->l(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->m(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->n(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->o(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->p(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->u:Ljava/util/HashSet;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->a(Lcom/octopus/ad/b/d$a;Ljava/util/HashSet;)Ljava/util/HashSet;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->q(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->r(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->s(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->t(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-boolean v1, p0, Lcom/octopus/ad/b/d$a$a;->x:Z

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->a(Lcom/octopus/ad/b/d$a;Z)Z

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->u(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->v(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/d$a$a;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/d$a;->w(Lcom/octopus/ad/b/d$a;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->n:Ljava/lang/String;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->o:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->p:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->q:Ljava/lang/String;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->r:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->s:Ljava/lang/String;

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->t:Ljava/lang/String;

    return-object p0
.end method

.method public s(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->v:Ljava/lang/String;

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->w:Ljava/lang/String;

    return-object p0
.end method

.method public u(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->y:Ljava/lang/String;

    return-object p0
.end method

.method public v(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->z:Ljava/lang/String;

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/octopus/ad/b/d$a$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/d$a$a;->A:Ljava/lang/String;

    return-object p0
.end method
