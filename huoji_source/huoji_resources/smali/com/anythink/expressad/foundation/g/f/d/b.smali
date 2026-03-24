.class public final Lcom/anythink/expressad/foundation/g/f/d/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/foundation/g/f/d/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/anythink/expressad/foundation/g/f/j;

.field private b:I

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/anythink/expressad/foundation/g/f/d/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/f/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->c:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->a:Lcom/anythink/expressad/foundation/g/f/j;

    const/4 p1, 0x3

    iput p1, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->b:I

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Lcom/anythink/expressad/foundation/g/f/d/a;
    .locals 1

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/d/a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/foundation/g/f/d/a;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)Lcom/anythink/expressad/foundation/g/f/d/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/foundation/g/f/e<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/anythink/expressad/foundation/g/f/d/b$a;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/anythink/expressad/foundation/g/f/d/b;->a(Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)Lcom/anythink/expressad/foundation/g/f/d/b$a;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/foundation/g/f/d/b;)Lcom/anythink/expressad/foundation/g/f/j;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->a:Lcom/anythink/expressad/foundation/g/f/j;

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/foundation/g/f/d/b$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/f/d/b;->b()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lcom/anythink/expressad/foundation/g/f/d/b;Lcom/anythink/expressad/foundation/g/f/d/b$a;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/f/d/b;->b()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->b:I

    if-lt v0, v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-static {v2}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->a(Lcom/anythink/expressad/foundation/g/f/d/b$a;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->b:I

    if-ne v0, v2, :cond_3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic b(Lcom/anythink/expressad/foundation/g/f/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/f/d/b;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)Lcom/anythink/expressad/foundation/g/f/d/b$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/anythink/expressad/foundation/g/f/e<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/anythink/expressad/foundation/g/f/d/b$a;"
        }
    .end annotation

    new-instance v6, Lcom/anythink/expressad/foundation/g/f/d/b$a;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/foundation/g/f/d/b$a;-><init>(Lcom/anythink/expressad/foundation/g/f/d/b;Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;B)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/anythink/expressad/foundation/g/f/d/b;->b()V

    return-object v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()V
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/f/d/b;->c:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/g/f/d/b$a;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/g/f/d/b$a;->b()Z

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
