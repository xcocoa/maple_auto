.class public final Lcom/octopus/ad/b/a$b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/b/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/octopus/ad/b/e$i;

.field private c:Lcom/octopus/ad/b/e$g;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Lcom/octopus/ad/b/d$a;

.field private m:Lcom/octopus/ad/b/d$c;

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/octopus/ad/b/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/b/a$b$a;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/b/a$b$a;->d:J

    return-object p0
.end method

.method public a(Lcom/octopus/ad/b/d$a;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->l:Lcom/octopus/ad/b/d$a;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/b/d$c;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->m:Lcom/octopus/ad/b/d$c;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/b/e$g;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->c:Lcom/octopus/ad/b/e$g;

    return-object p0
.end method

.method public a(Lcom/octopus/ad/b/e$i;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->b:Lcom/octopus/ad/b/e$i;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/octopus/ad/b/a$b;
    .locals 3

    new-instance v0, Lcom/octopus/ad/b/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/octopus/ad/b/a$b;-><init>(Lcom/octopus/ad/b/a$1;)V

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->a(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->b(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->l:Lcom/octopus/ad/b/d$a;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->a(Lcom/octopus/ad/b/a$b;Lcom/octopus/ad/b/d$a;)Lcom/octopus/ad/b/d$a;

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->c:Lcom/octopus/ad/b/e$g;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->a(Lcom/octopus/ad/b/a$b;Lcom/octopus/ad/b/e$g;)Lcom/octopus/ad/b/e$g;

    iget-wide v1, p0, Lcom/octopus/ad/b/a$b$a;->j:J

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/b/a$b;->a(Lcom/octopus/ad/b/a$b;J)J

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->b:Lcom/octopus/ad/b/e$i;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->a(Lcom/octopus/ad/b/a$b;Lcom/octopus/ad/b/e$i;)Lcom/octopus/ad/b/e$i;

    iget-wide v1, p0, Lcom/octopus/ad/b/a$b$a;->d:J

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/b/a$b;->b(Lcom/octopus/ad/b/a$b;J)J

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->c(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->d(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;

    iget-wide v1, p0, Lcom/octopus/ad/b/a$b$a;->k:J

    invoke-static {v0, v1, v2}, Lcom/octopus/ad/b/a$b;->c(Lcom/octopus/ad/b/a$b;J)J

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->m:Lcom/octopus/ad/b/d$c;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->a(Lcom/octopus/ad/b/a$b;Lcom/octopus/ad/b/d$c;)Lcom/octopus/ad/b/d$c;

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->n:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->a(Lcom/octopus/ad/b/a$b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->e(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/octopus/ad/b/a$b$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/octopus/ad/b/a$b;->f(Lcom/octopus/ad/b/a$b;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/octopus/ad/b/a$a;)V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/b/a$b$a;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(J)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/b/a$b$a;->j:J

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(J)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/b/a$b$a;->k:J

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/octopus/ad/b/a$b$a;
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/b/a$b$a;->i:Ljava/lang/String;

    return-object p0
.end method
