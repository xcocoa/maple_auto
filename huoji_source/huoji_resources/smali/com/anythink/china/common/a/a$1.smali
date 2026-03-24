.class public final Lcom/anythink/china/common/a/a$1;
.super Lcom/anythink/core/common/o/b/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/china/common/a/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/china/common/a/a;


# direct methods
.method public constructor <init>(Lcom/anythink/china/common/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-direct {p0}, Lcom/anythink/core/common/o/b/d;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 12

    const-string v0, "Http connect error!"

    const-string v1, "10000"

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/anythink/china/common/a/a;->o:J

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/anythink/china/common/a/a;->p:J

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    iget-boolean v2, v2, Lcom/anythink/china/common/a/e;->o:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "User-Agent"

    invoke-virtual {v3, v4, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v2, Lcom/anythink/china/common/a/a;->n:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Range: startPos -> "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "  ,  endPos -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v4, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v8, v5, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v2, Lcom/anythink/china/common/a/a;->s:J

    :goto_0
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v4, v2, Lcom/anythink/china/common/a/a;->s:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v2, "downloadSize <= 0"

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    iget-boolean v4, v2, Lcom/anythink/china/common/a/a;->c:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_6

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->j()V

    :cond_4
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v5, p1, Lcom/anythink/china/common/a/a;->m:I

    invoke-virtual {p1}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-void

    :cond_6
    const v2, 0xea60

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_8

    const/16 v4, 0xce

    if-eq v2, v4, :cond_8

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http respond status code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ! url="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v2, "10001"

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-void

    :cond_8
    :try_start_4
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean v2, p1, Lcom/anythink/china/common/a/a;->c:Z

    if-eqz v2, :cond_b

    invoke-static {p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/china/common/a/e;->j()V

    :cond_9
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v5, p1, Lcom/anythink/china/common/a/a;->m:I

    invoke-virtual {p1}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-void

    :cond_b
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/e;->i()V

    :cond_c
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v4, Lcom/anythink/china/common/a/a;->s:J

    iput-wide v6, v2, Lcom/anythink/china/common/a/e;->h:J

    invoke-static {v4}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v6

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v7

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v8, v2, Lcom/anythink/china/common/a/a;->n:J

    iget-wide v10, v2, Lcom/anythink/china/common/a/a;->s:J

    invoke-interface/range {v6 .. v11}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;JJ)V

    :cond_d
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v4, v2, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v2, v4, p1}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a;Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v2

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v2, v4, Lcom/anythink/china/common/a/a;->m:I

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_e
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/anythink/china/common/a/a;->q:J

    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/anythink/china/common/a/a;->r:J

    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {p1}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object p1

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v6, v4, Lcom/anythink/china/common/a/a;->r:J

    iget-wide v8, v4, Lcom/anythink/china/common/a/a;->p:J

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lcom/anythink/china/common/a/e;->i:J

    const/4 p1, 0x1

    if-eq v2, p1, :cond_10

    const/4 p1, 0x2

    if-eq v2, p1, :cond_f

    if-eq v2, v5, :cond_f

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "download fail --> "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v2, v2, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Save fail!("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v4}, Lcom/anythink/china/common/a/a;->d(Lcom/anythink/china/common/a/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V

    goto :goto_1

    :cond_f
    invoke-virtual {v4}, Lcom/anythink/china/common/a/a;->d()V

    goto :goto_1

    :cond_10
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "download success --> "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v2, v2, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {p1}, Lcom/anythink/china/common/a/a;->e()V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto/16 :goto_8

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v2, v3

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v2, v3

    goto/16 :goto_5

    :catch_4
    move-exception p1

    move-object v2, v3

    goto/16 :goto_6

    :catch_5
    move-exception p1

    move-object v2, v3

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :catch_6
    move-exception p1

    :goto_2
    :try_start_6
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_11
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_7
    move-exception p1

    :goto_3
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_12
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_8
    move-exception p1

    :goto_4
    :try_start_8
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_13
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_9
    move-exception p1

    :goto_5
    :try_start_9
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_14
    iget-object p1, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_a
    move-exception p1

    :goto_6
    :try_start_a
    iget-object v0, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v0, p1}, Lcom/anythink/china/common/a/a;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_b
    move-exception p1

    :goto_7
    :try_start_b
    iget-object v0, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v1, "20001"

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    return-void

    :goto_8
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16
    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 13

    const-string v0, "Http connect error!"

    const-string v1, "10000"

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start download url -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v3, v3, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a;)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v3, v2, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/anythink/china/common/a/a;->o:J

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/anythink/china/common/a/a;->p:J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    iget-boolean v2, v2, Lcom/anythink/china/common/a/e;->o:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/anythink/core/common/o/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "User-Agent"

    invoke-virtual {v4, v5, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v5, v2, Lcom/anythink/china/common/a/a;->n:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Range: startPos -> "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v5, v5, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "  ,  endPos -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v5, v5, Lcom/anythink/china/common/a/a;->s:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bytes="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v9, v6, Lcom/anythink/china/common/a/a;->n:J

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v2, Lcom/anythink/china/common/a/a;->s:J

    :goto_0
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v5, v2, Lcom/anythink/china/common/a/a;->s:J

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "downloadSize <= 0"

    invoke-static {v1, v3}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c

    :cond_2
    return-void

    :cond_3
    :try_start_4
    iget-boolean v5, v2, Lcom/anythink/china/common/a/a;->c:Z

    const/4 v6, 0x3

    if-eqz v5, :cond_6

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/e;->j()V

    :cond_4
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v6, v2, Lcom/anythink/china/common/a/a;->m:I

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    :cond_5
    return-void

    :cond_6
    const v2, 0xea60

    :try_start_6
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v5, 0xc8

    if-eq v2, v5, :cond_8

    const/16 v5, 0xce

    if-eq v2, v5, :cond_8

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http respond status code is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ! url="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v3, "10001"

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    :cond_7
    return-void

    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-boolean v3, v2, Lcom/anythink/china/common/a/a;->c:Z

    if-eqz v3, :cond_b

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/china/common/a/e;->j()V

    :cond_9
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v6, v2, Lcom/anythink/china/common/a/a;->m:I

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->d()V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v4, :cond_a

    :try_start_9
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    :cond_a
    return-void

    :cond_b
    :try_start_a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anythink/china/common/a/e;->i()V

    :cond_c
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v3

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v7, v5, Lcom/anythink/china/common/a/a;->s:J

    iput-wide v7, v3, Lcom/anythink/china/common/a/e;->h:J

    invoke-static {v5}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->c(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/a$a;

    move-result-object v7

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v8

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v9, v3, Lcom/anythink/china/common/a/a;->n:J

    iget-wide v11, v3, Lcom/anythink/china/common/a/a;->s:J

    invoke-interface/range {v7 .. v12}, Lcom/anythink/china/common/a/a$a;->a(Lcom/anythink/china/common/a/e;JJ)V

    :cond_d
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v5, v3, Lcom/anythink/china/common/a/a;->b:Ljava/lang/String;

    invoke-static {v3, v5, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/a;Ljava/lang/String;Ljava/io/InputStream;)I

    move-result v3

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iput v3, v5, Lcom/anythink/china/common/a/a;->m:I

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_e
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/anythink/china/common/a/a;->q:J

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/anythink/china/common/a/a;->r:J

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v2}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/a;)Lcom/anythink/china/common/a/e;

    move-result-object v2

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-wide v7, v5, Lcom/anythink/china/common/a/a;->r:J

    iget-wide v9, v5, Lcom/anythink/china/common/a/a;->p:J

    sub-long/2addr v7, v9

    iput-wide v7, v2, Lcom/anythink/china/common/a/e;->i:J

    const/4 v2, 0x1

    if-eq v3, v2, :cond_10

    const/4 v2, 0x2

    if-eq v3, v2, :cond_f

    if-eq v3, v6, :cond_f

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download fail --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v3, v3, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Save fail!("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v5}, Lcom/anythink/china/common/a/a;->d(Lcom/anythink/china/common/a/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V

    goto :goto_1

    :cond_f
    invoke-virtual {v5}, Lcom/anythink/china/common/a/a;->d()V

    goto :goto_1

    :cond_10
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download success --> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    iget-object v3, v3, Lcom/anythink/china/common/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v2}, Lcom/anythink/china/common/a/a;->e()V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_1
    if-eqz v4, :cond_15

    :try_start_b
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    return-void

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_6

    :catch_3
    move-exception v2

    goto/16 :goto_8

    :catch_4
    move-exception v2

    goto/16 :goto_a

    :catch_5
    move-exception v2

    goto/16 :goto_b

    :catchall_0
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_c

    :catch_6
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_2
    :try_start_c
    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_11
    move-object v2, v0

    :goto_3
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v4, :cond_15

    :try_start_d
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    return-void

    :catch_7
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_4
    :try_start_e
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_12
    move-object v2, v0

    :goto_5
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v4, :cond_15

    :try_start_f
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    return-void

    :catch_8
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_6
    :try_start_10
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_13
    move-object v2, v0

    :goto_7
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v4, :cond_15

    :try_start_11
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    return-void

    :catch_9
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_8
    :try_start_12
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_14
    move-object v2, v0

    :goto_9
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v4, :cond_15

    :try_start_13
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    return-void

    :catch_a
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_a
    :try_start_14
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lorg/apache/http/conn/ConnectTimeoutException;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v4, :cond_15

    :try_start_15
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_c

    return-void

    :catch_b
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    :goto_b
    :try_start_16
    iget-object v3, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    const-string v5, "20001"

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/anythink/china/common/a/a;->a(Lcom/anythink/china/common/a/b;)V

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v4, :cond_15

    :try_start_17
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_15
    return-void

    :catchall_1
    move-exception v2

    :goto_c
    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16
    throw v2
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_17 .. :try_end_17} :catch_d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    :catch_c
    move-exception v2

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_17
    :goto_d
    iget-object v2, p0, Lcom/anythink/china/common/a/a$1;->a:Lcom/anythink/china/common/a/a;

    invoke-static {v1, v0}, Lcom/anythink/china/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/china/common/a/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/anythink/china/common/a/a;->b(Lcom/anythink/china/common/a/b;)V

    return-void

    :catch_d
    move-exception v2

    goto :goto_e

    :catch_e
    move-exception v2

    :goto_e
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Lcom/anythink/china/common/a/a;->f()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method
