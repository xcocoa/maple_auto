.class public final Lcom/anythink/core/c/a/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lcom/anythink/core/d/d;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/a/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/c/a/c;->c:Ljava/util/Map;

    return-void
.end method

.method private a()Lcom/anythink/core/d/d;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/anythink/core/c/a/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/a/a;",
            ">;",
            "Lcom/anythink/core/c/a/a;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/a/a;

    invoke-virtual {v3}, Lcom/anythink/core/c/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/anythink/core/c/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    invoke-virtual {v0}, Lcom/anythink/core/d/d;->c()I

    move-result v0

    if-le p2, v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/a/a;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/anythink/core/c/a/c;->b:Ljava/util/List;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/c/a/c;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/anythink/core/c/a/c;->b:Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/c/a/c;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/anythink/core/c/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/c/a/c;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/anythink/core/c/a/c;->a(Ljava/util/List;Lcom/anythink/core/c/a/a;)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/c/a/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/anythink/core/c/a/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/anythink/core/c/a/c;->a(Ljava/util/List;Lcom/anythink/core/c/a/a;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/anythink/core/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    return-void
.end method

.method public final b(I)Lcom/anythink/core/c/a/d;
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/anythink/core/c/a/c;->b:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/c/a/c;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    invoke-virtual {v1}, Lcom/anythink/core/d/d;->d()I

    move-result v1

    if-lt v0, v1, :cond_3

    const-wide/16 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, ""

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/a/a;

    invoke-virtual {v3}, Lcom/anythink/core/c/a/a;->f()D

    move-result-wide v4

    cmpl-double v6, v4, v0

    if-lez v6, :cond_1

    invoke-virtual {v3}, Lcom/anythink/core/c/a/a;->d()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-wide v0, v4

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/anythink/core/c/a/d;

    invoke-direct {p1, v0, v1, v2}, Lcom/anythink/core/c/a/d;-><init>(DLjava/lang/String;)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/anythink/core/d/d;)Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/d/d;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/anythink/core/d/d;->b()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    invoke-virtual {v0}, Lcom/anythink/core/d/d;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/anythink/core/d/d;->a()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    invoke-virtual {v0}, Lcom/anythink/core/d/d;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/anythink/core/d/d;->c()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    invoke-virtual {v0}, Lcom/anythink/core/d/d;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/anythink/core/d/d;->d()I

    move-result p1

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final c(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/anythink/core/c/a/c;->a(I)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/core/c/a/c;->a:Lcom/anythink/core/d/d;

    invoke-virtual {v2}, Lcom/anythink/core/d/d;->b()I

    move-result v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/core/c/a/a;

    invoke-virtual {v2}, Lcom/anythink/core/c/a/a;->g()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
