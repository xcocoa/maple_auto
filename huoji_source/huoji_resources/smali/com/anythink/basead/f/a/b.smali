.class public final Lcom/anythink/basead/f/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/anythink/basead/f/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/basead/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/f/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/f/a/b;->b:Landroid/content/Context;

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/basead/f/a/b;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/f/a/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/f/a/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/basead/f/a/b;
    .locals 1

    sget-object v0, Lcom/anythink/basead/f/a/b;->a:Lcom/anythink/basead/f/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/basead/f/a/b;

    invoke-direct {v0, p0}, Lcom/anythink/basead/f/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/basead/f/a/b;->a:Lcom/anythink/basead/f/a/b;

    :cond_0
    sget-object p0, Lcom/anythink/basead/f/a/b;->a:Lcom/anythink/basead/f/a/b;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/basead/f/a/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/f/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/basead/b/c;->a(Landroid/content/Context;)Lcom/anythink/basead/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/basead/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/basead/c/c;

    iget-object v2, v2, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/anythink/core/common/f/z;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/basead/f/a/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/anythink/basead/f/a/b;->d(Lcom/anythink/core/common/f/z;)Lcom/anythink/basead/c/c;

    move-result-object p1

    iget-object v3, p1, Lcom/anythink/basead/c/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v2, p1, Lcom/anythink/basead/c/c;->d:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/anythink/basead/c/c;->d:I

    goto :goto_0

    :cond_0
    iput v4, p1, Lcom/anythink/basead/c/c;->d:I

    iput-object v2, p1, Lcom/anythink/basead/c/c;->f:Ljava/lang/String;

    :goto_0
    iput-wide v0, p1, Lcom/anythink/basead/c/c;->e:J

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/f/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/f/a/b$1;-><init>(Lcom/anythink/basead/f/a/b;Lcom/anythink/basead/c/c;)V

    const/4 p1, 0x2

    invoke-virtual {v0, v1, p1, v4}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/f/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/h;->a(Landroid/content/Context;)Lcom/anythink/core/d/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/d/h;->a(Ljava/lang/String;)Lcom/anythink/core/d/f;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/d/f;->R()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/z;

    invoke-virtual {p0, v1}, Lcom/anythink/basead/f/a/b;->b(Lcom/anythink/core/common/f/z;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method public final b(Lcom/anythink/core/common/f/z;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/anythink/basead/f/a/b;->d(Lcom/anythink/core/common/f/z;)Lcom/anythink/basead/c/c;

    move-result-object v0

    iget p1, p1, Lcom/anythink/core/common/f/z;->c:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    iget v0, v0, Lcom/anythink/basead/c/c;->d:I

    if-lt v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final c(Lcom/anythink/core/common/f/z;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/anythink/basead/f/a/b;->d(Lcom/anythink/core/common/f/z;)Lcom/anythink/basead/c/c;

    move-result-object v2

    iget-wide v2, v2, Lcom/anythink/basead/c/c;->e:J

    sub-long/2addr v0, v2

    iget-wide v2, p1, Lcom/anythink/core/common/f/z;->d:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lcom/anythink/core/common/f/z;)Lcom/anythink/basead/c/c;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/anythink/basead/f/a/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/f/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/c/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/anythink/basead/f/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/basead/b/c;->a(Landroid/content/Context;)Lcom/anythink/basead/b/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/anythink/basead/b/c;->a(Ljava/lang/String;)Lcom/anythink/basead/c/c;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/basead/c/c;

    invoke-direct {v1}, Lcom/anythink/basead/c/c;-><init>()V

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/anythink/basead/c/c;->a:Ljava/lang/String;

    iget v3, p1, Lcom/anythink/core/common/f/z;->c:I

    iput v3, v1, Lcom/anythink/basead/c/c;->b:I

    iget-wide v3, p1, Lcom/anythink/core/common/f/z;->d:J

    iput-wide v3, v1, Lcom/anythink/basead/c/c;->c:J

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/anythink/basead/c/c;->e:J

    iput v2, v1, Lcom/anythink/basead/c/c;->d:I

    iput-object v0, v1, Lcom/anythink/basead/c/c;->f:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/anythink/basead/f/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, v1, Lcom/anythink/basead/c/c;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object v0, v1, Lcom/anythink/basead/c/c;->f:Ljava/lang/String;

    iput v2, v1, Lcom/anythink/basead/c/c;->d:I

    :cond_2
    return-object v1
.end method
