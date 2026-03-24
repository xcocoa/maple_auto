.class public Lcom/anythink/basead/a/b/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/anythink/core/common/f/l;

.field private g:Lcom/anythink/core/common/f/n;

.field private h:Lcom/anythink/core/common/res/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/anythink/basead/a/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/b/f;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/b/f;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/basead/a/b/f;->f:Lcom/anythink/core/common/f/l;

    iput-object p3, p0, Lcom/anythink/basead/a/b/f;->g:Lcom/anythink/core/common/f/n;

    iput-object p1, p0, Lcom/anythink/basead/a/b/f;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/a/b/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/anythink/core/common/f/l;->d()I

    move-result p1

    iput p1, p0, Lcom/anythink/basead/a/b/f;->e:I

    invoke-static {}, Lcom/anythink/core/common/res/a/c;->a()Lcom/anythink/core/common/res/a/c;

    move-result-object p1

    iget-object p3, p0, Lcom/anythink/basead/a/b/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/res/a/c;->a(Ljava/lang/String;)Lcom/anythink/core/common/res/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/a/b/f;->h:Lcom/anythink/core/common/res/a/a;

    new-instance p3, Lcom/anythink/core/common/res/a/b;

    iget-object v0, p0, Lcom/anythink/basead/a/b/f;->g:Lcom/anythink/core/common/f/n;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->W()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/basead/a/b/f;->g:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->Y()I

    move-result v1

    invoke-direct {p3, v0, v1}, Lcom/anythink/core/common/res/a/b;-><init>(II)V

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/res/a/a;->a(Lcom/anythink/core/common/res/a/b;)V

    iget-object p1, p0, Lcom/anythink/basead/a/b/f;->h:Lcom/anythink/core/common/res/a/a;

    new-instance p3, Lcom/anythink/basead/a/b/f$1;

    invoke-direct {p3, p0}, Lcom/anythink/basead/a/b/f$1;-><init>(Lcom/anythink/basead/a/b/f;)V

    invoke-virtual {p1, p3}, Lcom/anythink/core/common/res/a/a;->a(Lcom/anythink/core/common/res/a/a$a;)V

    iget-object p1, p0, Lcom/anythink/basead/a/b/f;->h:Lcom/anythink/core/common/res/a/a;

    new-instance p3, Lcom/anythink/basead/a/b/f$2;

    invoke-direct {p3, p0, p2}, Lcom/anythink/basead/a/b/f$2;-><init>(Lcom/anythink/basead/a/b/f;Lcom/anythink/core/common/f/l;)V

    iput-object p3, p1, Lcom/anythink/core/common/res/a/a;->k:Lcom/anythink/core/common/res/a/a$b;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/a/b/f;)Lcom/anythink/core/common/f/n;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/a/b/f;->g:Lcom/anythink/core/common/f/n;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/a/b/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/a/b/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/anythink/basead/a/b/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/a/b/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/anythink/basead/a/b/f;)I
    .locals 0

    iget p0, p0, Lcom/anythink/basead/a/b/f;->e:I

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/basead/a/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/basead/a/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " startRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/basead/a/b/f;->h:Lcom/anythink/core/common/res/a/a;

    invoke-virtual {v0}, Lcom/anythink/core/common/res/a/a;->e()V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/a/l;->a()Lcom/anythink/core/common/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/a/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/a/l;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/basead/a/b/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/basead/a/b/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resumeRequest: readyRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",cdRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/basead/a/b/f;->g:Lcom/anythink/core/common/f/n;

    invoke-virtual {v2}, Lcom/anythink/core/common/f/n;->X()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/a/b/f;->h:Lcom/anythink/core/common/res/a/a;

    invoke-virtual {v0}, Lcom/anythink/core/common/res/a/a;->f()V

    return-void
.end method
