.class public final Lcom/anythink/core/common/o/a/f$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/o/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/o/a/f;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/o/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/o/a/f$c;->a:Lcom/anythink/core/common/o/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/o/a/f$c;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/o/a/f$c;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/anythink/core/common/o/a/f$c;->a:Lcom/anythink/core/common/o/a/f;

    invoke-static {v0}, Lcom/anythink/core/common/o/a/f;->a(Lcom/anythink/core/common/o/a/f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/common/o/a/f$a;

    iget v3, v3, Lcom/anythink/core/common/o/a/f$a;->a:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/o/a/f$a;

    iget v4, v4, Lcom/anythink/core/common/o/a/f$a;->b:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/core/common/o/a/f$a;

    iget-object v5, v5, Lcom/anythink/core/common/o/a/f$a;->e:Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/o/a/f$a;

    iget-object v1, v1, Lcom/anythink/core/common/o/a/f$a;->d:Landroid/view/View;

    iget-object v6, p0, Lcom/anythink/core/common/o/a/f$c;->a:Lcom/anythink/core/common/o/a/f;

    invoke-static {v6}, Lcom/anythink/core/common/o/a/f;->b(Lcom/anythink/core/common/o/a/f;)Lcom/anythink/core/common/o/a/f$b;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v3, v5}, Lcom/anythink/core/common/o/a/f$b;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/anythink/core/common/o/a/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/o/a/f$c;->a:Lcom/anythink/core/common/o/a/f;

    iget-object v2, v2, Lcom/anythink/core/common/o/a/f;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/anythink/core/common/o/a/f$c;->a:Lcom/anythink/core/common/o/a/f;

    invoke-static {v3}, Lcom/anythink/core/common/o/a/f;->b(Lcom/anythink/core/common/o/a/f;)Lcom/anythink/core/common/o/a/f$b;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/anythink/core/common/o/a/f$b;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/o/a/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/anythink/core/common/o/a/f$c;->a:Lcom/anythink/core/common/o/a/f;

    invoke-static {v0}, Lcom/anythink/core/common/o/a/f;->c(Lcom/anythink/core/common/o/a/f;)Lcom/anythink/core/common/o/a/f$d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/anythink/core/common/o/a/f$c;->a:Lcom/anythink/core/common/o/a/f;

    invoke-static {v0}, Lcom/anythink/core/common/o/a/f;->c(Lcom/anythink/core/common/o/a/f;)Lcom/anythink/core/common/o/a/f$d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/o/a/f$c;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/o/a/f$d;->a(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/anythink/core/common/o/a/f$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/anythink/core/common/o/a/f$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/anythink/core/common/o/a/f$c;->a:Lcom/anythink/core/common/o/a/f;

    invoke-static {v0}, Lcom/anythink/core/common/o/a/f;->d(Lcom/anythink/core/common/o/a/f;)Z

    return-void
.end method
