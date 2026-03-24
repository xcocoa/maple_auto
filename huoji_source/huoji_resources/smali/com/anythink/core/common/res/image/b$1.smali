.class public final Lcom/anythink/core/common/res/image/b$1;
.super Lcom/anythink/core/common/o/b/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/res/image/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/core/common/res/image/b;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/res/image/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-direct {p0}, Lcom/anythink/core/common/o/b/d;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    const-string v0, "-10000"

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/res/image/b;->e:J

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/anythink/core/common/res/image/b;->f:J

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {v1}, Lcom/anythink/core/common/res/image/b;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v5}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "REQUEST ADDED HEADER: \n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-boolean v3, v1, Lcom/anythink/core/common/res/image/b;->d:Z
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "Task had been canceled."

    const-string v5, "-10001"

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v1, v5, v4}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void

    :cond_2
    const v1, 0xea60

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_b

    iget-object v3, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v3}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "http respond status code is "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ! url="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x12e

    if-eq v1, v3, :cond_5

    const/16 v3, 0x12d

    if-eq v1, v3, :cond_5

    const/16 v3, 0x133

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Resource download fail, status code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-boolean v1, p1, Lcom/anythink/core/common/res/image/b;->d:Z

    if-nez v1, :cond_8

    const-string p1, "Location"

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    const-string v3, "Final url is wrong:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-void

    :cond_7
    :try_start_5
    invoke-direct {p0, p1}, Lcom/anythink/core/common/res/image/b$1;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v5, v4}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-void

    :cond_b
    :try_start_6
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-boolean v1, p1, Lcom/anythink/core/common/res/image/b;->d:Z

    if-eqz v1, :cond_d

    invoke-virtual {p1, v5, v4}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    return-void

    :cond_d
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p1, Lcom/anythink/core/common/res/image/b;->i:J

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {v1, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_e
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/anythink/core/common/res/image/b;->g:J

    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/anythink/core/common/res/image/b;->h:J

    if-eqz v1, :cond_f

    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {p1}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "download success --> "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-object v1, v1, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Lcom/anythink/core/common/res/image/b;->c()V

    goto :goto_3

    :cond_f
    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {p1}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "download fail --> "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-object v1, v1, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    const-string v1, "Save fail!"

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto/16 :goto_a

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v1, v2

    goto :goto_7

    :catch_4
    move-exception p1

    move-object v1, v2

    goto :goto_8

    :catch_5
    move-exception p1

    move-object v1, v2

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    goto/16 :goto_a

    :catch_6
    move-exception p1

    :goto_4
    :try_start_8
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_7
    move-exception p1

    :goto_5
    :try_start_9
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_8
    move-exception p1

    :goto_6
    :try_start_a
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_9
    move-exception p1

    :goto_7
    :try_start_b
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_a
    move-exception p1

    :goto_8
    :try_start_c
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_b
    move-exception p1

    :goto_9
    :try_start_d
    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {p1}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    return-void

    :goto_a
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "-10000"

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    iget-object v1, v1, Lcom/anythink/core/common/res/image/b;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/anythink/core/common/res/image/b$1;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-static {v2}, Lcom/anythink/core/common/res/image/b;->a(Lcom/anythink/core/common/res/image/b;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/res/image/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v2, p0, Lcom/anythink/core/common/res/image/b$1;->a:Lcom/anythink/core/common/res/image/b;

    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
