.class public Lcom/anythink/expressad/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "b"

.field public static final b:I = 0x1f4

.field public static final c:Ljava/lang/String; = "anythink"

.field private static volatile d:Lcom/anythink/expressad/d/b;

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Lcom/anythink/expressad/d/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anythink/expressad/d/b;->e:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/expressad/d/b;->f:Lcom/anythink/expressad/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/expressad/d/b;
    .locals 2

    sget-object v0, Lcom/anythink/expressad/d/b;->d:Lcom/anythink/expressad/d/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/expressad/d/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/expressad/d/b;->d:Lcom/anythink/expressad/d/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/expressad/d/b;

    invoke-direct {v1}, Lcom/anythink/expressad/d/b;-><init>()V

    sput-object v1, Lcom/anythink/expressad/d/b;->d:Lcom/anythink/expressad/d/b;

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
    sget-object v0, Lcom/anythink/expressad/d/b;->d:Lcom/anythink/expressad/d/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/anythink/expressad/d/b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/anythink/expressad/d/c;

    invoke-direct {p0}, Lcom/anythink/expressad/d/c;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/expressad/d/a;->R()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    const-string v0, "anythink_expressad"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/anythink/expressad/d/b;->e:Ljava/util/HashMap;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/anythink/expressad/d/c;->b(Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/anythink/expressad/foundation/a/a/a;->a()Lcom/anythink/expressad/foundation/a/a/a;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/anythink/expressad/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/anythink/expressad/d/c;->b(Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p1

    sget-object p2, Lcom/anythink/expressad/d/b;->e:Ljava/util/HashMap;

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()Lcom/anythink/expressad/d/a;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/d/b;->f:Lcom/anythink/expressad/d/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/d/b;->c()Lcom/anythink/expressad/d/a;

    move-result-object v0

    sput-object v0, Lcom/anythink/expressad/d/b;->f:Lcom/anythink/expressad/d/a;

    :cond_0
    sget-object v0, Lcom/anythink/expressad/d/b;->f:Lcom/anythink/expressad/d/a;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/anythink/expressad/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/anythink/expressad/d/c;

    invoke-direct {p0}, Lcom/anythink/expressad/d/c;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/a/a/a;->a()Lcom/anythink/expressad/foundation/a/a/a;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ivreward_"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/foundation/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lcom/anythink/expressad/d/a;
    .locals 2

    new-instance v0, Lcom/anythink/expressad/d/a;

    invoke-direct {v0}, Lcom/anythink/expressad/d/a;-><init>()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->A()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->B()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->y()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->z()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->w()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->u()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->m()V

    const-string v1, "anythink"

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->j()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->p()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->o()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->s()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->e()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->d()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->f()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->g()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->h()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->i()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->c()V

    const-string v1, "https://cdn-adn-https.rayjump.com/cdn-adn/v2/portal/19/08/20/11/06/5d5b63cb457e2.js"

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/a;->c(Ljava/lang/String;)V

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/a;->a(I)V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->O()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->N()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/a;->a(I)V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->Q()V

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cH:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/a;->e(I)V

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cJ:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/a;->d(I)V

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cI:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/a;->c(I)V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->a()V

    sget v1, Lcom/anythink/expressad/foundation/g/a;->cO:I

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/a;->f(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/a;->b(I)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/anythink/expressad/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/d/c;->k()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/d/c;->l()V

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/a/a/a;->a()Lcom/anythink/expressad/foundation/a/a/a;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ivreward_"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/foundation/a/a/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)Lcom/anythink/expressad/d/c;
    .locals 4

    new-instance v0, Lcom/anythink/expressad/d/c;

    invoke-direct {v0}, Lcom/anythink/expressad/d/c;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->v()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->u()V

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/d/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/d/c;->a(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/anythink/expressad/d/c;->b(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->p()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->r()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->q()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->o()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->n()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->j()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->l()V

    const/16 p0, 0x64

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/d/c;->c(I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/anythink/expressad/d/c;->d(I)V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->h()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->e()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->c()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->w()V

    invoke-virtual {v0}, Lcom/anythink/expressad/d/c;->x()V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/anythink/expressad/d/b;->g(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/anythink/expressad/foundation/a/a/a;->a()Lcom/anythink/expressad/foundation/a/a/a;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ivreward_"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/expressad/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/foundation/a/a/a;->a()Lcom/anythink/expressad/foundation/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/expressad/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/anythink/expressad/d/a;->b(Ljava/lang/String;)Lcom/anythink/expressad/d/a;

    move-result-object p0

    sput-object p0, Lcom/anythink/expressad/d/b;->f:Lcom/anythink/expressad/d/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/expressad/d/a;->G()V

    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/expressad/d/c;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    sget-object v0, Lcom/anythink/expressad/d/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/anythink/expressad/d/b;->e:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/anythink/expressad/d/c;

    :cond_1
    return-object p1
.end method
