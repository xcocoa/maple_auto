.class public Lcom/anythink/basead/f/d;
.super Lcom/anythink/basead/f/c;
.source ""


# static fields
.field public static final a:Ljava/lang/String; = "d"


# instance fields
.field private k:Lcom/anythink/basead/e/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/f/c;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/f/d;)Lcom/anythink/basead/e/j;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/f/d;->k:Lcom/anythink/basead/e/j;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/anythink/basead/f/c;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/anythink/basead/f/d;->k:Lcom/anythink/basead/e/j;

    if-eqz p1, :cond_0

    const-string p2, "30001"

    const-string v0, "context = null!"

    invoke-static {p2, v0}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "extra_request_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "extra_scenario"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_orientation"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/anythink/basead/f/c;->d:Lcom/anythink/core/common/f/m;

    iget-object v2, v2, Lcom/anythink/core/common/f/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/basead/f/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/anythink/basead/e/b;->a()Lcom/anythink/basead/e/b;

    move-result-object v2

    new-instance v3, Lcom/anythink/basead/f/d$1;

    invoke-direct {v3, p0, v1}, Lcom/anythink/basead/f/d$1;-><init>(Lcom/anythink/basead/f/d;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/anythink/basead/e/b;->a(Ljava/lang/String;Lcom/anythink/basead/e/b$b;)V

    new-instance v2, Lcom/anythink/core/basead/b/c;

    invoke-direct {v2}, Lcom/anythink/core/basead/b/c;-><init>()V

    iget-object v3, p0, Lcom/anythink/basead/f/c;->g:Lcom/anythink/core/common/f/z;

    iput-object v3, v2, Lcom/anythink/core/basead/b/c;->c:Lcom/anythink/core/common/f/l;

    iput-object v1, v2, Lcom/anythink/core/basead/b/c;->d:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, v2, Lcom/anythink/core/basead/b/c;->a:I

    iget-object v1, p0, Lcom/anythink/basead/f/c;->d:Lcom/anythink/core/common/f/m;

    iput-object v1, v2, Lcom/anythink/core/basead/b/c;->h:Lcom/anythink/core/common/f/m;

    iput p2, v2, Lcom/anythink/core/basead/b/c;->e:I

    iput-object v0, v2, Lcom/anythink/core/basead/b/c;->b:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/anythink/basead/ui/BaseATActivity;->a(Landroid/app/Activity;Lcom/anythink/core/basead/b/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p2, p0, Lcom/anythink/basead/f/d;->k:Lcom/anythink/basead/e/j;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-9999"

    invoke-static {v0, p1}, Lcom/anythink/basead/c/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/e;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/anythink/basead/e/a;->onShowFailed(Lcom/anythink/basead/c/e;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/anythink/basead/e/j;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/f/d;->k:Lcom/anythink/basead/e/j;

    return-void
.end method
