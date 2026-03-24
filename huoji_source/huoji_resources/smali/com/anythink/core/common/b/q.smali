.class public Lcom/anythink/core/common/b/q;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile d:Lcom/anythink/core/common/b/q;


# instance fields
.field public final a:I

.field public b:Landroid/content/Context;

.field public c:I

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/anythink/core/common/b/q;->a:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/core/common/b/q;->c:I

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/anythink/core/common/b/q;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/b/q;->b:Landroid/content/Context;

    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/b/q;->b:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "UPLOAD_DATA_LEVEL"

    invoke-static {p1, v1, v2, v0}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/b/q;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/common/b/q;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/b/q;->d:Lcom/anythink/core/common/b/q;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/b/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/b/q;->d:Lcom/anythink/core/common/b/q;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/b/q;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/q;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/b/q;->d:Lcom/anythink/core/common/b/q;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/anythink/core/common/b/q;->d:Lcom/anythink/core/common/b/q;

    return-object p0
.end method

.method public static synthetic a(Lcom/anythink/core/common/b/q;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/anythink/core/common/b/q;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/b/q;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 3

    iput p1, p0, Lcom/anythink/core/common/b/q;->c:I

    iget-object v0, p0, Lcom/anythink/core/common/b/q;->b:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "UPLOAD_DATA_LEVEL"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V
    .locals 2

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/q$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/core/common/b/q$1;-><init>(Lcom/anythink/core/common/b/q;Lcom/anythink/core/api/ATGDPRAuthCallback;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/api/NetTrafficeCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/b/q;->b:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "EU_INFO"

    const/16 v3, -0x64

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_0

    new-instance v0, Lcom/anythink/core/common/h/j;

    invoke-direct {v0}, Lcom/anythink/core/common/h/j;-><init>()V

    new-instance v2, Lcom/anythink/core/common/b/q$2;

    invoke-direct {v2, p0, p1}, Lcom/anythink/core/common/b/q$2;-><init>(Lcom/anythink/core/common/b/q;Lcom/anythink/core/api/NetTrafficeCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/h/a;->a(ILcom/anythink/core/common/h/k;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    :cond_2
    return-void
.end method

.method public final b(I)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/q$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/b/q$3;-><init>(Lcom/anythink/core/common/b/q;I)V

    const/16 p1, 0xd

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/core/common/o/b/b;->a(Ljava/lang/Runnable;IZ)V

    return-void
.end method

.method public final b()Z
    .locals 5

    iget-object v0, p0, Lcom/anythink/core/common/b/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->I()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->Y()I

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    iget v3, p0, Lcom/anythink/core/common/b/q;->c:I

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->W()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->V()I

    move-result v3

    :cond_2
    if-nez v3, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    iget v0, p0, Lcom/anythink/core/common/b/q;->c:I

    if-ne v0, v2, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public final c()Z
    .locals 5

    iget-object v0, p0, Lcom/anythink/core/common/b/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->I()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/anythink/core/common/b/q;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->Y()I

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->W()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->V()I

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    iget v3, p0, Lcom/anythink/core/common/b/q;->c:I

    if-nez v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->Y()I

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    :goto_0
    iget v0, p0, Lcom/anythink/core/common/b/q;->c:I

    if-ne v0, v2, :cond_8

    return v1

    :cond_8
    return v2
.end method

.method public final c(I)Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/core/common/b/q;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/core/common/b/q;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lcom/anythink/core/common/b/q;->b:Landroid/content/Context;

    const-string v1, "anythink_sdk"

    const-string v2, "EU_INFO"

    const/16 v3, -0x64

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/o/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
