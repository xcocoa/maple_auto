.class public final Lcom/anythink/core/b/h$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/MediationBidManager$BidListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/h;->a(Lcom/anythink/core/b/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/b/b/b;

.field public final synthetic b:Lcom/anythink/core/b/h;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/h;Lcom/anythink/core/b/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/b/h$1;->b:Lcom/anythink/core/b/h;

    iput-object p2, p0, Lcom/anythink/core/b/h$1;->a:Lcom/anythink/core/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBidFail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onBidStart(Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/b/h$1;->a:Lcom/anythink/core/b/b/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/anythink/core/b/b/b;->a(Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    :cond_0
    return-void
.end method

.method public final onBidSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/anythink/core/b/h$1;->b:Lcom/anythink/core/b/h;

    invoke-static {v0, p1}, Lcom/anythink/core/b/h;->a(Lcom/anythink/core/b/h;Ljava/util/List;)V

    return-void
.end method
