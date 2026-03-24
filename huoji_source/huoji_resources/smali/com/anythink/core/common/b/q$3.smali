.class public final Lcom/anythink/core/common/b/q$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/q;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/core/common/b/q;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/b/q;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/q$3;->b:Lcom/anythink/core/common/b/q;

    iput p2, p0, Lcom/anythink/core/common/b/q$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/core/common/b/q$3;->b:Lcom/anythink/core/common/b/q;

    iget v1, p0, Lcom/anythink/core/common/b/q$3;->a:I

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/q;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/b/q;->a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v1

    iget v2, v0, Lcom/anythink/core/common/b/q;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->Y()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->K()I

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Lcom/anythink/core/common/b/q;->c:I

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->Y()I

    move-result v5

    iget v6, p0, Lcom/anythink/core/common/b/q$3;->a:I

    invoke-static {v4, v2, v5, v6}, Lcom/anythink/core/common/n/e;->a(IIII)V

    :cond_0
    iget v2, v0, Lcom/anythink/core/common/b/q;->c:I

    if-ne v2, v4, :cond_1

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->W()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->Y()I

    move-result v2

    if-nez v2, :cond_1

    iget v0, v0, Lcom/anythink/core/common/b/q;->c:I

    invoke-virtual {v1}, Lcom/anythink/core/d/a;->Y()I

    move-result v1

    iget v2, p0, Lcom/anythink/core/common/b/q$3;->a:I

    invoke-static {v3, v0, v1, v2}, Lcom/anythink/core/common/n/e;->a(IIII)V

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/b/q$3;->b:Lcom/anythink/core/common/b/q;

    invoke-static {v0}, Lcom/anythink/core/common/b/q;->a(Lcom/anythink/core/common/b/q;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/anythink/core/common/b/q$3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
