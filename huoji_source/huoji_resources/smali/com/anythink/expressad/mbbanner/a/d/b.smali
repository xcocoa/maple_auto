.class public Lcom/anythink/expressad/mbbanner/a/d/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/anythink/expressad/mbbanner/a/b/e;

.field private e:Lcom/anythink/expressad/mbbanner/a/e/a;

.field private f:Lcom/anythink/expressad/mbbanner/a/c/b;

.field private g:Lcom/anythink/expressad/mbbanner/a/c/d;

.field private volatile h:Z

.field private i:Ljava/util/Timer;

.field private volatile j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/expressad/mbbanner/a/b/e;Lcom/anythink/expressad/mbbanner/a/c/b;Lcom/anythink/expressad/mbbanner/a/e/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->c:I

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->h:Z

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->i:Ljava/util/Timer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->j:Ljava/util/List;

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->k:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->l:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->m:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    iput-object p3, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->f:Lcom/anythink/expressad/mbbanner/a/c/b;

    iput-object p4, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->e:Lcom/anythink/expressad/mbbanner/a/e/a;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/expressad/mbbanner/a/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcom/anythink/expressad/foundation/g/c/a;->i:Lcom/anythink/expressad/foundation/g/c/a;

    invoke-static {v2}, Lcom/anythink/expressad/foundation/g/c/d;->b(Lcom/anythink/expressad/foundation/g/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/anythink/expressad/foundation/h/x;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/expressad/foundation/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v4, ".html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v2

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0, p1, v3, p2, v0}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_7

    :goto_5
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    return-object v1
.end method

.method private a(Lcom/anythink/expressad/foundation/d/d;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/expressad/foundation/d/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    :try_start_0
    iget-object v1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object p1, p1, Lcom/anythink/expressad/foundation/d/d;->J:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNeedShowList total campaign:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->O()I

    move-result v3

    const/16 v4, 0x63

    if-eq v3, v4, :cond_5

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v2, v3}, Lcom/anythink/expressad/foundation/d/c;->i(I)V

    :cond_2
    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/c;->ae()I

    move-result v3

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/anythink/expressad/foundation/h/t;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lcom/anythink/expressad/foundation/h/t;->a(Lcom/anythink/expressad/foundation/d/c;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getNeedShowList return these campaign with video res:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->h:Z

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->m:Z

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->i:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->e:Lcom/anythink/expressad/mbbanner/a/e/a;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->f:Lcom/anythink/expressad/mbbanner/a/c/b;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/mbbanner/a/e/a;->a(Lcom/anythink/expressad/mbbanner/a/c/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->g:Lcom/anythink/expressad/mbbanner/a/c/d;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/mbbanner/a/c/d;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->j:Ljava/util/List;

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/anythink/expressad/mbbanner/a/c/g;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/mbbanner/a/c/g;-><init>(Lcom/anythink/expressad/mbbanner/a/d/b;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/expressad/foundation/g/d/b;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/g/d/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->be()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/expressad/foundation/g/d/b;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/d/c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/mbbanner/a/d/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->h:Z

    return p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    invoke-virtual {v0}, Lcom/anythink/expressad/mbbanner/a/b/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/anythink/expressad/foundation/d/d;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anythink/expressad/mbbanner/a/d/b$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/b$2;-><init>(Lcom/anythink/expressad/mbbanner/a/d/b;Lcom/anythink/expressad/foundation/d/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->h:Z

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->e:Lcom/anythink/expressad/mbbanner/a/e/a;

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->f:Lcom/anythink/expressad/mbbanner/a/c/b;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/expressad/mbbanner/a/e/a;->b(Lcom/anythink/expressad/mbbanner/a/c/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->g:Lcom/anythink/expressad/mbbanner/a/c/d;

    invoke-interface {v0, p1}, Lcom/anythink/expressad/mbbanner/a/c/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/c/f;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/mbbanner/a/c/f;-><init>(Lcom/anythink/expressad/mbbanner/a/d/b;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/anythink/expressad/videocommon/b/i;->a(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/anythink/expressad/foundation/d/c;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->c:I

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr v0, p2

    :cond_0
    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    invoke-virtual {p2}, Lcom/anythink/expressad/mbbanner/a/b/e;->c()I

    move-result p2

    if-le v0, p2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/mbbanner/a/b/e;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static synthetic b(Lcom/anythink/expressad/mbbanner/a/d/b;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->h:Z

    return v0
.end method

.method private c()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    invoke-virtual {v1}, Lcom/anythink/expressad/mbbanner/a/b/e;->b()I

    move-result v1

    iget-object v2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    invoke-virtual {v2}, Lcom/anythink/expressad/mbbanner/a/b/e;->c()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static synthetic c(Lcom/anythink/expressad/mbbanner/a/d/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/anythink/expressad/mbbanner/a/d/b$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/b$1;-><init>(Lcom/anythink/expressad/mbbanner/a/d/b;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->i:Ljava/util/Timer;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/mbbanner/a/b/e;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    if-nez p4, :cond_1

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, " unitId ="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " --> time out!"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->i:Ljava/util/Timer;

    invoke-virtual {p2}, Ljava/util/Timer;->cancel()V

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->h:Z

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->e:Lcom/anythink/expressad/mbbanner/a/e/a;

    iget-object p3, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->f:Lcom/anythink/expressad/mbbanner/a/c/b;

    invoke-virtual {p2, p3, p1}, Lcom/anythink/expressad/mbbanner/a/e/a;->b(Lcom/anythink/expressad/mbbanner/a/c/b;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->g:Lcom/anythink/expressad/mbbanner/a/c/d;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/mbbanner/a/c/d;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    if-ne p2, v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->j:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->j:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->l:Z

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 p3, 0x3

    if-ne p2, p3, :cond_5

    iput-boolean v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->k:Z

    invoke-direct {p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/expressad/foundation/d/d;Lcom/anythink/expressad/mbbanner/a/c/d;)V
    .locals 5

    iput-object p3, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->g:Lcom/anythink/expressad/mbbanner/a/c/d;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->e:Lcom/anythink/expressad/mbbanner/a/e/a;

    iget-object p3, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->f:Lcom/anythink/expressad/mbbanner/a/c/b;

    const-string v0, "campaignUnit is NULL!"

    :goto_0
    invoke-virtual {p2, p3, v0, p1}, Lcom/anythink/expressad/mbbanner/a/e/a;->a(Lcom/anythink/expressad/mbbanner/a/c/b;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->g:Lcom/anythink/expressad/mbbanner/a/c/d;

    invoke-interface {p2, p1}, Lcom/anythink/expressad/mbbanner/a/c/d;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Lcom/anythink/expressad/foundation/d/d;)Ljava/util/List;

    move-result-object p3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/anythink/expressad/mbbanner/a/d/b$2;

    invoke-direct {v1, p0, p2}, Lcom/anythink/expressad/mbbanner/a/d/b$2;-><init>(Lcom/anythink/expressad/mbbanner/a/d/b;Lcom/anythink/expressad/foundation/d/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->e:Lcom/anythink/expressad/mbbanner/a/e/a;

    iget-object p3, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->f:Lcom/anythink/expressad/mbbanner/a/c/b;

    const-string v0, "APP ALREADY INSTALLED"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/anythink/expressad/mbbanner/a/d/b$1;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/mbbanner/a/d/b$1;-><init>(Lcom/anythink/expressad/mbbanner/a/d/b;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->i:Ljava/util/Timer;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/d;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/mbbanner/a/b/e;->a(Ljava/lang/String;)V

    iget p2, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->c:I

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr p2, v1

    :cond_2
    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    invoke-virtual {v1}, Lcom/anythink/expressad/mbbanner/a/b/e;->c()I

    move-result v1

    if-le p2, v1, :cond_3

    const/4 p2, 0x0

    :cond_3
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->d:Lcom/anythink/expressad/mbbanner/a/b/e;

    invoke-virtual {v1, p2}, Lcom/anythink/expressad/mbbanner/a/b/e;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Lcom/anythink/expressad/mbbanner/a/c/f;

    invoke-direct {v2, p0, p1}, Lcom/anythink/expressad/mbbanner/a/c/f;-><init>(Lcom/anythink/expressad/mbbanner/a/d/b;Ljava/lang/String;)V

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/anythink/expressad/videocommon/b/i;->a(Ljava/lang/String;Lcom/anythink/expressad/videocommon/b/i$a;)V

    :cond_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/foundation/d/c;->d(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v1, v3}, Lcom/anythink/expressad/foundation/d/c;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {v2, v1}, Lcom/anythink/expressad/foundation/d/c;->e(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/expressad/foundation/d/c;

    const-string v3, "<MBTPLMARK>"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/foundation/d/c;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iput-boolean v3, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->l:Z

    iput-boolean v3, p0, Lcom/anythink/expressad/mbbanner/a/d/b;->k:Z

    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/anythink/expressad/mbbanner/a/d/b;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
