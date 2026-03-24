.class public final Lcom/anythink/expressad/foundation/g/f/d/b$a$1;
.super Lcom/anythink/expressad/foundation/g/f/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/f/d/b$a;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/expressad/foundation/g/f/f<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic e:Lcom/anythink/expressad/foundation/g/f/d/b$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/f/d/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->e:Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/f/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->e:Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->c(Lcom/anythink/expressad/foundation/g/f/d/b$a;)I

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->e:Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->b(Lcom/anythink/expressad/foundation/g/f/d/b$a;)Lcom/anythink/expressad/foundation/g/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/foundation/g/f/e;->a()V

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->e:Lcom/anythink/expressad/foundation/g/f/d/b$a;

    iget-object v1, v0, Lcom/anythink/expressad/foundation/g/f/d/b$a;->f:Lcom/anythink/expressad/foundation/g/f/d/b;

    invoke-static {v1, v0}, Lcom/anythink/expressad/foundation/g/f/d/b;->a(Lcom/anythink/expressad/foundation/g/f/d/b;Lcom/anythink/expressad/foundation/g/f/d/b$a;)V

    :cond_0
    return-void
.end method

.method public final a(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->e:Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->b(Lcom/anythink/expressad/foundation/g/f/d/b$a;)Lcom/anythink/expressad/foundation/g/f/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/anythink/expressad/foundation/g/f/e;->a(JJ)V

    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/f/a/a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->e:Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->b(Lcom/anythink/expressad/foundation/g/f/d/b$a;)Lcom/anythink/expressad/foundation/g/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/e;->a(Lcom/anythink/expressad/foundation/g/f/a/a;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/g/f/k;)V
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->e:Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->b(Lcom/anythink/expressad/foundation/g/f/d/b$a;)Lcom/anythink/expressad/foundation/g/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/foundation/g/f/e;->a(Lcom/anythink/expressad/foundation/g/f/k;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->e:Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->b(Lcom/anythink/expressad/foundation/g/f/d/b$a;)Lcom/anythink/expressad/foundation/g/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/foundation/g/f/e;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->e:Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->b(Lcom/anythink/expressad/foundation/g/f/d/b$a;)Lcom/anythink/expressad/foundation/g/f/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/foundation/g/f/e;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b$a$1;->a:Z

    return-void
.end method
