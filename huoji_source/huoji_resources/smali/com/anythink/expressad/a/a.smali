.class public final Lcom/anythink/expressad/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "Anythink SDK M"

.field public static b:Z = false

.field public static c:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "2"

.field private static final f:I = 0x1


# instance fields
.field private g:Ljava/lang/String;

.field private h:J

.field private i:Lcom/anythink/expressad/foundation/c/c;

.field private j:Landroid/content/Context;

.field private k:Lcom/anythink/expressad/a/c;

.field private l:Lcom/anythink/expressad/out/f;

.field private m:Lcom/anythink/expressad/out/p$c;

.field private n:Lcom/anythink/expressad/d/a;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/anythink/expressad/a/a;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/anythink/expressad/a/a;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/a/a;->i:Lcom/anythink/expressad/foundation/c/c;

    iput-object v0, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    iput-object v0, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/a/a;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/a/a;->q:Z

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/a/a;->n:Lcom/anythink/expressad/d/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->c()Lcom/anythink/expressad/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/a/a;->n:Lcom/anythink/expressad/d/a;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/a/a;->n:Lcom/anythink/expressad/d/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/d/a;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/anythink/expressad/a/a;->o:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/expressad/a/a;->g:Ljava/lang/String;

    iget-object p2, p0, Lcom/anythink/expressad/a/a;->i:Lcom/anythink/expressad/foundation/c/c;

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/c/c;->a(Landroid/content/Context;)Lcom/anythink/expressad/foundation/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/a/a;->i:Lcom/anythink/expressad/foundation/c/c;

    :cond_1
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/out/p$c;)V
    .locals 1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-static {p1, p2, p3, p4}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/out/p$c;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-static {p1, p2, p4}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/anythink/expressad/a/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/anythink/expressad/a/c;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    sget v8, Lcom/anythink/expressad/a/a/a;->h:I

    const-string v1, "2"

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/anythink/expressad/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/e;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/anythink/expressad/a/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/anythink/expressad/a/c;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    const-string v1, "2"

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/anythink/expressad/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/e;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 10

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/anythink/expressad/a/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/anythink/expressad/a/c;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    :goto_0
    array-length v1, p3

    if-ge p0, v1, :cond_1

    const/4 v5, 0x0

    aget-object v6, p3, p0

    const/4 v7, 0x0

    sget v9, Lcom/anythink/expressad/a/a/a;->h:I

    const-string v2, "2"

    move-object v1, v0

    move-object v3, p2

    move-object v4, p1

    move v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/anythink/expressad/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/e;Ljava/lang/String;ZZI)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/a/a;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ExitApp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-static {p0}, Lcom/anythink/core/common/b/k;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/k;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/b/k;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private a(Lcom/anythink/expressad/a/c$b;Lcom/anythink/expressad/foundation/d/c;Z)V
    .locals 7

    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/expressad/a/a;->h:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/anythink/expressad/foundation/d/f;

    invoke-direct {v2}, Lcom/anythink/expressad/foundation/d/f;-><init>()V

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/foundation/d/f;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/f;->a()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->h(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->d(I)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "utf-8"

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->f(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/anythink/expressad/a/a;->h:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->a(I)V

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->b(I)V

    iget-object p2, p0, Lcom/anythink/expressad/a/a;->g:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->c()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->d(I)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->f(Ljava/lang/String;)V

    :cond_2
    iget-boolean p2, p0, Lcom/anythink/expressad/a/a;->o:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->a()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->c(I)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->f()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->e(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/anythink/expressad/foundation/d/f;->c(Ljava/lang/String;)V

    :cond_5
    if-nez p3, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/anythink/expressad/foundation/d/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/c$b;ZZ)V
    .locals 6

    :try_start_0
    iget-boolean v0, p0, Lcom/anythink/expressad/a/a;->q:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_11

    if-nez p2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0}, Lcom/anythink/expressad/a/a;->i()I

    move-result v1

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->i()I

    move-result v2

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v3, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result p4

    if-ne p4, v4, :cond_2

    invoke-direct {p0}, Lcom/anythink/expressad/a/a;->i()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/a/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/c$b;ZI)Z

    return-void

    :cond_2
    if-ne p4, v5, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/a/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/c$b;Z)Z

    return-void

    :cond_3
    iget-object p3, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ad()Ljava/lang/String;

    move-result-object p4

    iget-object v1, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {p3, p4, v1}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)V

    invoke-direct {p0, p2, p1, v0}, Lcom/anythink/expressad/a/a;->b(Lcom/anythink/expressad/a/c$b;Lcom/anythink/expressad/foundation/d/c;Z)V

    iget-object p3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/anythink/expressad/out/p$c;->a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    if-ne v2, v0, :cond_9

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_6

    iget-object v2, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/foundation/h/s$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/foundation/h/s$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    :goto_0
    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/anythink/expressad/a/a;->a(ILjava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/out/p$c;)V

    :cond_8
    iget-object v1, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz v1, :cond_e

    if-eqz p3, :cond_e

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v1, p1, v2}, Lcom/anythink/expressad/out/p$c;->a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    if-ne v2, v5, :cond_b

    if-eqz p3, :cond_a

    iget-object v1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)V

    :cond_a
    iget-object v1, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz v1, :cond_e

    if-eqz p3, :cond_e

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_b
    if-eqz p3, :cond_e

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result v1

    if-ne v5, v1, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/expressad/a/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/c$b;Z)Z

    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result v1

    if-ne v4, v1, :cond_d

    invoke-direct {p0}, Lcom/anythink/expressad/a/a;->i()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/a/a;->a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/c$b;ZI)Z

    return-void

    :cond_d
    iget-object v1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {v1, v2, v3}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)V

    iget-object v1, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz v1, :cond_e

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_e
    :goto_2
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result v1

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/expressad/a/a;->a(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/anythink/expressad/a/a;->b(Lcom/anythink/expressad/a/c$b;Lcom/anythink/expressad/foundation/d/c;Z)V

    goto :goto_3

    :cond_f
    invoke-direct {p0, p2, p1, v0}, Lcom/anythink/expressad/a/a;->b(Lcom/anythink/expressad/a/c$b;Lcom/anythink/expressad/foundation/d/c;Z)V

    :goto_3
    iget-object v0, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz v0, :cond_10

    if-nez p3, :cond_10

    if-eqz p4, :cond_10

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/anythink/expressad/out/p$c;->a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    :goto_4
    if-eqz p3, :cond_12

    invoke-direct {p0, p2, p1, v0}, Lcom/anythink/expressad/a/a;->b(Lcom/anythink/expressad/a/c$b;Lcom/anythink/expressad/foundation/d/c;Z)V

    iget-object p1, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz p1, :cond_12

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2}, Lcom/anythink/expressad/out/p$c;->b(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_12
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/expressad/a/a;->g:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v7, Lcom/anythink/expressad/a/a/a;->k:I

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Lcom/anythink/expressad/a/a;->a(Landroid/content/Context;Lcom/anythink/expressad/foundation/d/c;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :cond_0
    return-void
.end method

.method private a(Lcom/anythink/expressad/out/f;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/a;->l:Lcom/anythink/expressad/out/f;

    return-void
.end method

.method private a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/anythink/expressad/foundation/d/c;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/anythink/expressad/foundation/d/c;

    :cond_1
    const-string p1, "market://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "https://play.google.com/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {p1, p2, v1}, Lcom/anythink/expressad/foundation/h/s$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {p1, p2, v0}, Lcom/anythink/expressad/foundation/h/s$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)Z

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/anythink/expressad/a/a;->i()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ad()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {p1, p2, v0, v1}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/out/p$c;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/d/c;->ad()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {p1, p2, v0}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method private a(ZLcom/anythink/expressad/out/j;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/anythink/expressad/a/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/expressad/a/a$1;-><init>(Lcom/anythink/expressad/a/a;ZLcom/anythink/expressad/out/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static a(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/s$a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static a(Lcom/anythink/expressad/foundation/d/c;)Z
    .locals 6

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/anythink/expressad/a/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/anythink/expressad/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gtz v0, :cond_1

    sget-object v0, Lcom/anythink/expressad/a/a;->d:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/anythink/expressad/foundation/d/c;->Y()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sget-object v1, Lcom/anythink/expressad/a/a;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/c$b;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ad()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {p3, v2, v3}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)V

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, p2, p1, v0}, Lcom/anythink/expressad/a/a;->b(Lcom/anythink/expressad/a/c$b;Lcom/anythink/expressad/foundation/d/c;Z)V

    if-eqz v1, :cond_1

    iget-object p3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/anythink/expressad/out/p$c;->a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/anythink/expressad/out/p$c;->b(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_2
    :goto_0
    return v1
.end method

.method private a(Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/a/c$b;ZI)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object p4, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {p4, v2, v3}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object p4, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {p4, v2, p1, v3}, Lcom/anythink/expressad/foundation/h/s;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/out/p$c;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->ba()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    invoke-static {v2, v3, v4}, Lcom/anythink/expressad/foundation/h/s$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/expressad/out/p$c;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    :goto_1
    invoke-direct {p0, p4, v2, p1, v3}, Lcom/anythink/expressad/a/a;->a(ILjava/lang/String;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/out/p$c;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    invoke-direct {p0, p2, p1, v1}, Lcom/anythink/expressad/a/a;->b(Lcom/anythink/expressad/a/c$b;Lcom/anythink/expressad/foundation/d/c;Z)V

    iget-object p3, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/anythink/expressad/out/p$c;->a(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-direct {p0, p2, p1, v1}, Lcom/anythink/expressad/a/a;->b(Lcom/anythink/expressad/a/c$b;Lcom/anythink/expressad/foundation/d/c;Z)V

    iget-object p4, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    if-eqz p4, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Lcom/anythink/expressad/out/p$c;->b(Lcom/anythink/expressad/out/j;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_6
    :goto_4
    return v0
.end method

.method public static synthetic b(Lcom/anythink/expressad/a/a;)Lcom/anythink/expressad/out/p$c;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    return-object p0
.end method

.method private b(Lcom/anythink/expressad/a/c$b;Lcom/anythink/expressad/foundation/d/c;Z)V
    .locals 7

    if-eqz p2, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/anythink/expressad/a/a;->h:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/anythink/expressad/foundation/d/f;

    invoke-direct {v2}, Lcom/anythink/expressad/foundation/d/f;-><init>()V

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/expressad/foundation/d/f;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/anythink/expressad/foundation/d/f;->a()V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->h(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/expressad/out/j;->aZ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->d(I)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "utf-8"

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->f(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/anythink/expressad/a/a;->h:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/expressad/foundation/d/f;->a(I)V

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->Q()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->b(I)V

    iget-object p2, p0, Lcom/anythink/expressad/a/a;->g:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->c()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->d(I)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->j()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->f(Ljava/lang/String;)V

    :cond_2
    iget-boolean p2, p0, Lcom/anythink/expressad/a/a;->o:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->a()I

    move-result p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->c(I)V

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->d(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->f()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->f()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/anythink/expressad/foundation/d/f;->e(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/anythink/expressad/a/c$b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/anythink/expressad/foundation/d/f;->c(Ljava/lang/String;)V

    :cond_5
    if-nez p3, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/anythink/expressad/foundation/d/f;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/anythink/expressad/foundation/h/w;->b(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

.method private b(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    const-class v2, Lcom/anythink/expressad/out/LoadingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "icon_url"

    invoke-virtual {p1}, Lcom/anythink/expressad/out/j;->bd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/expressad/a/a;->q:Z

    return v0
.end method

.method private d()Lcom/anythink/expressad/out/f;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/a/a;->l:Lcom/anythink/expressad/out/f;

    return-object v0
.end method

.method private e()Lcom/anythink/expressad/foundation/c/c;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/a/a;->i:Lcom/anythink/expressad/foundation/c/c;

    return-object v0
.end method

.method private static f()V
    .locals 0

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/a/a;->k:Lcom/anythink/expressad/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/a/a;->k:Lcom/anythink/expressad/a/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/a/c;->b()V

    :cond_0
    return-void
.end method

.method private static h()V
    .locals 0

    return-void
.end method

.method private i()I
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/a/a;->n:Lcom/anythink/expressad/d/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/anythink/expressad/d/a;->k()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method private j()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ExitApp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/anythink/expressad/a/a;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/core/common/b/k;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/b/k;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/a/a;->q:Z

    return-void
.end method

.method public final a(Lcom/anythink/expressad/out/p$c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/anythink/expressad/a/a;->m:Lcom/anythink/expressad/out/p$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
