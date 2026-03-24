.class public final Lcom/anythink/core/common/w$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/w;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/anythink/core/common/w;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/w;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    iput-object p2, p0, Lcom/anythink/core/common/w$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    iget-object v2, p0, Lcom/anythink/core/common/w$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/w;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/anythink/core/common/w;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    invoke-static {v1}, Lcom/anythink/core/common/w;->a(Lcom/anythink/core/common/w;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/w$4;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/l/e;

    iget-object v2, p0, Lcom/anythink/core/common/w$4;->b:Lcom/anythink/core/common/w;

    invoke-static {v2, v1}, Lcom/anythink/core/common/w;->c(Lcom/anythink/core/common/w;Lcom/anythink/core/common/l/e;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/anythink/core/common/w;->a:Ljava/lang/String;

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
