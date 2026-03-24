.class public final Lcom/anythink/expressad/f/a/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/f/a/b$a;
    }
.end annotation


# static fields
.field private static final a:J = 0x3e8L


# instance fields
.field private b:J

.field private c:J

.field private d:Lcom/anythink/expressad/f/a/a;

.field private e:Lcom/anythink/expressad/f/a/b$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/f/a/b;->b:J

    return-void
.end method

.method private a(J)Lcom/anythink/expressad/f/a/b;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, 0x3e8

    :cond_0
    iput-wide p1, p0, Lcom/anythink/expressad/f/a/b;->c:J

    return-object p0
.end method

.method private a(Lcom/anythink/expressad/f/a/a;)Lcom/anythink/expressad/f/a/b;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/f/a/b;->d:Lcom/anythink/expressad/f/a/a;

    return-object p0
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/f/a/b;->e:Lcom/anythink/expressad/f/a/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/f/a/b;->e:Lcom/anythink/expressad/f/a/b$a;

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/f/a/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-wide v0, p0, Lcom/anythink/expressad/f/a/b;->b:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/f/a/b;->c:J

    :cond_1
    new-instance v0, Lcom/anythink/expressad/f/a/b$a;

    iget-wide v1, p0, Lcom/anythink/expressad/f/a/b;->b:J

    iget-wide v3, p0, Lcom/anythink/expressad/f/a/b;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/f/a/b$a;-><init>(JJ)V

    iput-object v0, p0, Lcom/anythink/expressad/f/a/b;->e:Lcom/anythink/expressad/f/a/b$a;

    iget-object v1, p0, Lcom/anythink/expressad/f/a/b;->d:Lcom/anythink/expressad/f/a/a;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/f/a/b$a;->a(Lcom/anythink/expressad/f/a/a;)V

    return-void
.end method

.method private b(J)Lcom/anythink/expressad/f/a/b;
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/f/a/b;->b:J

    return-object p0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/f/a/b;->e:Lcom/anythink/expressad/f/a/b$a;

    if-nez v0, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/f/a/b;->e:Lcom/anythink/expressad/f/a/b$a;

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/f/a/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-wide v0, p0, Lcom/anythink/expressad/f/a/b;->b:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/f/a/b;->c:J

    :cond_1
    new-instance v0, Lcom/anythink/expressad/f/a/b$a;

    iget-wide v1, p0, Lcom/anythink/expressad/f/a/b;->b:J

    iget-wide v3, p0, Lcom/anythink/expressad/f/a/b;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/f/a/b$a;-><init>(JJ)V

    iput-object v0, p0, Lcom/anythink/expressad/f/a/b;->e:Lcom/anythink/expressad/f/a/b$a;

    iget-object v1, p0, Lcom/anythink/expressad/f/a/b;->d:Lcom/anythink/expressad/f/a/a;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/f/a/b$a;->a(Lcom/anythink/expressad/f/a/a;)V

    :cond_2
    iget-object v0, p0, Lcom/anythink/expressad/f/a/b;->e:Lcom/anythink/expressad/f/a/b$a;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/f/a/b;->e:Lcom/anythink/expressad/f/a/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/f/a/b;->e:Lcom/anythink/expressad/f/a/b$a;

    :cond_0
    return-void
.end method
