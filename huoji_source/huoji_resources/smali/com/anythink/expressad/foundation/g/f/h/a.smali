.class public Lcom/anythink/expressad/foundation/g/f/h/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final b:Ljava/lang/String; = "a"


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/b/a;->e()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/f/h/a;->a:Landroid/content/Context;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;Lcom/anythink/expressad/foundation/g/f/e;)V
    .locals 8

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/g/f/h/b;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-virtual {p3, v4, v3}, Lcom/anythink/expressad/foundation/g/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "st"

    invoke-virtual {p3, v1, v0}, Lcom/anythink/expressad/foundation/g/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/anythink/expressad/foundation/g/f/b;

    invoke-direct {v6}, Lcom/anythink/expressad/foundation/g/f/b;-><init>()V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/anythink/expressad/foundation/g/f/h/a;->b(ILjava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;Lcom/anythink/expressad/foundation/g/f/l;Lcom/anythink/expressad/foundation/g/f/e;)V

    return-void
.end method

.method private a(ILjava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;Lcom/anythink/expressad/foundation/g/f/l;Lcom/anythink/expressad/foundation/g/f/e;)V
    .locals 5

    if-nez p3, :cond_0

    :try_start_0
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/h/b;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/f/h/b;-><init>()V

    move-object p3, v0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/anythink/expressad/foundation/g/f/h/a;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;)V

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/g/f/h/b;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "ts"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/anythink/expressad/foundation/g/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "st"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/expressad/foundation/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/anythink/expressad/foundation/g/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/g/f/h/b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/anythink/expressad/foundation/g/f/d/c;

    invoke-direct {p1, p3, p2, v0, p5}, Lcom/anythink/expressad/foundation/g/f/d/c;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/anythink/expressad/foundation/g/f/d/d;

    invoke-direct {p1, p3, p2, v0, p5}, Lcom/anythink/expressad/foundation/g/f/d/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/anythink/expressad/foundation/g/f/d/g;

    invoke-direct {p1, p3, p2, v0, p5}, Lcom/anythink/expressad/foundation/g/f/d/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V

    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0, p4}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/l;)Lcom/anythink/expressad/foundation/g/f/i;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/m;->a(Lcom/anythink/expressad/foundation/g/f/i;)V

    :cond_5
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/foundation/g/f/m;->a()Lcom/anythink/expressad/foundation/g/f/d/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/anythink/expressad/foundation/g/f/d/b;->a(Ljava/io/File;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)Lcom/anythink/expressad/foundation/g/f/d/b$a;

    return-void
.end method

.method private b(ILjava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;Lcom/anythink/expressad/foundation/g/f/e;)V
    .locals 6

    new-instance v4, Lcom/anythink/expressad/foundation/g/f/b;

    invoke-direct {v4}, Lcom/anythink/expressad/foundation/g/f/b;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/expressad/foundation/g/f/h/a;->b(ILjava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;Lcom/anythink/expressad/foundation/g/f/l;Lcom/anythink/expressad/foundation/g/f/e;)V

    return-void
.end method

.method private b(ILjava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;Lcom/anythink/expressad/foundation/g/f/l;Lcom/anythink/expressad/foundation/g/f/e;)V
    .locals 5

    if-nez p3, :cond_0

    :try_start_0
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/h/b;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/f/h/b;-><init>()V

    move-object p3, v0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/anythink/expressad/foundation/g/f/h/a;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    const-string v1, "application/x-www-form-urlencoded"

    const-string v2, "Content-Type"

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/d/c;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/g/f/h/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p2, p1, p5}, Lcom/anythink/expressad/foundation/g/f/d/c;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/d/d;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/g/f/h/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p2, p1, p5}, Lcom/anythink/expressad/foundation/g/f/d/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/anythink/expressad/foundation/g/f/d/g;

    invoke-virtual {p3}, Lcom/anythink/expressad/foundation/g/f/h/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p2, p1, p5}, Lcom/anythink/expressad/foundation/g/f/d/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V

    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/anythink/expressad/foundation/g/f/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, p4}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/l;)Lcom/anythink/expressad/foundation/g/f/i;

    invoke-static {v0}, Lcom/anythink/expressad/foundation/g/f/m;->a(Lcom/anythink/expressad/foundation/g/f/i;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;)V
    .locals 3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/anythink/expressad/foundation/g/a;->cy:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {p2, v1, v0}, Lcom/anythink/expressad/foundation/g/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/anythink/expressad/foundation/g/f/a;->a()Lcom/anythink/expressad/foundation/g/f/a;

    invoke-static {}, Lcom/anythink/expressad/foundation/g/f/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "band_width"

    invoke-virtual {p2, v1, v0}, Lcom/anythink/expressad/foundation/g/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/g/f/h/b;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/out/k;->a()Lcom/anythink/expressad/out/k;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/anythink/expressad/out/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ch_info"

    invoke-virtual {p2, v0, p1}, Lcom/anythink/expressad/foundation/g/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;Lcom/anythink/expressad/foundation/g/f/e;)V
    .locals 6

    new-instance v0, Lcom/anythink/expressad/foundation/g/f/b;

    invoke-direct {v0}, Lcom/anythink/expressad/foundation/g/f/b;-><init>()V

    if-nez p2, :cond_0

    :try_start_0
    new-instance v1, Lcom/anythink/expressad/foundation/g/f/h/b;

    invoke-direct {v1}, Lcom/anythink/expressad/foundation/g/f/h/b;-><init>()V

    move-object p2, v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/anythink/expressad/foundation/g/f/h/a;->a(Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/h/b;)V

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/g/f/h/b;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "sign"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "ts"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/anythink/expressad/foundation/g/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "st"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/expressad/foundation/h/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lcom/anythink/expressad/foundation/g/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/g/f/h/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/anythink/expressad/foundation/g/f/d/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, v1, p1, v2, p3}, Lcom/anythink/expressad/foundation/g/f/d/g;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/foundation/g/f/e;)V

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/foundation/g/f/i;->a(Lcom/anythink/expressad/foundation/g/f/l;)Lcom/anythink/expressad/foundation/g/f/i;

    invoke-static {p2}, Lcom/anythink/expressad/foundation/g/f/m;->a(Lcom/anythink/expressad/foundation/g/f/i;)V

    return-void
.end method
