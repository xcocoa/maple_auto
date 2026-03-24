.class public final Lcom/anythink/expressad/reward/b/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/reward/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/reward/b/a;

.field private b:Lcom/anythink/expressad/reward/a/a;

.field private c:Z

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/reward/b/a;Lcom/anythink/expressad/reward/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/reward/b/a$b;->b:Lcom/anythink/expressad/reward/a/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/anythink/expressad/reward/b/a$b;->c:Z

    return-void
.end method

.method private c()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->d:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->w(Lcom/anythink/expressad/reward/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->f(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v2}, Lcom/anythink/expressad/reward/b/a;->g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/reward/b/a$c;->a(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/b/a$b;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->w(Lcom/anythink/expressad/reward/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->b:Lcom/anythink/expressad/reward/a/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/anythink/expressad/reward/a/a;->a(Lcom/anythink/expressad/reward/a/b;)V

    iput-object v1, p0, Lcom/anythink/expressad/reward/b/a$b;->b:Lcom/anythink/expressad/reward/a/a;

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/anythink/expressad/reward/b/a$c;->a(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->w(Lcom/anythink/expressad/reward/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->d(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/b/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->f(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/expressad/reward/b/a$b;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v2}, Lcom/anythink/expressad/reward/b/a;->g(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/reward/b/a$c;->c(Lcom/anythink/expressad/reward/b/a$c;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
