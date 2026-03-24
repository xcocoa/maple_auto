.class public final Lcom/anythink/expressad/video/dynview/i/c/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/video/dynview/i/c/b$a;
    }
.end annotation


# static fields
.field private static final a:J = 0x3e8L


# instance fields
.field private b:J

.field private c:J

.field private d:Lcom/anythink/expressad/video/dynview/i/c/a;

.field private e:Lcom/anythink/expressad/video/dynview/i/c/b$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->b:J

    return-void
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->e:Lcom/anythink/expressad/video/dynview/i/c/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->e:Lcom/anythink/expressad/video/dynview/i/c/b$a;

    :cond_0
    iget-wide v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-wide v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->b:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->c:J

    :cond_1
    new-instance v0, Lcom/anythink/expressad/video/dynview/i/c/b$a;

    iget-wide v1, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->b:J

    iget-wide v3, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/anythink/expressad/video/dynview/i/c/b$a;-><init>(JJ)V

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->e:Lcom/anythink/expressad/video/dynview/i/c/b$a;

    iget-object v1, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->d:Lcom/anythink/expressad/video/dynview/i/c/a;

    invoke-virtual {v0, v1}, Lcom/anythink/expressad/video/dynview/i/c/b$a;->a(Lcom/anythink/expressad/video/dynview/i/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/anythink/expressad/video/dynview/i/c/b;
    .locals 2

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->c:J

    return-object p0
.end method

.method public final a(J)Lcom/anythink/expressad/video/dynview/i/c/b;
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->b:J

    return-object p0
.end method

.method public final a(Lcom/anythink/expressad/video/dynview/i/c/a;)Lcom/anythink/expressad/video/dynview/i/c/b;
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->d:Lcom/anythink/expressad/video/dynview/i/c/a;

    return-object p0
.end method

.method public final a(JLcom/anythink/expressad/video/dynview/i/c/a;)V
    .locals 0

    iput-wide p1, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->b:J

    iput-object p3, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->d:Lcom/anythink/expressad/video/dynview/i/c/a;

    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/i/c/b;->d()V

    iget-object p1, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->e:Lcom/anythink/expressad/video/dynview/i/c/b$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->e:Lcom/anythink/expressad/video/dynview/i/c/b$a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/video/dynview/i/c/b;->d()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->e:Lcom/anythink/expressad/video/dynview/i/c/b$a;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->e:Lcom/anythink/expressad/video/dynview/i/c/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/video/dynview/i/c/b;->e:Lcom/anythink/expressad/video/dynview/i/c/b$a;

    :cond_0
    return-void
.end method
