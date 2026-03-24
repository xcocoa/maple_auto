.class public final Lcom/anythink/core/b/b$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/b/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/b/b$2;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/b$2;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/b/b$2$1;->a:Lcom/anythink/core/b/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/b/b$2$1;->a:Lcom/anythink/core/b/b$2;

    iget-object v0, v0, Lcom/anythink/core/b/b$2;->c:Lcom/anythink/core/b/b;

    invoke-static {v0, p1, p2}, Lcom/anythink/core/b/b;->a(Lcom/anythink/core/b/b;Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    return-void
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/b/b$2$1;->a:Lcom/anythink/core/b/b$2;

    iget-object v1, v0, Lcom/anythink/core/b/b$2;->c:Lcom/anythink/core/b/b;

    iget-object v0, v0, Lcom/anythink/core/b/b$2;->b:Ljava/lang/Integer;

    invoke-static {v1, v0, p1, p2}, Lcom/anythink/core/b/b;->a(Lcom/anythink/core/b/b;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
