.class public final Lcom/tramini/plugin/a/h/b/a$2;
.super Lcom/tramini/plugin/a/h/b/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/h/b/a;->a(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/tramini/plugin/a/h/b/a;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/a/h/b/a;JLjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/h/b/a$2;->c:Lcom/tramini/plugin/a/h/b/a;

    iput-wide p2, p0, Lcom/tramini/plugin/a/h/b/a$2;->a:J

    iput-object p4, p0, Lcom/tramini/plugin/a/h/b/a$2;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/tramini/plugin/a/h/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    :try_start_0
    iget-wide v0, p0, Lcom/tramini/plugin/a/h/b/a$2;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/tramini/plugin/a/h/b/a$2;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
