.class public Lcom/anythink/core/common/n/f;
.super Lcom/anythink/core/common/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/common/m<",
        "Lcom/anythink/core/common/f/k;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:Lcom/anythink/core/common/n/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/core/common/m;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/common/n/f;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/n/f;->g:Lcom/anythink/core/common/n/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/n/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/n/f;->g:Lcom/anythink/core/common/n/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/n/f;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/n/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/n/f;->g:Lcom/anythink/core/common/n/f;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/core/common/n/f;->g:Lcom/anythink/core/common/n/f;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/k;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/k;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/k;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/anythink/core/d/a;->w()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    new-instance v3, Lcom/anythink/core/common/h/b;

    iget-object v4, p0, Lcom/anythink/core/common/m;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/core/d/a;->w()I

    move-result p1

    invoke-direct {v3, v4, p1, v0}, Lcom/anythink/core/common/h/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3}, Lcom/anythink/core/common/h/b;->p()V

    invoke-virtual {v3, v2, v1}, Lcom/anythink/core/common/h/b;->a(ILcom/anythink/core/common/h/k;)V

    return-void

    :cond_1
    new-instance v2, Lcom/anythink/core/common/h/a/a;

    invoke-direct {v2, v0}, Lcom/anythink/core/common/h/a/a;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/anythink/core/d/a;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Lcom/anythink/core/common/h/a/c;->a(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/anythink/core/common/h/a/a;->a()V

    invoke-virtual {v2, v1}, Lcom/anythink/core/common/h/a/c;->a(Lcom/anythink/core/common/h/a/c$a;)V

    return-void

    :cond_2
    new-instance p1, Lcom/anythink/core/common/h/b;

    iget-object v3, p0, Lcom/anythink/core/common/m;->d:Landroid/content/Context;

    invoke-direct {p1, v3, v2, v0}, Lcom/anythink/core/common/h/b;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1}, Lcom/anythink/core/common/h/b;->p()V

    invoke-virtual {p1, v2, v1}, Lcom/anythink/core/common/h/b;->a(ILcom/anythink/core/common/h/k;)V

    return-void
.end method
