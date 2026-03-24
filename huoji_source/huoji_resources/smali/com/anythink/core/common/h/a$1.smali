.class public final Lcom/anythink/core/common/h/a$1;
.super Lcom/anythink/core/common/o/b/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/h/a;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/anythink/core/common/h/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/h/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iput p2, p0, Lcom/anythink/core/common/h/a$1;->a:I

    invoke-direct {p0}, Lcom/anythink/core/common/o/b/d;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 11

    const-string v0, "9999"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iput-object p1, v2, Lcom/anythink/core/common/h/a;->o:Ljava/lang/String;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_31
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_30
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2f
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2e
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2b
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2a
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_28
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v2, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/a;->a()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x2

    :cond_0
    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v6, "POST"

    invoke-virtual {p1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    :cond_1
    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_2
    iget-object v3, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {v3}, Lcom/anythink/core/common/h/a;->c()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget-boolean v5, v3, Lcom/anythink/core/common/h/a;->n:Z

    if-eqz v5, :cond_5

    iget v2, p0, Lcom/anythink/core/common/h/a$1;->a:I

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/h/a;->c(I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_26
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_25
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_23
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_20
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1e
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v3

    const-string v5, "ua"

    invoke-virtual {v3, v5}, Lcom/anythink/core/common/b/n;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "User-Agent"

    invoke-static {}, Lcom/anythink/core/common/o/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const v3, 0xea60

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {v2}, Lcom/anythink/core/common/h/a;->d()[B

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iget-object v3, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {v3, v2}, Lcom/anythink/core/common/h/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_e

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_e

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_a

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_a

    const/16 v3, 0x133

    if-ne v2, v3, :cond_8

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v4, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const-string v5, "Http respond status code is "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "9990"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_27
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_26
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_23
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_20
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1e
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-void

    :cond_a
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget-boolean v3, v2, Lcom/anythink/core/common/h/a;->n:Z

    if-nez v3, :cond_b

    const-string v2, "Location"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-direct {p0, v2}, Lcom/anythink/core/common/h/a$1;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget v3, p0, Lcom/anythink/core/common/h/a$1;->a:I

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/h/a;->c(I)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_27
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_25
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_21
    .catch Ljava/lang/StackOverflowError; {:try_start_3 .. :try_end_3} :catch_20
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1e
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :cond_c
    :goto_2
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return-void

    :cond_e
    :try_start_4
    iget-object v2, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget-boolean v3, v2, Lcom/anythink/core/common/h/a;->n:Z

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/anythink/core/common/h/a$1;->a:I

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/h/a;->c(I)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_27
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_26
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_25
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_23
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_21
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1e
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_f
    return-void

    :cond_10
    :try_start_5
    invoke-static {p1}, Lcom/anythink/core/common/h/a;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_27
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_26
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_25
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_24
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_23
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_22
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/lang/StackOverflowError; {:try_start_5 .. :try_end_5} :catch_20
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1e
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1d
    .catch Ljava/net/ConnectException; {:try_start_6 .. :try_end_6} :catch_1c
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_1b
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_1a
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_19
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_12
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/StackOverflowError; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_25

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_11
    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {v5}, Lcom/anythink/core/common/h/a;->n()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "code"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_13

    sget-object v1, Lcom/anythink/core/common/b/h$e;->e:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_12

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_12
    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {v5, v1}, Lcom/anythink/core/common/h/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v6, p0, Lcom/anythink/core/common/h/a$1;->a:I

    :goto_4
    invoke-virtual {v5, v6, v1}, Lcom/anythink/core/common/h/a;->a(ILjava/lang/Object;)V

    goto :goto_5

    :cond_13
    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v7, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v8, -0x2710

    const-string v9, "9991"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v6

    invoke-virtual {v5, v7, v8, v1, v6}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    goto :goto_5

    :cond_14
    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/anythink/core/common/h/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v6, p0, Lcom/anythink/core/common/h/a$1;->a:I
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :goto_5
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    :catchall_1
    nop

    :goto_6
    if-eqz v2, :cond_15

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_7

    :catchall_2
    nop

    :cond_15
    :goto_7
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_3
    move-exception v0

    move-object v1, v4

    goto/16 :goto_3b

    :catch_0
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_a

    :catch_1
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_f

    :catch_2
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_14

    :catch_3
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_19

    :catch_4
    move-exception v0

    move-object v1, v4

    goto/16 :goto_1e

    :catch_5
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_23

    :catch_6
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_28

    :catch_7
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_2d

    :catch_8
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_32

    :catch_9
    move-exception v1

    move-object v10, v4

    move-object v4, v1

    move-object v1, v10

    goto/16 :goto_37

    :catch_a
    move-exception v4

    goto/16 :goto_a

    :catch_b
    move-exception v4

    goto/16 :goto_f

    :catch_c
    move-exception v4

    goto/16 :goto_14

    :catch_d
    move-exception v4

    goto/16 :goto_19

    :catch_e
    move-exception v0

    goto/16 :goto_1e

    :catch_f
    move-exception v4

    goto/16 :goto_23

    :catch_10
    move-exception v4

    goto/16 :goto_28

    :catch_11
    move-exception v4

    goto/16 :goto_2d

    :catch_12
    move-exception v4

    goto/16 :goto_32

    :catch_13
    move-exception v4

    goto/16 :goto_37

    :catchall_4
    move-exception v0

    move-object v3, v1

    goto/16 :goto_3b

    :catch_14
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_a

    :catch_15
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_f

    :catch_16
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_14

    :catch_17
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_19

    :catch_18
    move-exception v0

    move-object v3, v1

    goto/16 :goto_1e

    :catch_19
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_23

    :catch_1a
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_28

    :catch_1b
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_2d

    :catch_1c
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_32

    :catch_1d
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    goto/16 :goto_37

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_1e
    move-exception v2

    move-object v3, v1

    goto :goto_9

    :catch_1f
    move-exception v2

    move-object v3, v1

    goto/16 :goto_e

    :catch_20
    move-exception v2

    move-object v3, v1

    goto/16 :goto_13

    :catch_21
    move-exception v2

    move-object v3, v1

    goto/16 :goto_18

    :catch_22
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1d

    :catch_23
    move-exception v2

    move-object v3, v1

    goto/16 :goto_22

    :catch_24
    move-exception v2

    move-object v3, v1

    goto/16 :goto_27

    :catch_25
    move-exception v2

    move-object v3, v1

    goto/16 :goto_2c

    :catch_26
    move-exception v2

    move-object v3, v1

    goto/16 :goto_31

    :catch_27
    move-exception v2

    move-object v3, v1

    goto/16 :goto_36

    :catchall_6
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    :goto_8
    move-object v3, v2

    goto/16 :goto_3b

    :catch_28
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    :goto_9
    move-object v4, v2

    move-object v2, v3

    :goto_a
    :try_start_c
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception msg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    :cond_16
    iget-object v6, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v7, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v8, -0x270e

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v5, v0}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_25

    if-eqz v1, :cond_17

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_b

    :catchall_7
    nop

    :cond_17
    :goto_b
    if-eqz v3, :cond_18

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_c

    :catchall_8
    nop

    :cond_18
    :goto_c
    if-eqz v2, :cond_19

    :try_start_f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_d

    :catchall_9
    nop

    :cond_19
    :goto_d
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_29
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    :goto_e
    move-object v4, v2

    move-object v2, v3

    :goto_f
    :try_start_10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error msg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v4}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    :cond_1a
    iget-object v6, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v7, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v8, -0x270f

    invoke-virtual {v4}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v5, v0}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_25

    if-eqz v1, :cond_1b

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto :goto_10

    :catchall_a
    nop

    :cond_1b
    :goto_10
    if-eqz v3, :cond_1c

    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto :goto_11

    :catchall_b
    nop

    :cond_1c
    :goto_11
    if-eqz v2, :cond_1d

    :try_start_13
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    goto :goto_12

    :catchall_c
    nop

    :cond_1d
    :goto_12
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_2a
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    :goto_13
    move-object v4, v2

    move-object v2, v3

    :goto_14
    :try_start_14
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v4}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-virtual {v4}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v5

    :cond_1e
    iget-object v6, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v7, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v8, -0x3ed

    invoke-virtual {v4}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v5, v0}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_25

    if-eqz v1, :cond_1f

    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    goto :goto_15

    :catchall_d
    nop

    :cond_1f
    :goto_15
    if-eqz v3, :cond_20

    :try_start_16
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    goto :goto_16

    :catchall_e
    nop

    :cond_20
    :goto_16
    if-eqz v2, :cond_21

    :try_start_17
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    goto :goto_17

    :catchall_f
    nop

    :cond_21
    :goto_17
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_2b
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    :goto_18
    move-object v4, v2

    move-object v2, v3

    :goto_19
    :try_start_18
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    :cond_22
    iget-object v6, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v7, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v8, -0x3ec

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v6, v7, v8, v5, v0}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_25

    if-eqz v1, :cond_23

    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_10

    goto :goto_1a

    :catchall_10
    nop

    :cond_23
    :goto_1a
    if-eqz v3, :cond_24

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_11

    goto :goto_1b

    :catchall_11
    nop

    :cond_24
    :goto_1b
    if-eqz v2, :cond_25

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    goto :goto_1c

    :catchall_12
    nop

    :cond_25
    :goto_1c
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_2c
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    :goto_1d
    move-object v3, v2

    :goto_1e
    :try_start_1c
    iget-object v4, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v5, p0, Lcom/anythink/core/common/h/a$1;->a:I

    invoke-virtual {v4, v5, v0}, Lcom/anythink/core/common/h/a;->a(ILorg/apache/http/conn/ConnectTimeoutException;)V

    iget-object v0, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-static {v0}, Lcom/anythink/core/common/h/a;->a(Lcom/anythink/core/common/h/a;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_25

    if-eqz v1, :cond_26

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    goto :goto_1f

    :catchall_13
    nop

    :cond_26
    :goto_1f
    if-eqz v3, :cond_27

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_14

    goto :goto_20

    :catchall_14
    nop

    :cond_27
    :goto_20
    if-eqz v2, :cond_28

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    goto :goto_21

    :catchall_15
    nop

    :cond_28
    :goto_21
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_2d
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    :goto_22
    move-object v4, v2

    move-object v2, v3

    :goto_23
    :try_start_20
    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v6, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v7, -0x3ea

    const-string v8, "Connect timeout."

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    iget-object v0, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-static {v0}, Lcom/anythink/core/common/h/a;->a(Lcom/anythink/core/common/h/a;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_25

    if-eqz v1, :cond_29

    :try_start_21
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_16

    goto :goto_24

    :catchall_16
    nop

    :cond_29
    :goto_24
    if-eqz v3, :cond_2a

    :try_start_22
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_17

    goto :goto_25

    :catchall_17
    nop

    :cond_2a
    :goto_25
    if-eqz v2, :cond_2b

    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_18

    goto :goto_26

    :catchall_18
    nop

    :cond_2b
    :goto_26
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_2e
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    :goto_27
    move-object v4, v2

    move-object v2, v3

    :goto_28
    :try_start_24
    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v6, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v7, -0x3ef

    const-string v8, "connect socket failed."

    invoke-virtual {v4}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    iget-object v0, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-static {v0}, Lcom/anythink/core/common/h/a;->a(Lcom/anythink/core/common/h/a;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_25

    if-eqz v1, :cond_2c

    :try_start_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_19

    goto :goto_29

    :catchall_19
    nop

    :cond_2c
    :goto_29
    if-eqz v3, :cond_2d

    :try_start_26
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1a

    goto :goto_2a

    :catchall_1a
    nop

    :cond_2d
    :goto_2a
    if-eqz v2, :cond_2e

    :try_start_27
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1b

    goto :goto_2b

    :catchall_1b
    nop

    :cond_2e
    :goto_2b
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_2f
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    :goto_2c
    move-object v4, v2

    move-object v2, v3

    :goto_2d
    :try_start_28
    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v6, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v7, -0x3ee

    const-string v8, "connect ssl failed."

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    iget-object v0, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-static {v0}, Lcom/anythink/core/common/h/a;->a(Lcom/anythink/core/common/h/a;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_25

    if-eqz v1, :cond_2f

    :try_start_29
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1c

    goto :goto_2e

    :catchall_1c
    nop

    :cond_2f
    :goto_2e
    if-eqz v3, :cond_30

    :try_start_2a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1d

    goto :goto_2f

    :catchall_1d
    nop

    :cond_30
    :goto_2f
    if-eqz v2, :cond_31

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1e

    goto :goto_30

    :catchall_1e
    nop

    :cond_31
    :goto_30
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_30
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    :goto_31
    move-object v4, v2

    move-object v2, v3

    :goto_32
    :try_start_2c
    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {v4}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v0, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/h/a;->a(Lcom/anythink/core/api/AdError;)V

    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v6, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v7, -0x3e9

    const-string v8, "Connect error."

    invoke-virtual {v4}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    iget-object v0, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-static {v0}, Lcom/anythink/core/common/h/a;->a(Lcom/anythink/core/common/h/a;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_25

    if-eqz v1, :cond_32

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1f

    goto :goto_33

    :catchall_1f
    nop

    :cond_32
    :goto_33
    if-eqz v3, :cond_33

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_20

    goto :goto_34

    :catchall_20
    nop

    :cond_33
    :goto_34
    if-eqz v2, :cond_34

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_21

    goto :goto_35

    :catchall_21
    nop

    :cond_34
    :goto_35
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_31
    move-exception v2

    move-object p1, v1

    move-object v3, p1

    :goto_36
    move-object v4, v2

    move-object v2, v3

    :goto_37
    :try_start_30
    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {v4}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v0, v6}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/h/a;->a(Lcom/anythink/core/api/AdError;)V

    iget-object v5, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget v6, p0, Lcom/anythink/core/common/h/a$1;->a:I

    const/16 v7, -0x3e8

    const-string v8, "UnknownHostException"

    invoke-virtual {v4}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v0, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/anythink/core/common/h/a;->a(IILjava/lang/String;Lcom/anythink/core/api/AdError;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_25

    if-eqz v1, :cond_35

    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_22

    goto :goto_38

    :catchall_22
    nop

    :cond_35
    :goto_38
    if-eqz v3, :cond_36

    :try_start_32
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_23

    goto :goto_39

    :catchall_23
    nop

    :cond_36
    :goto_39
    if-eqz v2, :cond_37

    :try_start_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_24

    goto :goto_3a

    :catchall_24
    nop

    :cond_37
    :goto_3a
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_38
    return-void

    :catchall_25
    move-exception v0

    :goto_3b
    if-eqz v1, :cond_39

    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_26

    goto :goto_3c

    :catchall_26
    nop

    :cond_39
    :goto_3c
    if-eqz v3, :cond_3a

    :try_start_35
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_27

    goto :goto_3d

    :catchall_27
    nop

    :cond_3a
    :goto_3d
    if-eqz v2, :cond_3b

    :try_start_36
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_28

    goto :goto_3e

    :catchall_28
    nop

    :cond_3b
    :goto_3e
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3c
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, "9999"

    :try_start_0
    iget-object v1, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget-object v1, v1, Lcom/anythink/core/common/h/a;->m:Lcom/anythink/core/common/h/k;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/anythink/core/common/h/a$1;->a:I

    invoke-interface {v1, v2}, Lcom/anythink/core/common/h/k;->onLoadStart(I)V

    :cond_0
    iget-object v1, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    invoke-virtual {v1}, Lcom/anythink/core/common/h/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/anythink/core/common/h/a$1;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget-object v3, v3, Lcom/anythink/core/common/h/a;->m:Lcom/anythink/core/common/h/k;

    if-eqz v3, :cond_2

    iget v4, p0, Lcom/anythink/core/common/h/a$1;->a:I

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v0, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {v3, v4, v2, v0}, Lcom/anythink/core/common/h/k;->onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    :cond_2
    return-void

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v3, p0, Lcom/anythink/core/common/h/a$1;->b:Lcom/anythink/core/common/h/a;

    iget-object v3, v3, Lcom/anythink/core/common/h/a;->m:Lcom/anythink/core/common/h/k;

    if-eqz v3, :cond_4

    iget v4, p0, Lcom/anythink/core/common/h/a$1;->a:I

    invoke-virtual {v1}, Ljava/lang/VirtualMachineError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v0, v1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {v3, v4, v2, v0}, Lcom/anythink/core/common/h/k;->onLoadError(ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    :cond_4
    return-void
.end method
