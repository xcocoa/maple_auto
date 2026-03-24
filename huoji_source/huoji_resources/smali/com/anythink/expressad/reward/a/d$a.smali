.class public final Lcom/anythink/expressad/reward/a/d$a;
.super Lcom/anythink/expressad/atsignalcommon/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Lcom/anythink/expressad/reward/a/d;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/anythink/expressad/videocommon/a$a;

.field private f:Lcom/anythink/expressad/foundation/d/c;

.field private g:Z

.field private h:Z

.field private i:Lcom/anythink/expressad/reward/a/d$g;

.field private j:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$g;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/a/a;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$a;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/reward/a/d$a;->e:Lcom/anythink/expressad/videocommon/a$a;

    if-eqz p5, :cond_0

    iput-object p5, p0, Lcom/anythink/expressad/reward/a/d$a;->b:Lcom/anythink/expressad/reward/a/d;

    :cond_0
    iput-object p4, p0, Lcom/anythink/expressad/reward/a/d$a;->f:Lcom/anythink/expressad/foundation/d/c;

    iput-object p6, p0, Lcom/anythink/expressad/reward/a/d$a;->i:Lcom/anythink/expressad/reward/a/d$g;

    iput-object p7, p0, Lcom/anythink/expressad/reward/a/d$a;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/anythink/expressad/videocommon/b/i;->a()Lcom/anythink/expressad/videocommon/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/expressad/videocommon/b/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/a;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/anythink/expressad/reward/a/d$a;->g:Z

    if-nez p2, :cond_0

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    invoke-static {p1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->b(Landroid/webkit/WebView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d$a;->g:Z

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/atsignalcommon/a/a;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$a;->b:Lcom/anythink/expressad/reward/a/d;

    if-eqz p1, :cond_0

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$a;->b:Lcom/anythink/expressad/reward/a/d;

    invoke-static {p2, p3, p4}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$a;->b:Lcom/anythink/expressad/reward/a/d;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public final readyState(Landroid/webkit/WebView;I)V
    .locals 1

    iget-boolean p1, p0, Lcom/anythink/expressad/reward/a/d$a;->h:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$a;->i:Lcom/anythink/expressad/reward/a/d$g;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$a;->j:Landroid/os/Handler;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$a;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$a;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$a;->e:Lcom/anythink/expressad/videocommon/a$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/anythink/expressad/videocommon/a$a;->a(Z)V

    :cond_1
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d$a;->h:Z

    :cond_2
    return-void
.end method
