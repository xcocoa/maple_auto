.class public final Lcom/anythink/expressad/a/h$a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/a/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/a/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/a/h$a;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/a/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    iget-object v0, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    iget-object v1, v1, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v1}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/anythink/expressad/a/c$b;->a(Z)V

    iget-object v1, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    invoke-static {v1}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    invoke-static {v0, p1}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    iget-object p1, p1, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {p1}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/anythink/expressad/a/c$b;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;ZZ)V

    invoke-direct {p0}, Lcom/anythink/expressad/a/h$a$1;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    iget-object v0, v0, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {v0}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/expressad/a/c$b;->b(Ljava/lang/String;)V

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    iget-object p2, p2, Lcom/anythink/expressad/a/h$a;->a:Lcom/anythink/expressad/a/h;

    invoke-static {p2}, Lcom/anythink/expressad/a/h;->g(Lcom/anythink/expressad/a/h;)Lcom/anythink/expressad/a/c$b;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/anythink/expressad/a/c$b;->c(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    invoke-static {p2, p1}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;ZZ)V

    invoke-direct {p0}, Lcom/anythink/expressad/a/h$a$1;->b()V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;ZZ)V

    return v1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    invoke-static {v0, p1}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;ZZ)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/anythink/expressad/a/h$a$1;->b()V

    :cond_0
    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    invoke-static {v0, p1}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;ZZ)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/a/h$a$1;->a:Lcom/anythink/expressad/a/h$a;

    invoke-static {v0, v2, v2}, Lcom/anythink/expressad/a/h$a;->a(Lcom/anythink/expressad/a/h$a;ZZ)V

    invoke-direct {p0}, Lcom/anythink/expressad/a/h$a$1;->b()V

    :cond_0
    return p1
.end method
