.class public final Lcom/tramini/plugin/a/f/f$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/f/f;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/tramini/plugin/a/f/f$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tramini/plugin/a/f/f$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tramini/plugin/a/f/f$1;->c:[Ljava/lang/String;

    iput p4, p0, Lcom/tramini/plugin/a/f/f$1;->d:I

    iput-object p5, p0, Lcom/tramini/plugin/a/f/f$1;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/a/f/f$1;->a:Ljava/lang/String;

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/h/a/a;

    iget-object v2, p0, Lcom/tramini/plugin/a/f/f$1;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tramini/plugin/a/h/a/a;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tramini/plugin/a/f/f$1;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/tramini/plugin/a/f/f$1;->d:I

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tramini/plugin/a/f/f$1;->e:Ljava/util/concurrent/ExecutorService;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v1, p0, Lcom/tramini/plugin/a/f/f$1;->e:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-void
.end method
