.class public Lcom/octopus/ad/utils/f$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/utils/f;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/octopus/ad/utils/f;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/utils/f;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object p2, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->b(Lcom/octopus/ad/utils/f;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p2}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {v0}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;Z)Z

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/octopus/ad/utils/f;->b(Lcom/octopus/ad/utils/f;Z)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {v0}, Lcom/octopus/ad/utils/f;->b(Lcom/octopus/ad/utils/f;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->b(Lcom/octopus/ad/utils/f;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->e(Lcom/octopus/ad/utils/f;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->g(Lcom/octopus/ad/utils/f;)Lcom/octopus/ad/utils/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->j(Lcom/octopus/ad/utils/f;)J

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->g(Lcom/octopus/ad/utils/f;)Lcom/octopus/ad/utils/d;

    move-result-object p1

    iget-object v4, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {v4}, Lcom/octopus/ad/utils/f;->j(Lcom/octopus/ad/utils/f;)J

    move-result-wide v4

    invoke-interface {p1, v0, v1, v4, v5}, Lcom/octopus/ad/utils/d;->a(JJ)V

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;J)J

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;Z)Z

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->b(Lcom/octopus/ad/utils/f;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/f;->c(Lcom/octopus/ad/utils/f;Z)Z

    :cond_2
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {v2}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/octopus/ad/utils/f;->b(Lcom/octopus/ad/utils/f;Z)Z

    iget-object v0, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->e(Lcom/octopus/ad/utils/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->f(Lcom/octopus/ad/utils/f;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/f;->c(Lcom/octopus/ad/utils/f;Z)Z

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->g(Lcom/octopus/ad/utils/f;)Lcom/octopus/ad/utils/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->g(Lcom/octopus/ad/utils/f;)Lcom/octopus/ad/utils/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/octopus/ad/utils/d;->a()V

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {p1, v0, v1}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;J)J

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1, v2}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;Z)Z

    :cond_2
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->c(Lcom/octopus/ad/utils/f;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onActivityStarted"

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->d(Lcom/octopus/ad/utils/f;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {v0}, Lcom/octopus/ad/utils/f;->c(Lcom/octopus/ad/utils/f;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStopped"

    invoke-static {v0, v1}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {v0}, Lcom/octopus/ad/utils/f;->h(Lcom/octopus/ad/utils/f;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {v0}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->i(Lcom/octopus/ad/utils/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->b(Lcom/octopus/ad/utils/f;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->g(Lcom/octopus/ad/utils/f;)Lcom/octopus/ad/utils/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->j(Lcom/octopus/ad/utils/f;)J

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {p1}, Lcom/octopus/ad/utils/f;->g(Lcom/octopus/ad/utils/f;)Lcom/octopus/ad/utils/d;

    move-result-object p1

    iget-object v4, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {v4}, Lcom/octopus/ad/utils/f;->j(Lcom/octopus/ad/utils/f;)J

    move-result-wide v4

    invoke-interface {p1, v4, v5, v0, v1}, Lcom/octopus/ad/utils/d;->a(JJ)V

    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;J)J

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/utils/f$1;->a:Lcom/octopus/ad/utils/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/octopus/ad/utils/f;->a(Lcom/octopus/ad/utils/f;Z)Z

    :cond_2
    return-void
.end method
