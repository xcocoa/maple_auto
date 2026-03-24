.class public final Lcom/anythink/expressad/mbbanner/b/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/mbbanner/a/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/mbbanner/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/mbbanner/b/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/h;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;Z)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/out/h;->b()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0, p1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/expressad/out/h;->a()V

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/mbbanner/b/a;->e()Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 5

    if-nez p1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object p1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/mbbanner/b/a;->b(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/mbbanner/b/a;->c(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/anythink/expressad/mbbanner/a/b/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v4}, Lcom/anythink/expressad/mbbanner/b/a;->d(Lcom/anythink/expressad/mbbanner/b/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v4}, Lcom/anythink/expressad/mbbanner/b/a;->e(Lcom/anythink/expressad/mbbanner/b/a;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v4}, Lcom/anythink/expressad/mbbanner/b/a;->f(Lcom/anythink/expressad/mbbanner/b/a;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-direct {v2, v3, v4}, Lcom/anythink/expressad/mbbanner/a/b/d;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v2}, Lcom/anythink/expressad/mbbanner/b/a;->g(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/mbbanner/a/c/b;

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/mbbanner/b/a;->b(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/mbbanner/b/a;->c(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;Z)Z

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v2}, Lcom/anythink/expressad/mbbanner/b/a;->b(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v2}, Lcom/anythink/expressad/mbbanner/b/a;->c(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;Z)Z

    invoke-static {}, Lcom/anythink/expressad/mbbanner/a/d/a;->a()Lcom/anythink/expressad/mbbanner/a/d/a;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v2}, Lcom/anythink/expressad/mbbanner/b/a;->b(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v2}, Lcom/anythink/expressad/mbbanner/b/a;->c(Lcom/anythink/expressad/mbbanner/b/a;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/anythink/expressad/mbbanner/a/b/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v5}, Lcom/anythink/expressad/mbbanner/b/a;->d(Lcom/anythink/expressad/mbbanner/b/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v5}, Lcom/anythink/expressad/mbbanner/b/a;->e(Lcom/anythink/expressad/mbbanner/b/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v5}, Lcom/anythink/expressad/mbbanner/b/a;->f(Lcom/anythink/expressad/mbbanner/b/a;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-direct {v3, v4, v5}, Lcom/anythink/expressad/mbbanner/a/b/d;-><init>(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v3}, Lcom/anythink/expressad/mbbanner/b/a;->g(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/mbbanner/a/c/b;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/mbbanner/a/d/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/b/a$1;->a:Lcom/anythink/expressad/mbbanner/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/mbbanner/b/a;->a(Lcom/anythink/expressad/mbbanner/b/a;)Lcom/anythink/expressad/out/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/out/h;->f()V

    :cond_0
    return-void
.end method
