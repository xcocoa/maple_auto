.class public final Lcom/anythink/core/common/o/a/c$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/o/a/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/o/a/c;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/anythink/core/common/o/a/f$b;Lcom/anythink/core/common/o/a/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/o/a/c;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/o/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/o/a/c$1;->a:Lcom/anythink/core/common/o/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/anythink/core/common/o/a/c$1;->a:Lcom/anythink/core/common/o/a/c;

    invoke-static {v1}, Lcom/anythink/core/common/o/a/c;->a(Lcom/anythink/core/common/o/a/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/o/a/b;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/o/a/c$1;->a:Lcom/anythink/core/common/o/a/c;

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/o/a/c;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lcom/anythink/core/common/o/a/b;->recordImpression(Landroid/view/View;)V

    invoke-interface {v1}, Lcom/anythink/core/common/o/a/b;->setImpressionRecorded()V

    goto :goto_0

    :cond_1
    return-void
.end method
