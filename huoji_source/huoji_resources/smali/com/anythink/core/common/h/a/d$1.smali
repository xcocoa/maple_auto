.class public final Lcom/anythink/core/common/h/a/d$1;
.super Lcom/anythink/core/common/o/b/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/h/a/d;->a(Lcom/anythink/core/common/h/a/c;Lcom/anythink/core/common/h/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/h/a/c;

.field public final synthetic b:Lcom/anythink/core/common/h/a/c$a;

.field public final synthetic c:Lcom/anythink/core/common/h/a/d;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/h/a/d;Lcom/anythink/core/common/h/a/c;Lcom/anythink/core/common/h/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/h/a/d$1;->c:Lcom/anythink/core/common/h/a/d;

    iput-object p2, p0, Lcom/anythink/core/common/h/a/d$1;->a:Lcom/anythink/core/common/h/a/c;

    iput-object p3, p0, Lcom/anythink/core/common/h/a/d$1;->b:Lcom/anythink/core/common/h/a/c$a;

    invoke-direct {p0}, Lcom/anythink/core/common/o/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-string v0, "Response Error Code:"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/anythink/core/common/h/a/d$1;->c:Lcom/anythink/core/common/h/a/d;

    iget-object v3, p0, Lcom/anythink/core/common/h/a/d$1;->a:Lcom/anythink/core/common/h/a/c;

    invoke-static {v2, v3}, Lcom/anythink/core/common/h/a/d;->a(Lcom/anythink/core/common/h/a/d;Lcom/anythink/core/common/h/a/c;)V

    iget-object v2, p0, Lcom/anythink/core/common/h/a/d$1;->c:Lcom/anythink/core/common/h/a/d;

    invoke-static {v2}, Lcom/anythink/core/common/h/a/d;->a(Lcom/anythink/core/common/h/a/d;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/anythink/core/common/h/a/d$1;->b:Lcom/anythink/core/common/h/a/c$a;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/anythink/core/common/h/a/d$1;->a:Lcom/anythink/core/common/h/a/c;

    invoke-interface {v2, v3}, Lcom/anythink/core/common/h/a/c$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/Exception;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    iget-object v2, p0, Lcom/anythink/core/common/h/a/d$1;->c:Lcom/anythink/core/common/h/a/d;

    invoke-static {v2}, Lcom/anythink/core/common/h/a/d;->b(Lcom/anythink/core/common/h/a/d;)V

    :try_start_1
    iget-object v2, p0, Lcom/anythink/core/common/h/a/d$1;->c:Lcom/anythink/core/common/h/a/d;

    iget-object v3, p0, Lcom/anythink/core/common/h/a/d$1;->a:Lcom/anythink/core/common/h/a/c;

    invoke-static {v2, v3}, Lcom/anythink/core/common/h/a/d;->a(Lcom/anythink/core/common/h/a/d;Lcom/anythink/core/common/h/a/c;)V

    iget-object v2, p0, Lcom/anythink/core/common/h/a/d$1;->c:Lcom/anythink/core/common/h/a/d;

    invoke-static {v2}, Lcom/anythink/core/common/h/a/d;->a(Lcom/anythink/core/common/h/a/d;)I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v0, p0, Lcom/anythink/core/common/h/a/d$1;->b:Lcom/anythink/core/common/h/a/c$a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/anythink/core/common/h/a/d$1;->a:Lcom/anythink/core/common/h/a/c;

    invoke-interface {v0, v1}, Lcom/anythink/core/common/h/a/c$a;->a(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/Exception;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/anythink/core/common/h/a/d$1;->a:Lcom/anythink/core/common/h/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/common/o/i;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/core/common/h/a/d$1;->c:Lcom/anythink/core/common/h/a/d;

    invoke-static {v3}, Lcom/anythink/core/common/h/a/d;->c(Lcom/anythink/core/common/h/a/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/core/common/h/a/d$1;->c:Lcom/anythink/core/common/h/a/d;

    invoke-static {v4}, Lcom/anythink/core/common/h/a/d;->d(Lcom/anythink/core/common/h/a/d;)I

    move-result v4

    const-string v5, ""

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/anythink/core/common/h/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/anythink/core/common/h/a/d$1;->b:Lcom/anythink/core/common/h/a/c$a;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Lcom/anythink/core/common/h/a/c$a;->a(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
