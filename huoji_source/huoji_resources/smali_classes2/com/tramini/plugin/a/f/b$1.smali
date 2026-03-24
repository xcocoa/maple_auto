.class public final Lcom/tramini/plugin/a/f/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/f/b;->a(Landroid/webkit/WebView;JJ)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Ljava/util/concurrent/ExecutorService;

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/util/concurrent/ExecutorService;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/f/b$1;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/tramini/plugin/a/f/b$1;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/tramini/plugin/a/f/b$1;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/a/f/b$1;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tramini/plugin/a/f/b$1;->b:Ljava/util/concurrent/ExecutorService;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/tramini/plugin/a/f/b$1;->b:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tramini/plugin/a/f/b$1;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/tramini/plugin/a/f/b$1$1;

    invoke-direct {v1, p0}, Lcom/tramini/plugin/a/f/b$1$1;-><init>(Lcom/tramini/plugin/a/f/b$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method
