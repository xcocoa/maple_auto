.class public final Lcom/tramini/plugin/a/b/c$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/b/c;->b(Lcom/tramini/plugin/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tramini/plugin/b/b;

.field public final synthetic b:Lcom/tramini/plugin/a/b/c;


# direct methods
.method public constructor <init>(Lcom/tramini/plugin/a/b/c;Lcom/tramini/plugin/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/b/c$4;->b:Lcom/tramini/plugin/a/b/c;

    iput-object p2, p0, Lcom/tramini/plugin/a/b/c$4;->a:Lcom/tramini/plugin/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/a/b/c$4;->b:Lcom/tramini/plugin/a/b/c;

    invoke-static {v0}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/b/c;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tramini/plugin/a/b/c$4;->b:Lcom/tramini/plugin/a/b/c;

    invoke-static {v1}, Lcom/tramini/plugin/a/b/c;->b(Lcom/tramini/plugin/a/b/c;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tramini/plugin/a/b/c$4;->b:Lcom/tramini/plugin/a/b/c;

    invoke-static {v1}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/b/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tramini/plugin/a/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/tramini/plugin/a/b/c$4;->b:Lcom/tramini/plugin/a/b/c;

    invoke-static {v2}, Lcom/tramini/plugin/a/b/c;->b(Lcom/tramini/plugin/a/b/c;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tramini/plugin/a/b/b;->a(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/tramini/plugin/a/b/c$4;->b:Lcom/tramini/plugin/a/b/c;

    invoke-static {v1, v0}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/b/c;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/tramini/plugin/a/b/c$4;->b:Lcom/tramini/plugin/a/b/c;

    new-instance v2, Lcom/tramini/plugin/a/b;

    invoke-direct {v2}, Lcom/tramini/plugin/a/b;-><init>()V

    invoke-static {v1, v2}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/b/c;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v2, p0, Lcom/tramini/plugin/a/b/c$4;->a:Lcom/tramini/plugin/b/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/tramini/plugin/b/b;->e()Ljava/util/List;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tramini/plugin/a/b/c$4;->b:Lcom/tramini/plugin/a/b/c;

    invoke-static {v0}, Lcom/tramini/plugin/a/b/c;->a(Lcom/tramini/plugin/a/b/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/a/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/a/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/tramini/plugin/a/b/c$4;->b:Lcom/tramini/plugin/a/b/c;

    invoke-static {v2}, Lcom/tramini/plugin/a/b/c;->b(Lcom/tramini/plugin/a/b/c;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tramini/plugin/a/b/b;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-void
.end method
