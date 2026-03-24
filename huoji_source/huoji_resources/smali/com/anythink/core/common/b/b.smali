.class public Lcom/anythink/core/common/b/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/anythink/core/api/ATAdSourceStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/anythink/core/api/ATAdSourceStatusListener;
    .locals 3

    iget-object v0, p0, Lcom/anythink/core/common/b/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/api/ATAdSourceStatusListener;

    if-nez v0, :cond_0

    const-string v1, "anythink"

    const-string v2, "ATAdSourceStatusListener had been released."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic a(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdSourceStatusListener;
    .locals 2

    iget-object p0, p0, Lcom/anythink/core/common/b/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/anythink/core/api/ATAdSourceStatusListener;

    if-nez p0, :cond_0

    const-string v0, "anythink"

    const-string v1, "ATAdSourceStatusListener had been released."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/anythink/core/api/ATAdSourceStatusListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/anythink/core/common/b/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/h;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/b$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/b/b$1;-><init>(Lcom/anythink/core/common/b/b;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/b$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/b/b$3;-><init>(Lcom/anythink/core/common/b/b;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/anythink/core/common/f/h;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/b$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/b/b$2;-><init>(Lcom/anythink/core/common/b/b;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/anythink/core/common/f/h;Lcom/anythink/core/api/AdError;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/b$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/core/common/b/b$6;-><init>(Lcom/anythink/core/common/b/b;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lcom/anythink/core/common/f/h;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/b$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/b/b$4;-><init>(Lcom/anythink/core/common/b/b;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Lcom/anythink/core/common/f/h;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/anythink/core/common/b/j;->a(Lcom/anythink/core/common/f/h;Lcom/anythink/core/common/b/d;)Lcom/anythink/core/common/b/j;

    move-result-object p1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/b$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/b/b$5;-><init>(Lcom/anythink/core/common/b/b;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
