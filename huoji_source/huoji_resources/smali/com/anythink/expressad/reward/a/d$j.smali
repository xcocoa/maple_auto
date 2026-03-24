.class public final Lcom/anythink/expressad/reward/a/d$j;
.super Lcom/anythink/expressad/atsignalcommon/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:Lcom/anythink/expressad/reward/a/d;

.field private e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/anythink/expressad/videocommon/a$a;

.field private i:Lcom/anythink/expressad/foundation/d/c;

.field private j:Z

.field private k:Z

.field private l:Lcom/anythink/expressad/reward/a/d$h;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/expressad/videocommon/a$a;Lcom/anythink/expressad/foundation/d/c;Lcom/anythink/expressad/reward/a/d;Lcom/anythink/expressad/reward/a/d$h;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/expressad/atsignalcommon/a/b;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/reward/a/d$j;->e:Lcom/anythink/expressad/atsignalcommon/windvane/WindVaneWebView;

    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/expressad/reward/a/d$j;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/anythink/expressad/reward/a/d$j;->h:Lcom/anythink/expressad/videocommon/a$a;

    if-eqz p6, :cond_0

    iput-object p6, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    :cond_0
    iput-object p5, p0, Lcom/anythink/expressad/reward/a/d$j;->i:Lcom/anythink/expressad/foundation/d/c;

    iput-object p7, p0, Lcom/anythink/expressad/reward/a/d$j;->l:Lcom/anythink/expressad/reward/a/d$h;

    iput-object p8, p0, Lcom/anythink/expressad/reward/a/d$j;->m:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/anythink/expressad/atsignalcommon/a/b;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/anythink/expressad/reward/a/d$j;->j:Z

    if-nez p2, :cond_0

    invoke-static {}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->a()Lcom/anythink/expressad/atsignalcommon/windvane/j;

    invoke-static {p1}, Lcom/anythink/expressad/atsignalcommon/windvane/j;->b(Landroid/webkit/WebView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/a/d$j;->j:Z

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/anythink/expressad/atsignalcommon/a/b;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    if-eqz p1, :cond_0

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    invoke-static {p2, p3, p4}, Lcom/anythink/expressad/reward/a/d;->a(Lcom/anythink/expressad/reward/a/d;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

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
    .locals 2

    iget-boolean p1, p0, Lcom/anythink/expressad/reward/a/d$j;->k:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$j;->l:Lcom/anythink/expressad/reward/a/d$h;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->m:Landroid/os/Handler;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->h:Lcom/anythink/expressad/videocommon/a$a;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/anythink/expressad/videocommon/a$a;->a(Z)V

    :cond_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "unitid"

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$j;->g:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/anythink/expressad/videocommon/b/l;->a()Lcom/anythink/expressad/videocommon/b/l;

    move-result-object p1

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/anythink/expressad/videocommon/b/l;->c(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/anythink/expressad/reward/a/d;->m(Lcom/anythink/expressad/reward/a/d;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$j;->i:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x11f

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$j;->i:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p1}, Lcom/anythink/expressad/foundation/d/c;->A()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x5e

    :goto_1
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->i:Lcom/anythink/expressad/foundation/d/c;

    invoke-virtual {p2}, Lcom/anythink/expressad/foundation/d/c;->aa()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$j;->h:Lcom/anythink/expressad/videocommon/a$a;

    invoke-static {p1, p2, v1}, Lcom/anythink/expressad/videocommon/a;->a(ILjava/lang/String;Lcom/anythink/expressad/videocommon/a$a;)V

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    if-eqz p1, :cond_5

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/anythink/expressad/reward/a/d;->c()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    invoke-static {p2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 v1, 0x6

    iput v1, p2, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$j;->i:Lcom/anythink/expressad/foundation/d/c;

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    invoke-static {v1}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    invoke-static {p2}, Lcom/anythink/expressad/reward/a/d;->i(Lcom/anythink/expressad/reward/a/d;)Landroid/os/Handler;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/anythink/expressad/reward/a/d$j;->c:Lcom/anythink/expressad/reward/a/d;

    :cond_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_5
    :goto_2
    iput-boolean v0, p0, Lcom/anythink/expressad/reward/a/d$j;->k:Z

    :cond_6
    return-void
.end method
