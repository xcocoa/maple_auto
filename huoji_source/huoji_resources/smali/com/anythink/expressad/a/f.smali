.class public Lcom/anythink/expressad/a/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/expressad/a/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "f"

.field private static final b:I = 0xea60


# instance fields
.field private c:Lcom/anythink/expressad/d/a;

.field private d:Ljava/lang/String;

.field private e:Z

.field private final f:I

.field private g:Lcom/anythink/expressad/a/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/expressad/a/f;->e:Z

    const/high16 v0, 0x300000

    iput v0, p0, Lcom/anythink/expressad/a/f;->f:I

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/foundation/b/a;->c()Lcom/anythink/expressad/foundation/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/expressad/foundation/b/a;->f()Ljava/lang/String;

    invoke-static {}, Lcom/anythink/expressad/d/b;->b()Lcom/anythink/expressad/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/a/f;->c:Lcom/anythink/expressad/d/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/anythink/expressad/d/b;->a()Lcom/anythink/expressad/d/b;

    invoke-static {}, Lcom/anythink/expressad/d/b;->c()Lcom/anythink/expressad/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/expressad/a/f;->c:Lcom/anythink/expressad/d/a;

    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p2

    :cond_0
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :goto_1
    :try_start_3
    iget-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    if-nez p2, :cond_2

    new-instance p2, Lcom/anythink/expressad/a/f$a;

    invoke-direct {p2}, Lcom/anythink/expressad/a/f$a;-><init>()V

    iput-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/anythink/expressad/a/f$a;->h:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    throw p1
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/anythink/expressad/a/f;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZZLcom/anythink/expressad/foundation/d/c;)Lcom/anythink/expressad/a/f$a;
    .locals 4

    const-string v0, "gzip"

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, " "

    const-string v3, "%20"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    new-instance v1, Lcom/anythink/expressad/a/f$a;

    invoke-direct {v1}, Lcom/anythink/expressad/a/f$a;-><init>()V

    iput-object v1, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v2, "User-Agent"

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    if-nez p4, :cond_3

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/anythink/core/common/o/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v3, 0x1

    if-eqz p2, :cond_4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/anythink/expressad/foundation/d/c;->E()I

    move-result p2

    if-ne p2, v3, :cond_4

    invoke-static {}, Lcom/anythink/core/common/o/e;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/anythink/expressad/foundation/d/c;->D()I

    move-result p2

    if-ne p2, v3, :cond_5

    invoke-static {}, Lcom/anythink/core/common/o/e;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p2, "Accept-Encoding"

    invoke-virtual {v1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/anythink/expressad/a/f;->c:Lcom/anythink/expressad/d/a;

    invoke-virtual {p2}, Lcom/anythink/expressad/d/a;->v()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/anythink/expressad/a/f;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "referer"

    iget-object p3, p0, Lcom/anythink/expressad/a/f;->d:Ljava/lang/String;

    invoke-virtual {v1, p2, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const p2, 0xea60

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    const-string p3, "Location"

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/anythink/expressad/a/f$a;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    const-string p3, "Referer"

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/anythink/expressad/a/f$a;->d:Ljava/lang/String;

    iget-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    iput p3, p2, Lcom/anythink/expressad/a/f$a;->f:I

    iget-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/anythink/expressad/a/f$a;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p3

    iput p3, p2, Lcom/anythink/expressad/a/f$a;->e:I

    iget-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/anythink/expressad/a/f$a;->c:Ljava/lang/String;

    iget-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    iget-object p2, p2, Lcom/anythink/expressad/a/f$a;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    iget-object p3, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    iget p4, p3, Lcom/anythink/expressad/a/f$a;->f:I

    const/16 v0, 0xc8

    if-ne p4, v0, :cond_7

    iget-boolean p4, p0, Lcom/anythink/expressad/a/f;->e:Z

    if-eqz p4, :cond_7

    iget p3, p3, Lcom/anythink/expressad/a/f$a;->e:I

    if-lez p3, :cond_7

    const/high16 p4, 0x300000

    if-ge p3, p4, :cond_7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, ".apk"

    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p3, :cond_7

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/anythink/expressad/a/f;->a(Ljava/io/InputStream;Z)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    if-eqz p3, :cond_7

    array-length v0, p3

    if-lez v0, :cond_7

    array-length p3, p3

    if-ge p3, p4, :cond_7

    iget-object p3, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/anythink/expressad/a/f$a;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    :cond_7
    :try_start_4
    iput-object p1, p0, Lcom/anythink/expressad/a/f;->d:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    iget-object p1, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_0

    :catchall_2
    move-exception p1

    :goto_0
    :try_start_5
    iget-object p2, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/anythink/expressad/a/f$a;->h:Ljava/lang/String;

    iget-object p1, p0, Lcom/anythink/expressad/a/f;->g:Lcom/anythink/expressad/a/f$a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-object p1

    :catchall_3
    move-exception p1

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw p1
.end method
