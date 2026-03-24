.class public final Lcom/anythink/basead/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/f/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/b;->a(Lcom/anythink/core/common/f/l;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/l;

.field private b:Lcom/anythink/basead/c/i;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/f/l;)V
    .locals 2

    iput-object p1, p0, Lcom/anythink/basead/b$1;->a:Lcom/anythink/core/common/f/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/anythink/basead/c/i;

    invoke-virtual {p1}, Lcom/anythink/core/common/f/l;->n()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/anythink/basead/c/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/basead/b$1;->b:Lcom/anythink/basead/c/i;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/basead/b$1;->b:Lcom/anythink/basead/c/i;

    iput-object p1, v0, Lcom/anythink/basead/c/i;->l:Ljava/util/Map;

    iget-object p1, p0, Lcom/anythink/basead/b$1;->a:Lcom/anythink/core/common/f/l;

    const/16 v1, 0xa

    invoke-static {v1, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/b$1;->a:Lcom/anythink/core/common/f/l;

    check-cast v0, Lcom/anythink/core/common/f/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/f/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/anythink/core/common/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/basead/b$1;->b:Lcom/anythink/basead/c/i;

    iput-object p1, v0, Lcom/anythink/basead/c/i;->l:Ljava/util/Map;

    iget-object p1, p0, Lcom/anythink/basead/b$1;->a:Lcom/anythink/core/common/f/l;

    const/16 v1, 0x24

    invoke-static {v1, p1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/f/l;Lcom/anythink/basead/c/i;)V

    return-void
.end method
