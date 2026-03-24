.class public final Lcom/anythink/core/common/p/e$a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/p/e$a;->onAdCacheLoaded([Lcom/anythink/core/api/BaseAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Lcom/anythink/core/api/BaseAd;

.field public final synthetic b:Lcom/anythink/core/common/p/e$a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/p/e$a;[Lcom/anythink/core/api/BaseAd;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/p/e$a$2;->b:Lcom/anythink/core/common/p/e$a;

    iput-object p2, p0, Lcom/anythink/core/common/p/e$a$2;->a:[Lcom/anythink/core/api/BaseAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/p/e$a$2;->b:Lcom/anythink/core/common/p/e$a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/p/e$a$2;->b:Lcom/anythink/core/common/p/e$a;

    iget-object v2, v1, Lcom/anythink/core/common/p/e$a;->b:Lcom/anythink/core/common/p/e;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/anythink/core/common/p/e$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/anythink/core/common/p/e$a$2;->a:[Lcom/anythink/core/api/BaseAd;

    invoke-static {v2, v1, v3}, Lcom/anythink/core/common/p/e;->a(Lcom/anythink/core/common/p/e;Lcom/anythink/core/api/ATBaseAdAdapter;[Lcom/anythink/core/api/BaseAd;)V

    iget-object v1, p0, Lcom/anythink/core/common/p/e$a$2;->b:Lcom/anythink/core/common/p/e$a;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/anythink/core/common/p/e$a;->b:Lcom/anythink/core/common/p/e;

    iput-object v2, v1, Lcom/anythink/core/common/p/e$a;->a:Lcom/anythink/core/api/ATBaseAdAdapter;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
