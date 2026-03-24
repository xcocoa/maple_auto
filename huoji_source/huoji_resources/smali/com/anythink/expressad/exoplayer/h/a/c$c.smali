.class public final Lcom/anythink/expressad/exoplayer/h/a/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/exoplayer/h/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/exoplayer/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/exoplayer/h/a/c;

.field private final b:Landroid/os/Handler;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/exoplayer/h/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->b:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/anythink/expressad/exoplayer/h/a/c$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->c:Z

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->d(Lcom/anythink/expressad/exoplayer/h/a/c;)Lcom/anythink/expressad/exoplayer/h/a/c$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/a/c$c$2;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/exoplayer/h/a/c$c$2;-><init>(Lcom/anythink/expressad/exoplayer/h/a/c$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/a/a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->b:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/a/c$c$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/expressad/exoplayer/h/a/c$c$1;-><init>(Lcom/anythink/expressad/exoplayer/h/a/c$c;Lcom/anythink/expressad/exoplayer/h/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/anythink/expressad/exoplayer/h/a/c$a;Lcom/anythink/expressad/exoplayer/j/k;)V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/expressad/exoplayer/h/a/c;->a(Lcom/anythink/expressad/exoplayer/h/a/c;Lcom/anythink/expressad/exoplayer/h/s$a;)Lcom/anythink/expressad/exoplayer/h/t$a;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/anythink/expressad/exoplayer/h/t$a;->a(Lcom/anythink/expressad/exoplayer/j/k;Ljava/io/IOException;)V

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/h/a/c;->c(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/h/a/c;->d(Lcom/anythink/expressad/exoplayer/h/a/c;)Lcom/anythink/expressad/exoplayer/h/a/c$d;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {p2}, Lcom/anythink/expressad/exoplayer/h/a/c;->c(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/anythink/expressad/exoplayer/h/a/c$c$4;

    invoke-direct {v0, p0, p1}, Lcom/anythink/expressad/exoplayer/h/a/c$c$4;-><init>(Lcom/anythink/expressad/exoplayer/h/a/c$c;Lcom/anythink/expressad/exoplayer/h/a/c$a;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->d(Lcom/anythink/expressad/exoplayer/h/a/c;)Lcom/anythink/expressad/exoplayer/h/a/c$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->a:Lcom/anythink/expressad/exoplayer/h/a/c;

    invoke-static {v0}, Lcom/anythink/expressad/exoplayer/h/a/c;->c(Lcom/anythink/expressad/exoplayer/h/a/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/anythink/expressad/exoplayer/h/a/c$c$3;

    invoke-direct {v1, p0}, Lcom/anythink/expressad/exoplayer/h/a/c$c$3;-><init>(Lcom/anythink/expressad/exoplayer/h/a/c$c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->c:Z

    iget-object v0, p0, Lcom/anythink/expressad/exoplayer/h/a/c$c;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
