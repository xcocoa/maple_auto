.class public final Lcom/anythink/core/common/b/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public a:I

.field public b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/b/f;->c:Z

    iput-boolean v0, p0, Lcom/anythink/core/common/b/f;->d:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/anythink/core/common/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/core/common/b/f;->d:Z

    invoke-static {}, Lcom/anythink/core/common/b/f;->a()V

    :cond_0
    return-void
.end method

.method private static a()V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/n/e;->a()V

    new-instance v0, Lcom/anythink/core/common/f/h;

    invoke-direct {v0}, Lcom/anythink/core/common/f/h;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/n/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/n/c;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Lcom/anythink/core/common/n/c;->a(ILcom/anythink/core/common/f/au;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    iget-boolean p1, p0, Lcom/anythink/core/common/b/f;->d:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/core/common/b/f;->d:Z

    invoke-static {}, Lcom/anythink/core/common/b/f;->a()V

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/n;->a(Landroid/app/Activity;)V

    iget v0, p0, Lcom/anythink/core/common/b/f;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/core/common/b/f;->a:I

    iget-object v0, p0, Lcom/anythink/core/common/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/anythink/core/common/b/f;->a:I

    if-ne p1, v1, :cond_0

    iget-boolean p1, p0, Lcom/anythink/core/common/b/f;->d:Z

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/anythink/core/common/b/f;->d:Z

    invoke-static {}, Lcom/anythink/core/common/b/f;->a()V

    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget v0, p0, Lcom/anythink/core/common/b/f;->a:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/anythink/core/common/b/f;->a:I

    iget-object v0, p0, Lcom/anythink/core/common/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/anythink/core/common/b/f;->c:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/anythink/core/common/b/f;->c:Z

    iget v2, p0, Lcom/anythink/core/common/b/f;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/anythink/core/common/b/f;->a:I

    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/core/common/b/f;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :cond_1
    :goto_0
    iget p1, p0, Lcom/anythink/core/common/b/f;->a:I

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/core/common/b/f;->d:Z

    :cond_2
    return-void
.end method
