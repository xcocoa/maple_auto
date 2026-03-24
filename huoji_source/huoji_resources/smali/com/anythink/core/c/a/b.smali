.class public final Lcom/anythink/core/c/a/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:[[D

.field private d:D

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/anythink/core/c/a/b;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/core/c/a/b;->b:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/anythink/core/c/a/b;->d:D

    return-void
.end method

.method private i()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/c/a/b;->e:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/c/a/b;->a:I

    return v0
.end method

.method public final a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/core/c/a/b;->d:D

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/c/a/b;->a:I

    return-void
.end method

.method public final a([[D)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/c/a/b;->c:[[D

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/c/a/b;->b:I

    return-void
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/anythink/core/c/a/b;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/c/a/b;->e:I

    return-void
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/c/a/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/c/a/b;->b:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/c/a/b;->f:I

    return-void
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/c/a/b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()[[D
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/c/a/b;->c:[[D

    return-object v0
.end method

.method public final g()D
    .locals 2

    iget-wide v0, p0, Lcom/anythink/core/c/a/b;->d:D

    return-wide v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/c/a/b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
