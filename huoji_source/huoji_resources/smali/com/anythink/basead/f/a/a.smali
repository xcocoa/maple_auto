.class public final Lcom/anythink/basead/f/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/anythink/basead/f/a/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/basead/f/a/a;
    .locals 1

    sget-object v0, Lcom/anythink/basead/f/a/a;->a:Lcom/anythink/basead/f/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/basead/f/a/a;

    invoke-direct {v0, p0}, Lcom/anythink/basead/f/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/basead/f/a/a;->a:Lcom/anythink/basead/f/a/a;

    :cond_0
    sget-object p0, Lcom/anythink/basead/f/a/a;->a:Lcom/anythink/basead/f/a/a;

    return-object p0
.end method

.method private static a(Lcom/anythink/core/common/f/z;)Z
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->F()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/f/z;
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/anythink/core/d/f;->b(Ljava/lang/String;)Lcom/anythink/core/common/f/z;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/d/f;->R()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/anythink/core/d/f;->Q()Lcom/anythink/core/common/f/ab;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    new-instance v4, Lcom/anythink/core/common/f/m;

    invoke-direct {v4}, Lcom/anythink/core/common/f/m;-><init>()V

    iput-object v0, v4, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/core/common/f/l;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {p1, v7, v5, v4, v6}, Lcom/anythink/basead/a/e;->a(Ljava/lang/String;ZLcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/a/b/b$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/f/z;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/a/b/b$b;)V
    .locals 1

    invoke-static {p2}, Lcom/anythink/basead/f/a/a;->a(Lcom/anythink/core/common/f/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "20006"

    const-string p2, "The cross-promotion offer was filtered for exclude offers."

    invoke-static {p1, p2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/anythink/basead/a/b/b$b;->a(Lcom/anythink/basead/c/e;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/basead/f/a/b;->b(Lcom/anythink/core/common/f/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "20003"

    const-string p2, "Ad is out of cap!"

    invoke-static {p1, p2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/anythink/basead/a/b/b$b;->a(Lcom/anythink/basead/c/e;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/basead/f/a/b;->c(Lcom/anythink/core/common/f/z;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "20004"

    const-string p2, "Ad is in pacing!"

    invoke-static {p1, p2}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/anythink/basead/a/b/b$b;->a(Lcom/anythink/basead/c/e;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    invoke-static {p1, p2, p3, p4}, Lcom/anythink/basead/a/e;->a(Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/a/b/b$b;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/z;Lcom/anythink/core/common/f/m;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/anythink/basead/f/a/a;->a(Lcom/anythink/core/common/f/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    invoke-static {p1, p2}, Lcom/anythink/basead/a/e;->a(Lcom/anythink/core/common/f/z;Lcom/anythink/core/common/f/m;)Z

    move-result p1

    return p1

    :cond_2
    iget-object p3, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    invoke-static {p3}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/anythink/basead/f/a/b;->b(Lcom/anythink/core/common/f/z;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    invoke-static {p3}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/anythink/basead/f/a/b;->c(Lcom/anythink/core/common/f/z;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    invoke-static {p1, p2}, Lcom/anythink/basead/a/e;->a(Lcom/anythink/core/common/f/z;Lcom/anythink/core/common/f/m;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/d/f;->R()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/f/z;

    invoke-static {}, Lcom/anythink/basead/a/e;->a()Lcom/anythink/basead/a/e;

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->ah()I

    move-result v5

    invoke-virtual {p1}, Lcom/anythink/core/d/f;->Q()Lcom/anythink/core/common/f/ab;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/anythink/basead/a/e;->a(Lcom/anythink/core/common/f/z;ILcom/anythink/core/common/f/n;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/anythink/basead/f/a/a;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/anythink/basead/f/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/anythink/basead/f/a/b;->d(Lcom/anythink/core/common/f/z;)Lcom/anythink/basead/c/c;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    new-instance p1, Lcom/anythink/basead/f/a/a$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/f/a/a$1;-><init>(Lcom/anythink/basead/f/a/a;)V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/basead/c/c;

    iget-object p1, p1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method
