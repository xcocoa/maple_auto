.class public final Lcom/anythink/expressad/foundation/g/i/a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/foundation/g/i/a;->a(Landroid/media/MediaPlayer;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/foundation/g/i/a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/foundation/g/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/foundation/g/i/a$1;->a:Lcom/anythink/expressad/foundation/g/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/foundation/g/i/a$1;->a:Lcom/anythink/expressad/foundation/g/i/a;

    iget-object v0, v0, Lcom/anythink/expressad/foundation/g/i/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/i/a$1;->a:Lcom/anythink/expressad/foundation/g/i/a;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/i/a;->a(Lcom/anythink/expressad/foundation/g/i/a;)Z

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/i/a$1;->a:Lcom/anythink/expressad/foundation/g/i/a;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/i/a;->b(Lcom/anythink/expressad/foundation/g/i/a;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/anythink/expressad/foundation/g/i/a$1;->a:Lcom/anythink/expressad/foundation/g/i/a;

    invoke-static {v1}, Lcom/anythink/expressad/foundation/g/i/a;->b(Lcom/anythink/expressad/foundation/g/i/a;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
