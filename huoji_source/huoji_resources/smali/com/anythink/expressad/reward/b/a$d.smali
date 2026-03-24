.class public final Lcom/anythink/expressad/reward/b/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/expressad/video/bt/module/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/expressad/reward/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/reward/b/a;

.field private b:Lcom/anythink/expressad/reward/b/a;

.field private c:I

.field private d:Landroid/os/Handler;

.field private e:I


# direct methods
.method public synthetic constructor <init>(Lcom/anythink/expressad/reward/b/a;Lcom/anythink/expressad/reward/b/a;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/anythink/expressad/reward/b/a$d;-><init>(Lcom/anythink/expressad/reward/b/a;Lcom/anythink/expressad/reward/b/a;Landroid/os/Handler;B)V

    return-void
.end method

.method private constructor <init>(Lcom/anythink/expressad/reward/b/a;Lcom/anythink/expressad/reward/b/a;Landroid/os/Handler;B)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/anythink/expressad/reward/b/a$d;->e:I

    iput-object p2, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    const/4 p1, 0x1

    iput p1, p0, Lcom/anythink/expressad/reward/b/a$d;->c:I

    iput-object p3, p0, Lcom/anythink/expressad/reward/b/a$d;->d:Landroid/os/Handler;

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->k(Lcom/anythink/expressad/reward/b/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->l(Lcom/anythink/expressad/reward/b/a;)Z

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;Z)Z

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->c(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/reward/a/d;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/anythink/expressad/reward/a/d;->n:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->i(Lcom/anythink/expressad/reward/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/reward/b/a;->b()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/videocommon/d/a;->c()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/expressad/reward/b/a$d;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public final a(Lcom/anythink/expressad/foundation/d/c;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->i(Lcom/anythink/expressad/reward/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/reward/b/a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/expressad/videocommon/d/a;->a(Lcom/anythink/expressad/foundation/d/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception p1

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->l(Lcom/anythink/expressad/reward/b/a;)Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->i(Lcom/anythink/expressad/reward/b/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/anythink/expressad/reward/b/a;->b()V

    :cond_0
    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1, v0}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;Z)Z

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v1}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/anythink/expressad/videocommon/d/a;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_3
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x4

    iput p1, p0, Lcom/anythink/expressad/reward/b/a$d;->e:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    return-void

    :catch_2
    move-exception p1

    iput v0, p0, Lcom/anythink/expressad/reward/b/a$d;->e:I

    sget-boolean v0, Lcom/anythink/expressad/a;->a:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method

.method public final a(ZI)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-void

    :catch_1
    move-exception p1

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public final a(ZLcom/anythink/expressad/videocommon/c/c;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p2}, Lcom/anythink/expressad/reward/b/a;->m(Lcom/anythink/expressad/reward/b/a;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/expressad/videocommon/c/c;->b(Ljava/lang/String;)Lcom/anythink/expressad/videocommon/c/c;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->i(Lcom/anythink/expressad/reward/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/anythink/expressad/reward/b/a;->b()V

    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-virtual {v0}, Lcom/anythink/expressad/reward/b/a;->a()V

    :cond_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/anythink/expressad/videocommon/c/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/anythink/expressad/videocommon/c/c;->b()I

    move-result p2

    int-to-float p2, p2

    invoke-interface {v0, p1, v1, p2}, Lcom/anythink/expressad/videocommon/d/a;->a(ZLjava/lang/String;F)V

    const/4 p1, 0x7

    iput p1, p0, Lcom/anythink/expressad/reward/b/a$d;->e:I

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/anythink/expressad/reward/b/a;->a(Lcom/anythink/expressad/reward/b/a;Z)Z

    iget-object p1, p0, Lcom/anythink/expressad/reward/b/a$d;->a:Lcom/anythink/expressad/reward/b/a;

    invoke-static {p1}, Lcom/anythink/expressad/reward/b/a;->k(Lcom/anythink/expressad/reward/b/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    sget-boolean p2, Lcom/anythink/expressad/a;->a:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/expressad/videocommon/d/a;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/anythink/expressad/reward/b/a$d;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/anythink/expressad/reward/b/a$d;->b:Lcom/anythink/expressad/reward/b/a;

    invoke-static {v0}, Lcom/anythink/expressad/reward/b/a;->h(Lcom/anythink/expressad/reward/b/a;)Lcom/anythink/expressad/videocommon/d/a;

    invoke-static {}, Lcom/anythink/expressad/foundation/f/b;->a()Lcom/anythink/expressad/foundation/f/b;

    move-result-object v0

    const-string v1, "_2"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/anythink/expressad/foundation/f/b;->b(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/anythink/expressad/reward/b/a$d;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/anythink/expressad/a;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
