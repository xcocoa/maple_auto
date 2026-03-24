.class public Lcom/anythink/basead/d/g;
.super Lcom/anythink/basead/d/b;
.source ""


# static fields
.field private static final l:Ljava/lang/String; = "g"


# instance fields
.field public a:Lcom/anythink/basead/ui/BaseSplashATView;

.field public k:Z

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/d/b;-><init>(Landroid/content/Context;Lcom/anythink/basead/d/b$b;Lcom/anythink/core/common/f/m;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/basead/d/g;->m:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/anythink/basead/d/b;->a(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/anythink/basead/d/g;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/anythink/basead/d/g;->m:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/anythink/basead/d/g;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/d/g;->k:Z

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-super {p0}, Lcom/anythink/basead/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anythink/core/common/o/x;->a(Z)V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/d/g$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/d/g$1;-><init>(Lcom/anythink/basead/d/g;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/BaseSplashATView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/d/g;->a:Lcom/anythink/basead/ui/BaseSplashATView;

    :cond_0
    iget-object v0, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/anythink/expressad/splash/d/c;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/anythink/expressad/splash/d/c;

    invoke-virtual {v0}, Lcom/anythink/expressad/splash/d/c;->g()V

    :cond_1
    return-void
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/anythink/basead/d/b;->f:Lcom/anythink/core/common/a/i;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
