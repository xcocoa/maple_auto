.class public final Lcom/anythink/core/common/o/b/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/core/common/o/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/o/b/a;


# direct methods
.method private constructor <init>(Lcom/anythink/core/common/o/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/o/b/a$a;->a:Lcom/anythink/core/common/o/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/anythink/core/common/o/b/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/anythink/core/common/o/b/a$a;-><init>(Lcom/anythink/core/common/o/b/a;)V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rejectedExecution() >>> called. executor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/core/common/o/b/a$a;->a:Lcom/anythink/core/common/o/b/a;

    invoke-static {p2}, Lcom/anythink/core/common/o/b/a;->a(Lcom/anythink/core/common/o/b/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
