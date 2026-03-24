.class public Lcom/anythink/core/common/m/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/common/m/a;


# static fields
.field private static final a:Ljava/lang/String; = "TimeOutHandlerImpl"

.field private static volatile b:Lcom/anythink/core/common/m/d;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/anythink/core/common/o/b/b;->a()Lcom/anythink/core/common/o/b/b;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o/b/b;->a(I)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/m/d;->d:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/anythink/core/common/m/d;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Z)Landroid/os/Handler;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/core/common/m/d;->c:Landroid/os/Handler;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/anythink/core/common/m/d;->d:Landroid/os/Handler;

    return-object p1
.end method

.method public static a()Lcom/anythink/core/common/m/a;
    .locals 2

    sget-object v0, Lcom/anythink/core/common/m/d;->b:Lcom/anythink/core/common/m/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/anythink/core/common/m/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/anythink/core/common/m/d;->b:Lcom/anythink/core/common/m/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/anythink/core/common/m/d;

    invoke-direct {v1}, Lcom/anythink/core/common/m/d;-><init>()V

    sput-object v1, Lcom/anythink/core/common/m/d;->b:Lcom/anythink/core/common/m/d;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/anythink/core/common/m/d;->b:Lcom/anythink/core/common/m/d;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/m/b;)V
    .locals 3

    const-wide/16 v0, 0xbb8

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/anythink/core/common/m/d;->a(Lcom/anythink/core/common/m/b;JZ)V

    return-void
.end method

.method public final a(Lcom/anythink/core/common/m/b;JZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendTimeOutMsg() >>> delayMillis="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " isMainThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/anythink/core/common/m/d;->a(Z)Landroid/os/Handler;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Lcom/anythink/core/common/m/b;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/core/common/m/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/core/common/m/d;->d:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
