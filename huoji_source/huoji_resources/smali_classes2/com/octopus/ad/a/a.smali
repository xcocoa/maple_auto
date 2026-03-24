.class public Lcom/octopus/ad/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Landroid/os/Handler;

.field private c:J

.field private d:J

.field private e:J

.field private f:Lcom/octopus/ad/a/b;

.field private g:Lcom/octopus/ad/a/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/octopus/ad/a/c;->c:Lcom/octopus/ad/a/c;

    iput-object v0, p0, Lcom/octopus/ad/a/a;->g:Lcom/octopus/ad/a/c;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/a/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/octopus/ad/a/c;->c:Lcom/octopus/ad/a/c;

    iput-object v0, p0, Lcom/octopus/ad/a/a;->g:Lcom/octopus/ad/a/c;

    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/a/a;->a(J)V

    invoke-direct {p0, p3, p4}, Lcom/octopus/ad/a/a;->b(J)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/octopus/ad/a/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/a/a;J)J
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/a/a;->e:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/octopus/ad/a/a;)Lcom/octopus/ad/a/b;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/a/a;->f:Lcom/octopus/ad/a/b;

    return-object p0
.end method

.method private a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/a/a;->c:J

    iput-wide p1, p0, Lcom/octopus/ad/a/a;->e:J

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/a/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/octopus/ad/a/a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/a/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/octopus/ad/a/a;->f()V

    sget-object v0, Lcom/octopus/ad/a/c;->c:Lcom/octopus/ad/a/c;

    iput-object v0, p0, Lcom/octopus/ad/a/a;->g:Lcom/octopus/ad/a/c;

    iget-object v0, p0, Lcom/octopus/ad/a/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/a/a$1;-><init>(Lcom/octopus/ad/a/a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/a/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/a/a;->c:J

    return-wide v0
.end method

.method private b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/octopus/ad/a/a;->d:J

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/a/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/octopus/ad/a/a;->e:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/octopus/ad/a/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/a/a;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/a/a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/octopus/ad/a/a;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/a/a;->a:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v0, p0, Lcom/octopus/ad/a/a;->a:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/a/a;->g:Lcom/octopus/ad/a/c;

    sget-object v1, Lcom/octopus/ad/a/c;->a:Lcom/octopus/ad/a/c;

    if-eq v0, v1, :cond_0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/octopus/ad/a/a;->a:Ljava/util/Timer;

    invoke-virtual {p0}, Lcom/octopus/ad/a/a;->e()Ljava/util/TimerTask;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/octopus/ad/a/a;->d:J

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    iput-object v1, p0, Lcom/octopus/ad/a/a;->g:Lcom/octopus/ad/a/c;

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/a/a;->f:Lcom/octopus/ad/a/b;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/a/a;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/a/a;->g:Lcom/octopus/ad/a/c;

    sget-object v1, Lcom/octopus/ad/a/c;->a:Lcom/octopus/ad/a/c;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/octopus/ad/a/a;->f()V

    sget-object v0, Lcom/octopus/ad/a/c;->b:Lcom/octopus/ad/a/c;

    iput-object v0, p0, Lcom/octopus/ad/a/a;->g:Lcom/octopus/ad/a/c;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/a/a;->g:Lcom/octopus/ad/a/c;

    sget-object v1, Lcom/octopus/ad/a/c;->b:Lcom/octopus/ad/a/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/octopus/ad/a/a;->a()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/octopus/ad/a/a;->a(Z)V

    return-void
.end method

.method public e()Ljava/util/TimerTask;
    .locals 1

    new-instance v0, Lcom/octopus/ad/a/a$2;

    invoke-direct {v0, p0}, Lcom/octopus/ad/a/a$2;-><init>(Lcom/octopus/ad/a/a;)V

    return-object v0
.end method
