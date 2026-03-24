.class public Lmobi/oneway/export/e/d;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/oneway/export/e/d$a;
    }
.end annotation


# instance fields
.field private a:Lmobi/oneway/export/e/d$a;

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method public constructor <init>(Lmobi/oneway/export/e/d$a;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lmobi/oneway/export/e/d;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/e/d;->d:Z

    iput-object p1, p0, Lmobi/oneway/export/e/d;->a:Lmobi/oneway/export/e/d$a;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    iput-wide p2, p0, Lmobi/oneway/export/e/d;->b:J

    :cond_0
    return-void
.end method

.method public static synthetic a(Lmobi/oneway/export/e/d;)Lmobi/oneway/export/e/d$a;
    .locals 0

    iget-object p0, p0, Lmobi/oneway/export/e/d;->a:Lmobi/oneway/export/e/d$a;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/oneway/export/e/d;->c:J

    :cond_0
    :goto_0
    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/e/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmobi/oneway/export/e/d;->d:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmobi/oneway/export/e/d;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lmobi/oneway/export/e/d;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/oneway/export/e/d;->d:Z

    iget-object v0, p0, Lmobi/oneway/export/e/d;->a:Lmobi/oneway/export/e/d$a;

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/oneway/export/e/b;->a()Lmobi/oneway/export/e/b;

    move-result-object v0

    new-instance v1, Lmobi/oneway/export/e/d$1;

    invoke-direct {v1, p0}, Lmobi/oneway/export/e/d$1;-><init>(Lmobi/oneway/export/e/d;)V

    invoke-virtual {v0, v1}, Lmobi/oneway/export/e/b;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
