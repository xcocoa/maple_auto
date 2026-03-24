.class public final Lcom/anythink/core/common/w$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/core/common/w;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/w;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/w$a;->b:Lcom/anythink/core/common/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/core/common/w$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/w$a;->b:Lcom/anythink/core/common/w;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/w$a;->b:Lcom/anythink/core/common/w;

    iget-object v2, p0, Lcom/anythink/core/common/w$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/core/common/w$a;->b:Lcom/anythink/core/common/w;

    invoke-static {v1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/w;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/w$a;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/l/e;

    iget-object v2, p0, Lcom/anythink/core/common/w$a;->b:Lcom/anythink/core/common/w;

    invoke-static {v2, v1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/e;)V

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
