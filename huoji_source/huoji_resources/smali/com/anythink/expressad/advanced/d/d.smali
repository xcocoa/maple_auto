.class public final Lcom/anythink/expressad/advanced/d/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/advanced/b/b;


# static fields
.field private static final a:Ljava/lang/String; = "NativeAdvancedShowListenerImpl"


# instance fields
.field private b:Lcom/anythink/expressad/out/o;

.field private c:Lcom/anythink/expressad/foundation/d/c;

.field private d:Z

.field private e:Lcom/anythink/expressad/advanced/d/c;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/advanced/d/c;Lcom/anythink/expressad/out/o;DLcom/anythink/expressad/foundation/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/advanced/d/d;->e:Lcom/anythink/expressad/advanced/d/c;

    iput-object p2, p0, Lcom/anythink/expressad/advanced/d/d;->b:Lcom/anythink/expressad/out/o;

    iput-object p5, p0, Lcom/anythink/expressad/advanced/d/d;->c:Lcom/anythink/expressad/foundation/d/c;

    invoke-static {p3, p4, p5}, Lcom/anythink/expressad/advanced/d/d;->a(DLcom/anythink/expressad/foundation/d/c;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/anythink/expressad/advanced/d/d;->d:Z

    return-void
.end method

.method private static a(DLcom/anythink/expressad/foundation/d/c;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->c()Lcom/anythink/expressad/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/expressad/d/a;->l()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v1}, Lcom/anythink/expressad/d/a;->x()J

    move-result-wide v6

    mul-long v6, v6, v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "cbp : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " plct : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " plctb : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v6, v7, v2, v3}, Lcom/anythink/expressad/foundation/d/c;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    return v1

    :cond_0
    invoke-virtual {p2, v0}, Lcom/anythink/expressad/foundation/d/c;->e(I)V

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result p2

    if-nez p2, :cond_4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, p0, v2

    if-nez p2, :cond_2

    return v0

    :cond_2
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    invoke-virtual {p2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "hit : "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-double v4, v2, p0

    if-lez v4, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_4

    return v1

    :catch_0
    :cond_4
    return v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/d;->b:Lcom/anythink/expressad/out/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/advanced/d/d;->b:Lcom/anythink/expressad/out/o;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/d;->e:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/expressad/advanced/d/c;->d:Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "load_to=0&allow_skip="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/expressad/advanced/d/d;->e:Lcom/anythink/expressad/advanced/d/c;

    invoke-virtual {v1}, Lcom/anythink/expressad/advanced/d/c;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/d;->b:Lcom/anythink/expressad/out/o;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/anythink/expressad/advanced/d/d;->d:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/anythink/expressad/out/o;->b()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/d;->b:Lcom/anythink/expressad/out/o;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/anythink/expressad/advanced/d/d;->d:Z

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/out/o;->a(Lcom/anythink/expressad/foundation/d/c;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/d;->b:Lcom/anythink/expressad/out/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/anythink/expressad/out/o;->f()V

    iget-object v0, p0, Lcom/anythink/expressad/advanced/d/d;->e:Lcom/anythink/expressad/advanced/d/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/expressad/advanced/d/c;->d:Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method
