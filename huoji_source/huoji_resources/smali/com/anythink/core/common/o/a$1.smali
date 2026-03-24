.class public final Lcom/anythink/core/common/o/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/m/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/o/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/o/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/o/a$1;->a:Lcom/anythink/core/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/o/a$1;->a:Lcom/anythink/core/common/o/a;

    invoke-static {v0}, Lcom/anythink/core/common/o/a;->a(Lcom/anythink/core/common/o/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/core/common/o/a$1;->a:Lcom/anythink/core/common/o/a;

    invoke-static {v0}, Lcom/anythink/core/common/o/a;->b(Lcom/anythink/core/common/o/a;)Z

    iget-object v0, p0, Lcom/anythink/core/common/o/a$1;->a:Lcom/anythink/core/common/o/a;

    invoke-virtual {v0}, Lcom/anythink/core/common/o/a;->b()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
