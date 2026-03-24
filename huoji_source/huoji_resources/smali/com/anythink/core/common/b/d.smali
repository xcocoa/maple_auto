.class public abstract Lcom/anythink/core/common/b/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public isRefresh:Z

.field public mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingInfo:Lcom/anythink/core/common/f/h;

.field private mUnitGroupInfo:Lcom/anythink/core/common/f/av;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTrackingInfo()Lcom/anythink/core/common/f/h;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/d;->mTrackingInfo:Lcom/anythink/core/common/f/h;

    return-object v0
.end method

.method public final getUnitGroupInfo()Lcom/anythink/core/common/f/av;
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/b/d;->mUnitGroupInfo:Lcom/anythink/core/common/f/av;

    return-object v0
.end method

.method public final isRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/anythink/core/common/b/d;->isRefresh:Z

    return v0
.end method

.method public final postOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postOnMainThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/anythink/core/common/b/n;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final refreshActivityContext(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/d;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final runOnNetworkRequestThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/common/o/b/b;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final setRefresh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/core/common/b/d;->isRefresh:Z

    return-void
.end method

.method public final setTrackingInfo(Lcom/anythink/core/common/f/h;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/d;->mTrackingInfo:Lcom/anythink/core/common/f/h;

    return-void
.end method

.method public final setUnitGroupInfo(Lcom/anythink/core/common/f/av;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/b/d;->mUnitGroupInfo:Lcom/anythink/core/common/f/av;

    return-void
.end method
