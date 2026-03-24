.class public final Lcom/anythink/china/common/a/a/a$1;
.super Lcom/anythink/core/common/o/b/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a/a/a;->b(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/anythink/china/common/a/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/china/common/a/a/a;Ljava/lang/Runnable;)V
    .locals 2

    iput-object p1, p0, Lcom/anythink/china/common/a/a/a$1;->c:Lcom/anythink/china/common/a/a/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/china/common/a/a/a$1;->a:J

    iput-object p2, p0, Lcom/anythink/china/common/a/a/a$1;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/anythink/core/common/o/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    iget-wide v0, p0, Lcom/anythink/china/common/a/a/a$1;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "thread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/anythink/core/common/o/b/d;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/anythink/china/common/a/a/a$1;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
