.class public Lcom/anythink/basead/a/e;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "e"

.field private static volatile b:Lcom/anythink/basead/a/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/anythink/basead/a/e;
    .locals 2

    sget-object v0, Lcom/anythink/basead/a/e;->b:Lcom/anythink/basead/a/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/basead/a/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/basead/a/e;->b:Lcom/anythink/basead/a/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/basead/a/e;

    invoke-direct {v1}, Lcom/anythink/basead/a/e;-><init>()V

    sput-object v1, Lcom/anythink/basead/a/e;->b:Lcom/anythink/basead/a/e;

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
    sget-object v0, Lcom/anythink/basead/a/e;->b:Lcom/anythink/basead/a/e;

    return-object v0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/res/d;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/a/b/b$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/anythink/basead/a/e;->a(Ljava/lang/String;ZLcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/a/b/b$b;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;Lcom/anythink/core/common/f/ab;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/z;",
            ">;",
            "Lcom/anythink/core/common/f/ab;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Lcom/anythink/core/common/f/m;

    invoke-direct {v2}, Lcom/anythink/core/common/f/m;-><init>()V

    iput-object p2, v2, Lcom/anythink/core/common/f/m;->n:Lcom/anythink/core/common/f/n;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/f/l;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {p0, v5, v3, v2, v4}, Lcom/anythink/basead/a/e;->a(Ljava/lang/String;ZLcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/a/b/b$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;ZLcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;Lcom/anythink/basead/a/b/b$b;)V
    .locals 1

    new-instance v0, Lcom/anythink/basead/a/b/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/anythink/basead/a/b/b;-><init>(Ljava/lang/String;ZLcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)V

    invoke-virtual {v0, p4}, Lcom/anythink/basead/a/b/b;->a(Lcom/anythink/basead/a/b/b$b;)V

    return-void
.end method

.method public static a(Lcom/anythink/core/common/f/z;ILcom/anythink/core/common/f/n;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;ILcom/anythink/core/common/f/n;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/anythink/core/common/f/z;Lcom/anythink/core/common/f/m;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/anythink/basead/a/b/c;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0, p1}, Lcom/anythink/core/common/res/d;->a(ILjava/lang/String;Ljava/io/InputStream;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(ILjava/lang/String;)Ljava/io/FileInputStream;
    .locals 1

    invoke-static {p1}, Lcom/anythink/core/common/o/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/res/d;->a(Landroid/content/Context;)Lcom/anythink/core/common/res/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/anythink/core/common/res/d;->a(ILjava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method
