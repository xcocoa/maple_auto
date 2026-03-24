.class public Lcom/anythink/basead/a/b/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/a/b/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "d"

.field private static volatile b:Lcom/anythink/basead/a/b/d;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/basead/a/b/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/a/b/d;->c:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/anythink/basead/a/b/d;
    .locals 2

    sget-object v0, Lcom/anythink/basead/a/b/d;->b:Lcom/anythink/basead/a/b/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/basead/a/b/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/basead/a/b/d;->b:Lcom/anythink/basead/a/b/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/basead/a/b/d;

    invoke-direct {v1}, Lcom/anythink/basead/a/b/d;-><init>()V

    sput-object v1, Lcom/anythink/basead/a/b/d;->b:Lcom/anythink/basead/a/b/d;

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
    sget-object v0, Lcom/anythink/basead/a/b/d;->b:Lcom/anythink/basead/a/b/d;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/anythink/basead/a/b/d$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/a/b/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/a/b/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/a/b/d$a;

    invoke-interface {v1, p1, p2}, Lcom/anythink/basead/a/b/d$a;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/basead/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/a/b/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/a/b/d$a;

    invoke-interface {v1, p1, p2}, Lcom/anythink/basead/a/b/d$a;->a(Ljava/lang/String;Lcom/anythink/basead/c/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized b(Lcom/anythink/basead/a/b/d$a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/a/b/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/anythink/basead/a/b/d;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v2, :cond_2

    iget-object p1, p0, Lcom/anythink/basead/a/b/d;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
