.class public Lcom/octopus/ad/a/a$2;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/a/a;->e()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/a/a;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/octopus/ad/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/octopus/ad/a/a$2;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-wide v0, p0, Lcom/octopus/ad/a/a$2;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-virtual {p0}, Ljava/util/TimerTask;->scheduledExecutionTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-static {v2}, Lcom/octopus/ad/a/a;->b(Lcom/octopus/ad/a/a;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-static {v4}, Lcom/octopus/ad/a/a;->c(Lcom/octopus/ad/a/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/octopus/ad/a/a$2;->b:J

    iget-object v0, p0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-static {v0}, Lcom/octopus/ad/a/a;->d(Lcom/octopus/ad/a/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/a/a$2$1;

    invoke-direct {v1, p0}, Lcom/octopus/ad/a/a$2$1;-><init>(Lcom/octopus/ad/a/a$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-static {v0}, Lcom/octopus/ad/a/a;->b(Lcom/octopus/ad/a/a;)J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/TimerTask;->scheduledExecutionTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/octopus/ad/a/a$2;->b:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v0, v4, v5}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/a;J)J

    iget-object v0, p0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-static {v0}, Lcom/octopus/ad/a/a;->d(Lcom/octopus/ad/a/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/a/a$2$2;

    invoke-direct {v1, p0}, Lcom/octopus/ad/a/a$2$2;-><init>(Lcom/octopus/ad/a/a$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    invoke-static {v0}, Lcom/octopus/ad/a/a;->c(Lcom/octopus/ad/a/a;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/a/a$2;->a:Lcom/octopus/ad/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/octopus/ad/a/a;->a(Lcom/octopus/ad/a/a;Z)V

    :cond_1
    :goto_0
    return-void
.end method
