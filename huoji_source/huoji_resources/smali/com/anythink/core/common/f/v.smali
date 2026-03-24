.class public final Lcom/anythink/core/common/f/v;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/anythink/core/api/ATMediationRequestInfo;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Lcom/anythink/core/common/b/b;

.field public f:Lcom/anythink/core/common/n;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Lcom/anythink/core/common/f/c;

.field public j:Z

.field public k:J

.field public l:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

.field private m:Landroid/content/Context;

.field private n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/f/v;->j:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f/v;->k:J

    return-void
.end method

.method private d()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/v;->d:I

    return v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/f/v;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->F()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/anythink/core/common/f/v;->m:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f/v;->m:Landroid/content/Context;

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/common/f/v;->n:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final b()Lcom/anythink/core/common/f/v;
    .locals 2

    new-instance v0, Lcom/anythink/core/common/f/v;

    invoke-direct {v0}, Lcom/anythink/core/common/f/v;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/f/v;->b:Lcom/anythink/core/api/ATMediationRequestInfo;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->b:Lcom/anythink/core/api/ATMediationRequestInfo;

    iget-object v1, p0, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/anythink/core/common/f/v;->m:Landroid/content/Context;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/f/v;->n:Ljava/lang/ref/WeakReference;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->n:Ljava/lang/ref/WeakReference;

    iget v1, p0, Lcom/anythink/core/common/f/v;->d:I

    iput v1, v0, Lcom/anythink/core/common/f/v;->d:I

    iget-object v1, p0, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->e:Lcom/anythink/core/common/b/b;

    iget-object v1, p0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->f:Lcom/anythink/core/common/n;

    iget-object v1, p0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    iput-object v1, v0, Lcom/anythink/core/common/f/v;->g:Ljava/util/Map;

    iget v1, p0, Lcom/anythink/core/common/f/v;->h:I

    iput v1, v0, Lcom/anythink/core/common/f/v;->h:I

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/anythink/core/common/f/v;->d:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
