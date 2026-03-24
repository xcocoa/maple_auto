.class public final Lcom/anythink/expressad/foundation/g/i/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Landroid/media/MediaPlayer;

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/anythink/expressad/foundation/g/i/a;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/expressad/foundation/g/i/a;->e:Z

    return-void
.end method

.method private a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/i/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/i/a;->f:Landroid/media/MediaPlayer$OnPreparedListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private a(Landroid/media/MediaPlayer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/i/a;->c:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lcom/anythink/expressad/foundation/g/i/a;->b:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/foundation/g/i/a;->d:Z

    iget-object p1, p0, Lcom/anythink/expressad/foundation/g/i/a;->c:Landroid/media/MediaPlayer;

    new-instance p2, Lcom/anythink/expressad/foundation/g/i/a$1;

    invoke-direct {p2, p0}, Lcom/anythink/expressad/foundation/g/i/a$1;-><init>(Lcom/anythink/expressad/foundation/g/i/a;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/foundation/g/i/a;->c:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/i/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/g/i/a;->d:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic a(Lcom/anythink/expressad/foundation/g/i/a;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/foundation/g/i/a;->e:Z

    return v0
.end method

.method public static synthetic b(Lcom/anythink/expressad/foundation/g/i/a;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/anythink/expressad/foundation/g/i/a;->f:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method private b()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/i/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/anythink/expressad/foundation/g/i/a;->e:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/i/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method private d()Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/i/a;->c:Landroid/media/MediaPlayer;

    return-object v0
.end method
