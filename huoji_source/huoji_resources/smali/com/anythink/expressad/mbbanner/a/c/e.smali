.class public Lcom/anythink/expressad/mbbanner/a/c/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/mbbanner/a/c/c;


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private b:Lcom/anythink/expressad/mbbanner/a/c/c;

.field private c:Lcom/anythink/expressad/d/c;

.field private d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/c/c;Lcom/anythink/expressad/d/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->d:Z

    iput-object p2, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->c:Lcom/anythink/expressad/d/c;

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    return-void
.end method

.method private static a(Lcom/anythink/expressad/d/c;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/anythink/expressad/d/c;->a()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/anythink/expressad/d/c;->a()D

    move-result-wide p0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    cmpl-double v3, v1, p0

    if-lez v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/mbbanner/a/c/c;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->d:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/mbbanner/a/c/c;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;Z)V
    .locals 1

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->d:Z

    invoke-interface {p2, p1, v0}, Lcom/anythink/expressad/mbbanner/a/c/c;->a(Lcom/anythink/expressad/foundation/d/c;Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/mbbanner/a/c/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->c:Lcom/anythink/expressad/d/c;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->a()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->a()D

    move-result-wide v2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    cmpl-double v0, v4, v2

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/anythink/expressad/mbbanner/a/c/c;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/mbbanner/a/c/c;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/mbbanner/a/c/c;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/mbbanner/a/c/c;->c()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/c/e;->b:Lcom/anythink/expressad/mbbanner/a/c/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/mbbanner/a/c/c;->d()V

    :cond_0
    return-void
.end method
