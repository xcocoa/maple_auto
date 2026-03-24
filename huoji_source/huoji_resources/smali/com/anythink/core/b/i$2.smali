.class public final Lcom/anythink/core/b/i$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/ATBidRequestInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/i;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/f/av;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/f/av;

.field public final synthetic b:Lcom/anythink/core/b/i;


# direct methods
.method public constructor <init>(Lcom/anythink/core/b/i;Lcom/anythink/core/common/f/av;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/b/i$2;->b:Lcom/anythink/core/b/i;

    iput-object p2, p0, Lcom/anythink/core/b/i$2;->a:Lcom/anythink/core/common/f/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/b/i$2;->b:Lcom/anythink/core/b/i;

    iget-object v0, v0, Lcom/anythink/core/b/i;->d:Lcom/anythink/core/b/i$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/core/b/i$2;->a:Lcom/anythink/core/common/f/av;

    invoke-interface {v0, p1, v1}, Lcom/anythink/core/b/i$a;->a(Ljava/lang/String;Lcom/anythink/core/common/f/av;)V

    :cond_0
    return-void
.end method

.method public final onSuccess(Lcom/anythink/core/api/ATBidRequestInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/b/i$2;->b:Lcom/anythink/core/b/i;

    iget-object v1, p0, Lcom/anythink/core/b/i$2;->a:Lcom/anythink/core/common/f/av;

    invoke-static {v0, v1, p1}, Lcom/anythink/core/b/i;->a(Lcom/anythink/core/b/i;Lcom/anythink/core/common/f/av;Lcom/anythink/core/api/ATBidRequestInfo;)V

    return-void
.end method
