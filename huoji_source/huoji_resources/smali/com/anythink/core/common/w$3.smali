.class public final Lcom/anythink/core/common/w$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/l/d;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/core/common/l/e;

.field public final synthetic c:Lcom/anythink/core/common/w;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/w;Ljava/lang/String;Lcom/anythink/core/common/l/e;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/w$3;->c:Lcom/anythink/core/common/w;

    iput-object p2, p0, Lcom/anythink/core/common/w$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/core/common/w$3;->b:Lcom/anythink/core/common/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/w$3;->c:Lcom/anythink/core/common/w;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/w;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "placementLoadResultEntry, preloadWhenSameFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/w$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/anythink/core/common/w$3;->c:Lcom/anythink/core/common/w;

    iget-object v2, p0, Lcom/anythink/core/common/w$3;->b:Lcom/anythink/core/common/l/e;

    iget-object v3, v2, Lcom/anythink/core/common/l/e;->b:Ljava/lang/String;

    iget v2, v2, Lcom/anythink/core/common/l/e;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/w;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/w$3;->c:Lcom/anythink/core/common/w;

    iget-object v2, p0, Lcom/anythink/core/common/w$3;->b:Lcom/anythink/core/common/l/e;

    invoke-static {v1, v2}, Lcom/anythink/core/common/w;->b(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/e;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
