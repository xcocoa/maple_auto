.class public final Lcom/anythink/expressad/exoplayer/l/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/exoplayer/l/f$b;,
        Lcom/anythink/expressad/exoplayer/l/f$a;
    }
.end annotation


# static fields
.field private static final a:J = 0x1f4L

.field private static final b:J = 0x1312d00L

.field private static final c:J = 0x50L

.field private static final d:I = 0x6


# instance fields
.field private final e:Landroid/view/WindowManager;

.field private final f:Lcom/anythink/expressad/exoplayer/l/f$b;

.field private final g:Lcom/anythink/expressad/exoplayer/l/f$a;

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Z

.field private n:J

.field private o:J

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/expressad/exoplayer/l/f;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/anythink/expressad/exoplayer/l/f;->e:Landroid/view/WindowManager;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->e:Landroid/view/WindowManager;

    :goto_0
    iget-object v1, p0, Lcom/anythink/expressad/exoplayer/l/f;->e:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    sget v1, Lcom/anythink/expressad/exoplayer/k/af;->a:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/anythink/expressad/exoplayer/l/f$a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/exoplayer/l/f$a;-><init>(Lcom/anythink/expressad/exoplayer/l/f;Landroid/hardware/display/DisplayManager;)V

    :cond_1
    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->g:Lcom/anythink/expressad/exoplayer/l/f$a;

    invoke-static {}, Lcom/anythink/expressad/exoplayer/l/f$b;->a()Lcom/anythink/expressad/exoplayer/l/f$b;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/l/f;->f:Lcom/anythink/expressad/exoplayer/l/f$b;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->g:Lcom/anythink/expressad/exoplayer/l/f$a;

    iput-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->f:Lcom/anythink/expressad/exoplayer/l/f$b;

    :goto_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->h:J

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->i:J

    return-void
.end method

.method private static a(JJJ)J
    .locals 5

    sub-long v0, p0, p2

    div-long/2addr v0, p4

    mul-long v0, v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    sub-long p4, p2, p4

    goto :goto_0

    :cond_0
    add-long/2addr p4, p2

    move-wide v3, p2

    move-wide p2, p4

    move-wide p4, v3

    :goto_0
    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    return-wide p2

    :cond_1
    return-wide p4
.end method

.method private a(Landroid/content/Context;)Lcom/anythink/expressad/exoplayer/l/f$a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/anythink/expressad/exoplayer/l/f$a;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/exoplayer/l/f$a;-><init>(Lcom/anythink/expressad/exoplayer/l/f;Landroid/hardware/display/DisplayManager;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/l/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/l/f;->c()V

    return-void
.end method

.method private b(JJ)Z
    .locals 2

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->o:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->n:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->e:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->h:J

    const-wide/16 v2, 0x50

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(JJ)J
    .locals 10

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p1

    iget-boolean v2, p0, Lcom/anythink/expressad/exoplayer/l/f;->m:Z

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/l/f;->j:J

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/l/f;->p:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/l/f;->p:J

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/l/f;->l:J

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/l/f;->k:J

    :cond_0
    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/l/f;->p:J

    const-wide/16 v4, 0x6

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_2

    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/l/f;->o:J

    sub-long v4, v0, v4

    div-long/2addr v4, v2

    iget-wide v2, p0, Lcom/anythink/expressad/exoplayer/l/f;->k:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/anythink/expressad/exoplayer/l/f;->b(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/anythink/expressad/exoplayer/l/f;->n:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lcom/anythink/expressad/exoplayer/l/f;->o:J

    sub-long/2addr v4, v6

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/anythink/expressad/exoplayer/l/f;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iput-boolean v6, p0, Lcom/anythink/expressad/exoplayer/l/f;->m:Z

    :cond_3
    move-wide v4, p3

    move-wide v2, v0

    :goto_1
    iget-boolean v6, p0, Lcom/anythink/expressad/exoplayer/l/f;->m:Z

    if-nez v6, :cond_4

    iput-wide v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->o:J

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/l/f;->n:J

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/anythink/expressad/exoplayer/l/f;->p:J

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/anythink/expressad/exoplayer/l/f;->m:Z

    :cond_4
    iput-wide p1, p0, Lcom/anythink/expressad/exoplayer/l/f;->j:J

    iput-wide v2, p0, Lcom/anythink/expressad/exoplayer/l/f;->l:J

    iget-object p1, p0, Lcom/anythink/expressad/exoplayer/l/f;->f:Lcom/anythink/expressad/exoplayer/l/f$b;

    if-eqz p1, :cond_9

    iget-wide p2, p0, Lcom/anythink/expressad/exoplayer/l/f;->h:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, p2, v0

    if-nez p4, :cond_5

    goto :goto_4

    :cond_5
    iget-wide p1, p1, Lcom/anythink/expressad/exoplayer/l/f$b;->a:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_6

    return-wide v4

    :cond_6
    iget-wide p3, p0, Lcom/anythink/expressad/exoplayer/l/f;->h:J

    sub-long v0, v4, p1

    div-long/2addr v0, p3

    mul-long v0, v0, p3

    add-long/2addr p1, v0

    cmp-long v0, v4, p1

    if-gtz v0, :cond_7

    sub-long p3, p1, p3

    goto :goto_2

    :cond_7
    add-long/2addr p3, p1

    move-wide v8, p1

    move-wide p1, p3

    move-wide p3, v8

    :goto_2
    sub-long v0, p1, v4

    sub-long/2addr v4, p3

    cmp-long v2, v0, v4

    if-gez v2, :cond_8

    goto :goto_3

    :cond_8
    move-wide p1, p3

    :goto_3
    iget-wide p3, p0, Lcom/anythink/expressad/exoplayer/l/f;->i:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_9
    :goto_4
    return-wide v4
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->m:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->e:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->f:Lcom/anythink/expressad/exoplayer/l/f$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/l/f$b;->b()V

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->g:Lcom/anythink/expressad/exoplayer/l/f$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/l/f$a;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/anythink/expressad/exoplayer/l/f;->c()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->e:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->g:Lcom/anythink/expressad/exoplayer/l/f$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/l/f$a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/l/f;->f:Lcom/anythink/expressad/exoplayer/l/f$b;

    invoke-virtual {v0}, Lcom/anythink/expressad/exoplayer/l/f$b;->c()V

    :cond_1
    return-void
.end method
