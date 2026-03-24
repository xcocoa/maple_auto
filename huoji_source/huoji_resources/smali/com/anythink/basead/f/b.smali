.class public final Lcom/anythink/basead/f/b;
.super Lcom/anythink/basead/f/c;
.source ""


# instance fields
.field public a:Lcom/anythink/basead/e/a;

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/anythink/basead/f/c;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Ljava/lang/String;Z)V

    const-class p1, Lcom/anythink/basead/f/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/f/b;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0
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

    return-void
.end method

.method public final a(Lcom/anythink/basead/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/f/b;->a:Lcom/anythink/basead/e/a;

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/anythink/basead/f/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/f/c;->g:Lcom/anythink/core/common/f/z;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/l;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/anythink/basead/ui/MraidBannerATView;

    iget-object v1, p0, Lcom/anythink/basead/f/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/f/c;->d:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/f/c;->g:Lcom/anythink/core/common/f/z;

    iget-object v4, p0, Lcom/anythink/basead/f/b;->a:Lcom/anythink/basead/e/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/MraidBannerATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/anythink/basead/ui/SdkBannerATView;

    iget-object v1, p0, Lcom/anythink/basead/f/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/basead/f/c;->d:Lcom/anythink/core/common/f/m;

    iget-object v3, p0, Lcom/anythink/basead/f/c;->g:Lcom/anythink/core/common/f/z;

    iget-object v4, p0, Lcom/anythink/basead/f/b;->a:Lcom/anythink/basead/e/a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/basead/ui/SdkBannerATView;-><init>(Landroid/content/Context;Lcom/anythink/core/common/f/m;Lcom/anythink/core/common/f/l;Lcom/anythink/basead/e/a;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/f/b;->a:Lcom/anythink/basead/e/a;

    return-void
.end method
