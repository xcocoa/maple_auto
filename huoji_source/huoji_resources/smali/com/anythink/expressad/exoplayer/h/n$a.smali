.class public final Lcom/anythink/expressad/exoplayer/h/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/j/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/n;

.field private final b:Landroid/net/Uri;

.field private final c:Lcom/anythink/expressad/exoplayer/j/h;

.field private final d:Lcom/anythink/expressad/exoplayer/h/n$b;

.field private final e:Lcom/anythink/expressad/exoplayer/k/f;

.field private final f:Lcom/anythink/expressad/exoplayer/e/j;

.field private volatile g:Z

.field private h:Z

.field private i:J

.field private j:Lcom/anythink/expressad/exoplayer/j/k;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/n;Landroid/net/Uri;Lcom/anythink/expressad/exoplayer/j/h;Lcom/anythink/expressad/exoplayer/h/n$b;Lcom/anythink/expressad/exoplayer/k/f;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->b:Landroid/net/Uri;

    invoke-static {p3}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/j/h;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->c:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-static {p4}, Lcom/anythink/expressad/exoplayer/k/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/expressad/exoplayer/h/n$b;

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->d:Lcom/anythink/expressad/exoplayer/h/n$b;

    iput-object p5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->e:Lcom/anythink/expressad/exoplayer/k/f;

    new-instance p1, Lcom/anythink/expressad/exoplayer/e/j;

    invoke-direct {p1}, Lcom/anythink/expressad/exoplayer/e/j;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->f:Lcom/anythink/expressad/exoplayer/e/j;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->h:Z

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->k:J

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/h/n$a;)Lcom/anythink/expressad/exoplayer/j/k;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->j:Lcom/anythink/expressad/exoplayer/j/k;

    return-object p0
.end method

.method public static synthetic b(Lcom/anythink/expressad/exoplayer/h/n$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->i:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/anythink/expressad/exoplayer/h/n$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->l:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/anythink/expressad/exoplayer/h/n$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->k:J

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->g:Z

    return-void
.end method

.method public final a(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->f:Lcom/anythink/expressad/exoplayer/e/j;

    iput-wide p1, v0, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->i:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->h:Z

    return-void
.end method

.method public final b()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_5

    iget-boolean v2, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->g:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->f:Lcom/anythink/expressad/exoplayer/e/j;

    iget-wide v11, v4, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    new-instance v4, Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->b:Landroid/net/Uri;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-static {v6}, Lcom/anythink/expressad/exoplayer/h/n;->d(Lcom/anythink/expressad/exoplayer/h/n;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v11, v12, v6}, Lcom/anythink/expressad/exoplayer/j/k;-><init>(Landroid/net/Uri;JLjava/lang/String;)V

    iput-object v4, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->j:Lcom/anythink/expressad/exoplayer/j/k;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->c:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v5, v4}, Lcom/anythink/expressad/exoplayer/j/h;->a(Lcom/anythink/expressad/exoplayer/j/k;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->k:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    add-long/2addr v4, v11

    iput-wide v4, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->k:J

    :cond_0
    new-instance v4, Lcom/anythink/expressad/exoplayer/e/b;

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->c:Lcom/anythink/expressad/exoplayer/j/h;

    iget-wide v9, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->k:J

    move-object v5, v4

    move-wide v7, v11

    invoke-direct/range {v5 .. v10}, Lcom/anythink/expressad/exoplayer/e/b;-><init>(Lcom/anythink/expressad/exoplayer/j/h;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->d:Lcom/anythink/expressad/exoplayer/h/n$b;

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->c:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-interface {v5}, Lcom/anythink/expressad/exoplayer/j/h;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/anythink/expressad/exoplayer/h/n$b;->a(Lcom/anythink/expressad/exoplayer/e/f;Landroid/net/Uri;)Lcom/anythink/expressad/exoplayer/e/e;

    move-result-object v2

    iget-boolean v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->h:Z

    if-eqz v5, :cond_1

    iget-wide v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->i:J

    invoke-interface {v2, v11, v12, v5, v6}, Lcom/anythink/expressad/exoplayer/e/e;->a(JJ)V

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->h:Z

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-boolean v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->g:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->e:Lcom/anythink/expressad/exoplayer/k/f;

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/k/f;->c()V

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->f:Lcom/anythink/expressad/exoplayer/e/j;

    invoke-interface {v2, v4, v5}, Lcom/anythink/expressad/exoplayer/e/e;->a(Lcom/anythink/expressad/exoplayer/e/f;Lcom/anythink/expressad/exoplayer/e/j;)I

    move-result v1

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v5

    iget-object v7, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-static {v7}, Lcom/anythink/expressad/exoplayer/h/n;->e(Lcom/anythink/expressad/exoplayer/h/n;)J

    move-result-wide v7

    add-long/2addr v7, v11

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v11

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->e:Lcom/anythink/expressad/exoplayer/k/f;

    invoke-virtual {v5}, Lcom/anythink/expressad/exoplayer/k/f;->b()Z

    iget-object v5, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-static {v5}, Lcom/anythink/expressad/exoplayer/h/n;->g(Lcom/anythink/expressad/exoplayer/h/n;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->a:Lcom/anythink/expressad/exoplayer/h/n;

    invoke-static {v6}, Lcom/anythink/expressad/exoplayer/h/n;->f(Lcom/anythink/expressad/exoplayer/h/n;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->f:Lcom/anythink/expressad/exoplayer/e/j;

    invoke-interface {v4}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->f:Lcom/anythink/expressad/exoplayer/e/j;

    iget-wide v2, v2, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    iget-object v4, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->j:Lcom/anythink/expressad/exoplayer/j/k;

    iget-wide v4, v4, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->l:J

    :goto_2
    iget-object v2, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->c:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-static {v2}, Lcom/anythink/expressad/exoplayer/k/af;->a(Lcom/anythink/expressad/exoplayer/j/h;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eq v1, v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->f:Lcom/anythink/expressad/exoplayer/e/j;

    invoke-interface {v2}, Lcom/anythink/expressad/exoplayer/e/f;->c()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->f:Lcom/anythink/expressad/exoplayer/e/j;

    iget-wide v1, v1, Lcom/anythink/expressad/exoplayer/e/j;->a:J

    iget-object v3, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->j:Lcom/anythink/expressad/exoplayer/j/k;

    iget-wide v3, v3, Lcom/anythink/expressad/exoplayer/j/k;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->l:J

    :cond_4
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/h/n$a;->c:Lcom/anythink/expressad/exoplayer/j/h;

    invoke-static {v1}, Lcom/anythink/expressad/exoplayer/k/af;->a(Lcom/anythink/expressad/exoplayer/j/h;)V

    throw v0

    :cond_5
    return-void
.end method
