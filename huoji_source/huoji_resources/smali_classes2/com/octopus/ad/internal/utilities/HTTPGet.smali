.class public abstract Lcom/octopus/ad/internal/utilities/HTTPGet;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/octopus/ad/internal/utilities/HTTPResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "HTTPGet"


# instance fields
.field private mBinaryStream:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/utilities/HTTPGet;->mBinaryStream:Z

    iput-boolean p1, p0, Lcom/octopus/ad/internal/utilities/HTTPGet;->mBinaryStream:Z

    return-void
.end method

.method private createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method private setConnectionParams(Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-static {}, Lcom/octopus/ad/internal/m;->a()Lcom/octopus/ad/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/m;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/octopus/ad/internal/utilities/HTTPResponse;
    .locals 7

    const-string p1, "An HTTP request with an invalid URL was attempted."

    new-instance v0, Lcom/octopus/ad/internal/utilities/HTTPResponse;

    invoke-direct {v0}, Lcom/octopus/ad/internal/utilities/HTTPResponse;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/utilities/HTTPGet;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    sget-object v3, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1, v4}, Lcom/octopus/ad/internal/utilities/HaoboLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setSucceeded(Z)V

    return-object v0

    :cond_0
    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/utilities/HTTPGet;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/octopus/ad/internal/utilities/HTTPGet;->setConnectionParams(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    sget-object v3, Lcom/octopus/ad/internal/utilities/HTTPGet;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTPGet code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/octopus/ad/utils/b/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-boolean v3, p0, Lcom/octopus/ad/internal/utilities/HTTPGet;->mBinaryStream:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setResponseBody(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setResponseBinaryBody(Ljava/io/ByteArrayOutputStream;)V

    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setHeaders(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v3, 0xc8

    if-ne p1, v3, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setSucceeded(Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setSucceeded(Z)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HttpErrorCode;->TRANSPORT_ERROR:Lcom/octopus/ad/internal/utilities/HttpErrorCode;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setErrorCode(Lcom/octopus/ad/internal/utilities/HttpErrorCode;)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->http_io:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    goto :goto_4

    :catch_1
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setSucceeded(Z)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HttpErrorCode;->TRANSPORT_ERROR:Lcom/octopus/ad/internal/utilities/HttpErrorCode;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setErrorCode(Lcom/octopus/ad/internal/utilities/HttpErrorCode;)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->http_io:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    goto :goto_4

    :catch_2
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setSucceeded(Z)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HttpErrorCode;->URL_FORMAT_ERROR:Lcom/octopus/ad/internal/utilities/HttpErrorCode;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/utilities/HTTPResponse;->setErrorCode(Lcom/octopus/ad/internal/utilities/HttpErrorCode;)V

    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->httpReqLogTag:Ljava/lang/String;

    sget v1, Lcom/octopus/ad/R$string;->http_url_malformed:I

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/octopus/ad/internal/utilities/HaoboLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    :goto_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v0

    :goto_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/utilities/HTTPGet;->doInBackground([Ljava/lang/Void;)Lcom/octopus/ad/internal/utilities/HTTPResponse;

    move-result-object p1

    return-object p1
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public onCancelled(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    check-cast p1, Lcom/octopus/ad/internal/utilities/HTTPResponse;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/utilities/HTTPGet;->onCancelled(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V

    return-void
.end method

.method public abstract onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/octopus/ad/internal/utilities/HTTPResponse;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/utilities/HTTPGet;->onPostExecute(Lcom/octopus/ad/internal/utilities/HTTPResponse;)V

    return-void
.end method
