.class public final Lcom/anythink/china/b/a$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/china/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/b/a;->c(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/b/a$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/anythink/china/b/a$2;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/anythink/china/b/a$2;->c:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/china/b/a$2;->c:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/china/b/a$2;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/anythink/china/b/a$2;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Lcom/anythink/china/b/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/anythink/china/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lcom/anythink/china/b/a$2;->a:Landroid/content/Context;

    const-string v0, "anythink_sdk"

    const-string v1, "oaid"

    invoke-static {p2, v0, v1, p1}, Lcom/anythink/core/common/o/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/anythink/china/b/a$2;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcom/anythink/china/b/a$2;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_0
    iget-object p1, p0, Lcom/anythink/china/b/a$2;->c:[Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    aput-boolean v0, p1, p2

    return-void
.end method
