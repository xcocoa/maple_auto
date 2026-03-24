.class public final Lcom/octopus/ad/utils/a/b/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/octopus/ad/utils/a/d;

.field private static b:Lcom/octopus/ad/utils/a/d;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/octopus/ad/utils/a/d;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/octopus/ad/utils/a/b/l;->a:Lcom/octopus/ad/utils/a/d;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/octopus/ad/utils/a/b/l;->c(Landroid/content/Context;)Lcom/octopus/ad/utils/a/d;

    move-result-object v0

    sput-object v0, Lcom/octopus/ad/utils/a/b/l;->a:Lcom/octopus/ad/utils/a/d;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/octopus/ad/utils/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manufacturer interface has been found: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/octopus/ad/utils/a/b/l;->a:Lcom/octopus/ad/utils/a/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/octopus/ad/utils/a/f;->a(Ljava/lang/Object;)V

    sget-object p0, Lcom/octopus/ad/utils/a/b/l;->a:Lcom/octopus/ad/utils/a/d;

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/octopus/ad/utils/a/b/l;->d(Landroid/content/Context;)Lcom/octopus/ad/utils/a/d;

    move-result-object p0

    sput-object p0, Lcom/octopus/ad/utils/a/b/l;->a:Lcom/octopus/ad/utils/a/d;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/octopus/ad/utils/a/d;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    sget-object v0, Lcom/octopus/ad/utils/a/b/l;->b:Lcom/octopus/ad/utils/a/d;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/octopus/ad/utils/a/b/l;->e(Landroid/content/Context;)Lcom/octopus/ad/utils/a/d;

    move-result-object p0

    sput-object p0, Lcom/octopus/ad/utils/a/b/l;->b:Lcom/octopus/ad/utils/a/d;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Lcom/octopus/ad/utils/a/d;
    .locals 1

    invoke-static {}, Lcom/octopus/ad/utils/a/g;->k()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/octopus/ad/utils/a/g;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/octopus/ad/utils/a/b/i;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/i;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/octopus/ad/utils/a/b/k;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/k;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->e()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/octopus/ad/utils/a/g;->f()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/octopus/ad/utils/a/g;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/octopus/ad/utils/a/b/o;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/o;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_4
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/octopus/ad/utils/a/b/p;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/p;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_5
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->m()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/octopus/ad/utils/a/b/a;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/a;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_6
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/octopus/ad/utils/a/g;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->c()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/octopus/ad/utils/a/g;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lcom/octopus/ad/utils/a/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/octopus/ad/utils/a/b/b;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/b;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_9
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->p()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/octopus/ad/utils/a/b/c;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/c;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_a
    invoke-static {}, Lcom/octopus/ad/utils/a/g;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/octopus/ad/utils/a/b/e;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/e;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_0
    new-instance v0, Lcom/octopus/ad/utils/a/b/n;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/n;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_d
    :goto_1
    new-instance v0, Lcom/octopus/ad/utils/a/b/g;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/g;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_e
    :goto_2
    new-instance v0, Lcom/octopus/ad/utils/a/b/q;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/q;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_f
    :goto_3
    new-instance v0, Lcom/octopus/ad/utils/a/b/h;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/h;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Lcom/octopus/ad/utils/a/d;
    .locals 2

    new-instance v0, Lcom/octopus/ad/utils/a/b/j;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/j;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/octopus/ad/utils/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile Security Alliance has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/octopus/ad/utils/a/b/j;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/octopus/ad/utils/a/f;->a(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/octopus/ad/utils/a/b/f;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/octopus/ad/utils/a/d;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Play Service has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/octopus/ad/utils/a/b/f;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/octopus/ad/utils/a/b/d;

    invoke-direct {p0}, Lcom/octopus/ad/utils/a/b/d;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OAID/GAID was not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/octopus/ad/utils/a/b/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/utils/a/f;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Lcom/octopus/ad/utils/a/d;
    .locals 2

    new-instance v0, Lcom/octopus/ad/utils/a/b/f;

    invoke-direct {v0, p0}, Lcom/octopus/ad/utils/a/b/f;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/octopus/ad/utils/a/d;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google Play Service has been found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/octopus/ad/utils/a/b/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/octopus/ad/utils/a/f;->a(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/octopus/ad/utils/a/b/d;

    invoke-direct {p0}, Lcom/octopus/ad/utils/a/b/d;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GAID was not supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/octopus/ad/utils/a/b/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/utils/a/f;->a(Ljava/lang/Object;)V

    return-object p0
.end method
