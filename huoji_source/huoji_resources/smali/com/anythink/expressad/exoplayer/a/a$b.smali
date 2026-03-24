.class public final Lcom/anythink/expressad/exoplayer/a/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/anythink/expressad/exoplayer/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/anythink/expressad/exoplayer/ae$a;

.field private c:Lcom/anythink/expressad/exoplayer/a/a$c;

.field private d:Lcom/anythink/expressad/exoplayer/a/a$c;

.field private e:Lcom/anythink/expressad/exoplayer/ae;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-direct {v0}, Lcom/anythink/expressad/exoplayer/ae$a;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    sget-object v0, Lcom/anythink/expressad/exoplayer/ae;->a:Lcom/anythink/expressad/exoplayer/ae;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->e:Lcom/anythink/expressad/exoplayer/ae;

    return-void
.end method

.method private a(Lcom/anythink/expressad/exoplayer/a/a$c;Lcom/anythink/expressad/exoplayer/ae;)Lcom/anythink/expressad/exoplayer/a/a$c;
    .locals 4

    invoke-virtual {p2}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->e:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v1, p1, Lcom/anythink/expressad/exoplayer/a/a$c;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v1, v1, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v0

    iget-object v0, v0, Lcom/anythink/expressad/exoplayer/ae$a;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/exoplayer/ae;->a(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object p2

    iget p2, p2, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    new-instance v1, Lcom/anythink/expressad/exoplayer/a/a$c;

    iget-object p1, p1, Lcom/anythink/expressad/exoplayer/a/a$c;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/exoplayer/h/s$a;->a(I)Lcom/anythink/expressad/exoplayer/h/s$a;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/anythink/expressad/exoplayer/a/a$c;-><init>(ILcom/anythink/expressad/exoplayer/h/s$a;)V

    return-object v1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/a/a$b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/a/a$c;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->c:Lcom/anythink/expressad/exoplayer/a/a$c;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/expressad/exoplayer/a/a$c;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->e:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/a/a$c;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)Lcom/anythink/expressad/exoplayer/h/s$a;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->e:Lcom/anythink/expressad/exoplayer/ae;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/ae;->c()I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/expressad/exoplayer/a/a$c;

    iget-object v6, v5, Lcom/anythink/expressad/exoplayer/a/a$c;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    iget v6, v6, Lcom/anythink/expressad/exoplayer/h/s$a;->a:I

    if-ge v6, v0, :cond_1

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->e:Lcom/anythink/expressad/exoplayer/ae;

    iget-object v8, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->b:Lcom/anythink/expressad/exoplayer/ae$a;

    invoke-virtual {v7, v6, v8, v2}, Lcom/anythink/expressad/exoplayer/ae;->a(ILcom/anythink/expressad/exoplayer/ae$a;Z)Lcom/anythink/expressad/exoplayer/ae$a;

    move-result-object v6

    iget v6, v6, Lcom/anythink/expressad/exoplayer/ae$a;->c:I

    if-ne v6, p1, :cond_1

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    iget-object v4, v5, Lcom/anythink/expressad/exoplayer/a/a$c;->b:Lcom/anythink/expressad/exoplayer/h/s$a;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v4

    :cond_3
    return-object v1
.end method

.method public final a(ILcom/anythink/expressad/exoplayer/h/s$a;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/anythink/expressad/exoplayer/a/a$c;

    invoke-direct {v1, p1, p2}, Lcom/anythink/expressad/exoplayer/a/a$c;-><init>(ILcom/anythink/expressad/exoplayer/h/s$a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->e:Lcom/anythink/expressad/exoplayer/ae;

    invoke-virtual {p1}, Lcom/anythink/expressad/exoplayer/ae;->a()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/a/a$b;->i()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/ae;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/exoplayer/a/a$c;

    invoke-direct {p0, v2, p1}, Lcom/anythink/expressad/exoplayer/a/a$b;->a(Lcom/anythink/expressad/exoplayer/a/a$c;Lcom/anythink/expressad/exoplayer/ae;)Lcom/anythink/expressad/exoplayer/a/a$c;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->d:Lcom/anythink/expressad/exoplayer/a/a$c;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/anythink/expressad/exoplayer/a/a$b;->a(Lcom/anythink/expressad/exoplayer/a/a$c;Lcom/anythink/expressad/exoplayer/ae;)Lcom/anythink/expressad/exoplayer/a/a$c;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->d:Lcom/anythink/expressad/exoplayer/a/a$c;

    :cond_1
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->e:Lcom/anythink/expressad/exoplayer/ae;

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/a/a$b;->i()V

    return-void
.end method

.method public final b()Lcom/anythink/expressad/exoplayer/a/a$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->c:Lcom/anythink/expressad/exoplayer/a/a$c;

    return-object v0
.end method

.method public final b(ILcom/anythink/expressad/exoplayer/h/s$a;)V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/a/a$c;

    invoke-direct {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/a/a$c;-><init>(ILcom/anythink/expressad/exoplayer/h/s$a;)V

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->d:Lcom/anythink/expressad/exoplayer/a/a$c;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/exoplayer/a/a$c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/a/a$c;

    :goto_0
    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->d:Lcom/anythink/expressad/exoplayer/a/a$c;

    :cond_1
    return-void
.end method

.method public final c()Lcom/anythink/expressad/exoplayer/a/a$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->d:Lcom/anythink/expressad/exoplayer/a/a$c;

    return-object v0
.end method

.method public final c(ILcom/anythink/expressad/exoplayer/h/s$a;)V
    .locals 1

    new-instance v0, Lcom/anythink/expressad/exoplayer/a/a$c;

    invoke-direct {v0, p1, p2}, Lcom/anythink/expressad/exoplayer/a/a$c;-><init>(ILcom/anythink/expressad/exoplayer/h/s$a;)V

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->d:Lcom/anythink/expressad/exoplayer/a/a$c;

    return-void
.end method

.method public final d()Lcom/anythink/expressad/exoplayer/a/a$c;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/exoplayer/a/a$c;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->f:Z

    return v0
.end method

.method public final f()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/a/a$b;->i()V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->f:Z

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/a/a$b;->f:Z

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/a/a$b;->i()V

    return-void
.end method
