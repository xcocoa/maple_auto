.class public final Lcom/anythink/basead/a/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/g/b;


# instance fields
.field public a:Lcom/anythink/core/common/m/c;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/basead/a/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/anythink/basead/a/h;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/anythink/basead/a/a;->a(Landroid/content/Context;Lcom/anythink/core/common/f/l;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->o()Lcom/anythink/core/common/f/n;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p4}, Lcom/anythink/core/common/f/n;->L()I

    move-result v0

    invoke-virtual {p4}, Lcom/anythink/core/common/f/n;->M()I

    move-result p4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p4, 0x3

    if-eq v0, p4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/anythink/core/common/b;->a()Lcom/anythink/core/common/b;

    move-result-object p4

    new-instance v0, Lcom/anythink/basead/c/g;

    invoke-direct {v0, p1, p3, p2}, Lcom/anythink/basead/c/g;-><init>(Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "1"

    invoke-virtual {p4, p1, v0}, Lcom/anythink/core/common/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    new-instance v0, Lcom/anythink/basead/a/h$1;

    invoke-direct {v0, p0}, Lcom/anythink/basead/a/h$1;-><init>(Lcom/anythink/basead/a/h;)V

    new-instance v7, Lcom/anythink/core/common/m/c;

    int-to-long v8, p4

    new-instance p4, Lcom/anythink/basead/a/h$2;

    move-object v1, p4

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/anythink/basead/a/h$2;-><init>(Lcom/anythink/basead/a/h;Lcom/anythink/basead/a;Lcom/anythink/core/common/f/l;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9, p4}, Lcom/anythink/core/common/m/c;-><init>(JLjava/lang/Runnable;)V

    iput-object v7, p0, Lcom/anythink/basead/a/h;->a:Lcom/anythink/core/common/m/c;

    :try_start_0
    iget-object p1, p0, Lcom/anythink/basead/a/h;->b:Landroid/content/Context;

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->q()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error"

    const-string p3, "Error, cannot registerActivityLifecycleCallbacks here!"

    invoke-static {p2, p3, p1}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
