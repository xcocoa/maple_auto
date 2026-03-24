.class public Lcom/anythink/basead/d/a/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/d/a/b$a;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/anythink/basead/d/a/b;


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/d/a/b;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/basead/d/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Lcom/anythink/basead/a/b;Lcom/anythink/expressad/foundation/d/c;)Lcom/anythink/basead/a/b;
    .locals 6

    invoke-virtual {p0}, Lcom/anythink/basead/a/b;->b()Lcom/anythink/core/common/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->o()Lcom/anythink/core/common/f/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/basead/a/b;->b()Lcom/anythink/core/common/f/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/basead/a/b;->b()Lcom/anythink/core/common/f/l;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/expressad/foundation/d/c;)V

    return-object p0

    :cond_0
    new-instance v1, Lcom/anythink/core/common/f/j;

    invoke-direct {v1}, Lcom/anythink/core/common/f/j;-><init>()V

    invoke-static {v1, p1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/j;Lcom/anythink/expressad/foundation/d/c;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/l;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_4

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/l;->h(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v5}, Lcom/anythink/core/common/f/l;->h(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Lcom/anythink/core/common/f/l;->h(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v3}, Lcom/anythink/core/common/f/l;->h(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/h;->aG()Lcom/anythink/expressad/foundation/d/a;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/aj;->O(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/l;->z(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/l;->A(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/l;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/f/l;->C(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/anythink/basead/a/b;->c()Lcom/anythink/core/common/f/m;

    move-result-object p0

    new-instance p1, Lcom/anythink/basead/a/b;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, p0, v1}, Lcom/anythink/basead/a/b;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;)V

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/l;->a(Lcom/anythink/core/common/f/n;)V

    return-object p1
.end method

.method public static a()Lcom/anythink/basead/d/a/b;
    .locals 2

    sget-object v0, Lcom/anythink/basead/d/a/b;->c:Lcom/anythink/basead/d/a/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/basead/d/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/basead/d/a/b;->c:Lcom/anythink/basead/d/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/basead/d/a/b;

    invoke-direct {v1}, Lcom/anythink/basead/d/a/b;-><init>()V

    sput-object v1, Lcom/anythink/basead/d/a/b;->c:Lcom/anythink/basead/d/a/b;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/basead/d/a/b;->c:Lcom/anythink/basead/d/a/b;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/anythink/basead/d/a/b;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;ZIJ)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/anythink/basead/d/a/b;->b(Ljava/lang/String;ZIJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/basead/d/a/b;Ljava/lang/String;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;)V
    .locals 2

    iget-object p0, p0, Lcom/anythink/basead/d/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p0, "30003"

    invoke-static {p0, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/anythink/basead/d/a/b$a;->a(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/j;)V
    .locals 4

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->p()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/expressad/out/b;->a:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->e()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/b/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/b/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/out/g;->a()Lcom/anythink/expressad/e/a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lcom/anythink/core/common/f/aj;->aa()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dsp_anythink_appid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/aj;->ab()Ljava/lang/String;

    move-result-object p0

    const-string v2, "dsp_anythink_appkey"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/anythink/expressad/b;->a(Ljava/util/Map;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/j;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/l;->x(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/l;->o(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->bb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/l;->m(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->bc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/l;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/l;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->af()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/l;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/core/common/f/aj;->ah()Lcom/anythink/core/common/f/al;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/core/common/f/al;

    invoke-direct {v0}, Lcom/anythink/core/common/f/al;-><init>()V

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f/aj;->a(Lcom/anythink/core/common/f/al;)V

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->L()Lcom/anythink/expressad/foundation/d/n;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/n;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/f/al;->b([Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/n;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anythink/core/common/f/al;->c([Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/n;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/f/al;->d([Ljava/lang/String;)V

    :cond_1
    invoke-static {p0, p1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/expressad/foundation/d/c;)V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/j;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/j;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/l;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/foundation/d/c;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/l;Lcom/anythink/expressad/foundation/d/c;)V
    .locals 4

    instance-of v0, p0, Lcom/anythink/core/common/f/j;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/anythink/core/common/f/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->w(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/h;->aO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/h;->aN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/anythink/core/common/f/l;->d(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&opdptype={opdptype}&apk_ptype={apk_ptype}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->L()Lcom/anythink/expressad/foundation/d/n;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/n;->l()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/anythink/core/common/f/aj;->ah()Lcom/anythink/core/common/f/al;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/anythink/core/common/f/al;

    invoke-direct {p1}, Lcom/anythink/core/common/f/al;-><init>()V

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/f/aj;->a(Lcom/anythink/core/common/f/al;)V

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/anythink/core/common/f/al;->a([Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/m;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/common/f/m;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/anythink/core/common/f/m;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/foundation/d/c;

    iget-object p0, p0, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {p0}, Lcom/anythink/core/common/f/n;->F()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/anythink/expressad/foundation/d/c;->a(I)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;)V
    .locals 3

    iget-object v0, p0, Lcom/anythink/basead/d/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p2, "30003"

    invoke-static {p2, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/anythink/basead/d/a/b$a;->a(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "hdbtn=1"

    const-string v1, "hdbtn=0"

    const-string v2, "hdbtn"

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&hdbtn=0"

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&hdbtn=1"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static b(Ljava/lang/String;ZIJ)Ljava/lang/String;
    .locals 3

    const-string v0, "shake_show=0"

    const-string v1, "shake_show=1"

    const-string v2, "shake_show"

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&shake_show=1"

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&shake_show=0"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "shake_time"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "shake_time="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long/2addr p3, v0

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "(shake_time=[^&]*)"

    invoke-virtual {p0, p3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&shake_time="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p3, v0

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string p1, "shake_strength"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "shake_strength="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(shake_strength=[^&]*)"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&shake_strength="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method private b(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V
    .locals 8

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v7, Lcom/anythink/basead/d/a/b$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/basead/d/a/b$1;-><init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "alecfc=0"

    const-string v1, "alecfc=1"

    const-string v2, "alecfc"

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&alecfc=1"

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&alecfc=0"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private c(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V
    .locals 9

    iget-object v0, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->h()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-lez v2, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->h()I

    move-result v1

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v7, "728x90"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v7, "320x90"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v7, "300x250"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, 0x1

    goto :goto_3

    :pswitch_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x4

    :goto_3
    new-instance v2, Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/anythink/expressad/out/TemplateBannerView;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/anythink/expressad/out/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->h()I

    move-result v8

    invoke-direct {v7, v3, v8}, Lcom/anythink/expressad/out/i;-><init>(II)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object p1, p2, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ac()Ljava/lang/String;

    move-result-object p1

    :goto_4
    const-string v3, ""

    invoke-virtual {v2, v7, v3, p1}, Lcom/anythink/expressad/out/TemplateBannerView;->init(Lcom/anythink/expressad/out/i;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->y()I

    move-result p1

    if-nez p1, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-virtual {v2, v4}, Lcom/anythink/expressad/out/TemplateBannerView;->setAllowShowCloseBtn(Z)V

    if-lez v1, :cond_7

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v5, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    new-instance p1, Lcom/anythink/basead/d/a/b$2;

    invoke-direct {p1, p0, p2, p4}, Lcom/anythink/basead/d/a/b$2;-><init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;)V

    invoke-virtual {v2, p1}, Lcom/anythink/expressad/out/TemplateBannerView;->setBannerAdListener(Lcom/anythink/expressad/out/h;)V

    if-eqz p4, :cond_8

    invoke-interface {p4, v2}, Lcom/anythink/basead/d/a/b$a;->a(Lcom/anythink/core/common/a/i;)V

    :cond_8
    iget-object p1, p0, Lcom/anythink/basead/d/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p3}, Lcom/anythink/expressad/out/TemplateBannerView;->load(Lcom/anythink/expressad/foundation/d/d;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x215ddd38 -> :sswitch_2
        0x59df5a3e -> :sswitch_1
        0x60b65fb2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "hdbtn=1"

    const-string v1, "hdbtn=0"

    const-string v2, "hdbtn"

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&hdbtn=0"

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&hdbtn=1"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private d(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V
    .locals 10

    new-instance v0, Lcom/anythink/expressad/reward/b/a;

    invoke-direct {v0}, Lcom/anythink/expressad/reward/b/a;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p2, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ac()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget v1, p2, Lcom/anythink/core/common/f/m;->j:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v1

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1, v2}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/reward/b/a;->a(Z)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v1

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1, v3}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    invoke-virtual {v0, v3}, Lcom/anythink/expressad/reward/b/a;->a(Z)V

    :cond_2
    :goto_1
    iget-object v1, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->E()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/anythink/expressad/reward/b/a;->a(I)V

    const-string v1, ""

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/reward/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/e/c;->a()Lcom/anythink/expressad/videocommon/e/c;

    move-result-object v1

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p1, v2}, Lcom/anythink/expressad/videocommon/e/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/anythink/expressad/videocommon/e/d;

    move-result-object p1

    iget-object v1, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->F()I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/n;->F()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/anythink/expressad/videocommon/e/d;->a(I)V

    :cond_4
    iget v1, p2, Lcom/anythink/core/common/f/m;->j:I

    if-ne v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/anythink/expressad/videocommon/e/d;->l()V

    :cond_5
    iget-object p1, p3, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/anythink/expressad/shake/a;->a()Lcom/anythink/expressad/shake/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/expressad/shake/a;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/n;->Q()I

    move-result v4

    if-ne v4, v3, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    iget-object v5, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v5}, Lcom/anythink/core/common/f/n;->D()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->I()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v6, v5}, Lcom/anythink/basead/d/a/b;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/n;->R()I

    move-result v7

    iget-object v8, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v8}, Lcom/anythink/core/common/f/n;->S()J

    move-result-wide v8

    invoke-static {v6, v4, v7, v8, v9}, Lcom/anythink/basead/d/a/b;->b(Ljava/lang/String;ZIJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/anythink/expressad/foundation/d/c;->k(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->P()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {v6, v5}, Lcom/anythink/basead/d/a/b;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v6}, Lcom/anythink/core/common/f/n;->R()I

    move-result v6

    iget-object v7, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v7}, Lcom/anythink/core/common/f/n;->S()J

    move-result-wide v7

    invoke-static {v5, v4, v6, v7, v8}, Lcom/anythink/basead/d/a/b;->b(Ljava/lang/String;ZIJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/expressad/foundation/d/c;->n(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c;->M()Lcom/anythink/expressad/foundation/d/c$c;

    move-result-object v1

    iget-object v4, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-virtual {v4}, Lcom/anythink/core/common/f/n;->A()I

    move-result v4

    if-ne v4, v3, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/anythink/expressad/foundation/d/c$c;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5, v4}, Lcom/anythink/basead/d/a/b;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/expressad/foundation/d/c$c;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    new-instance p1, Lcom/anythink/basead/d/a/b$3;

    invoke-direct {p1, p0, p2, p4}, Lcom/anythink/basead/d/a/b$3;-><init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;)V

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/videocommon/d/a;)V

    if-eqz p4, :cond_d

    invoke-interface {p4, v0}, Lcom/anythink/basead/d/a/b$a;->a(Lcom/anythink/core/common/a/i;)V

    :cond_d
    iget-object p1, p0, Lcom/anythink/basead/d/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p3}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/foundation/d/d;)V

    return-void
.end method

.method private e(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V
    .locals 8

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v7, Lcom/anythink/basead/d/a/b$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/anythink/basead/d/a/b$4;-><init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;Lcom/anythink/expressad/foundation/d/d;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V
    .locals 9

    invoke-static {p1}, Lcom/anythink/basead/d/a/b;->a(Lcom/anythink/core/common/f/j;)V

    iget v0, p2, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v7, Lcom/anythink/basead/d/a/b$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/anythink/basead/d/a/b$4;-><init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;Lcom/anythink/expressad/foundation/d/d;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget v0, p2, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    const/4 v1, 0x4

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v2, v3}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->h()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-lez v3, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->h()I

    move-result v2

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :sswitch_0
    const-string v8, "728x90"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v8, "320x90"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v8, "300x250"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x437a0000    # 250.0f

    invoke-static {v1, v2}, Lcom/anythink/core/common/o/i;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v1, 0x2

    :cond_5
    :goto_2
    new-instance v3, Lcom/anythink/expressad/out/TemplateBannerView;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/anythink/expressad/out/TemplateBannerView;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/anythink/expressad/out/i;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->h()I

    move-result v8

    invoke-direct {v4, v1, v8}, Lcom/anythink/expressad/out/i;-><init>(II)V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p1, p2, Lcom/anythink/core/common/f/m;->c:Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/anythink/core/common/f/aj;->ac()Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v1, ""

    invoke-virtual {v3, v4, v1, p1}, Lcom/anythink/expressad/out/TemplateBannerView;->init(Lcom/anythink/expressad/out/i;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/core/common/f/n;->y()I

    move-result p1

    if-nez p1, :cond_7

    const/4 v5, 0x1

    :cond_7
    invoke-virtual {v3, v5}, Lcom/anythink/expressad/out/TemplateBannerView;->setAllowShowCloseBtn(Z)V

    if-lez v2, :cond_8

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v6, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    new-instance p1, Lcom/anythink/basead/d/a/b$2;

    invoke-direct {p1, p0, p2, p4}, Lcom/anythink/basead/d/a/b$2;-><init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/d/a/b$a;)V

    invoke-virtual {v3, p1}, Lcom/anythink/expressad/out/TemplateBannerView;->setBannerAdListener(Lcom/anythink/expressad/out/h;)V

    invoke-interface {p4, v3}, Lcom/anythink/basead/d/a/b$a;->a(Lcom/anythink/core/common/a/i;)V

    iget-object p1, p0, Lcom/anythink/basead/d/a/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/anythink/core/common/f/m;->a:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, p3}, Lcom/anythink/expressad/out/TemplateBannerView;->load(Lcom/anythink/expressad/foundation/d/d;)V

    return-void

    :cond_9
    iget v0, p2, Lcom/anythink/core/common/f/m;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v7, Lcom/anythink/basead/d/a/b$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/basead/d/a/b$1;-><init>(Lcom/anythink/basead/d/a/b;Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/d/a/b;->d(Lcom/anythink/core/common/f/j;Lcom/anythink/core/common/f/m;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/basead/d/a/b$a;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x215ddd38 -> :sswitch_2
        0x59df5a3e -> :sswitch_1
        0x60b65fb2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
