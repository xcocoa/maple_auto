.class public Lmobi/oneway/export/d/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/oneway/export/d/f$a;,
        Lmobi/oneway/export/d/f$b;,
        Lmobi/oneway/export/d/f$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "POST"

.field public static final b:Ljava/lang/String; = "HEAD"

.field public static final c:Ljava/lang/String; = "Content-Type"

.field public static final d:Ljava/lang/String; = "application/json"

.field private static final e:I = 0x3a98


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Z

.field private n:Ljava/io/File;

.field private o:Z

.field private volatile p:Z

.field private q:Z

.field private r:J

.field private s:J

.field private t:Z

.field private u:[Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/d/f;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/d/f;->j:Ljava/util/Map;

    const/16 v0, 0x3a98

    iput v0, p0, Lmobi/oneway/export/d/f;->k:I

    iput v0, p0, Lmobi/oneway/export/d/f;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->m:Z

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->o:Z

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->p:Z

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->q:Z

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->t:Z

    invoke-virtual {p0, p1}, Lmobi/oneway/export/d/f;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/oneway/export/d/f;->r:J

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/d/f;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/d/f;->j:Ljava/util/Map;

    const/16 v0, 0x3a98

    iput v0, p0, Lmobi/oneway/export/d/f;->k:I

    iput v0, p0, Lmobi/oneway/export/d/f;->l:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->m:Z

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->o:Z

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->p:Z

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->q:Z

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->t:Z

    iput-object p1, p0, Lmobi/oneway/export/d/f;->u:[Ljava/lang/String;

    iput-object p2, p0, Lmobi/oneway/export/d/f;->v:Ljava/lang/String;

    iput v0, p0, Lmobi/oneway/export/d/f;->w:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmobi/oneway/export/d/f;->r:J

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;Ljava/io/OutputStream;Lmobi/oneway/export/d/b;)I
    .locals 9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_0
    invoke-direct {v6, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x400

    :try_start_2
    new-array p1, p1, [B

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->e()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    invoke-virtual {v5, p1, v4, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v3, v7

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object p2, p1, v4

    aput-object v6, p1, v1

    aput-object v5, p1, v0

    invoke-static {p1}, Lmobi/oneway/export/g/j;->a([Ljava/io/Closeable;)V

    return v3

    :catchall_0
    move-exception p1

    move-object v3, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v5, v3

    :goto_3
    new-array p3, v2, [Ljava/io/Closeable;

    aput-object p2, p3, v4

    aput-object v3, p3, v1

    aput-object v5, p3, v0

    invoke-static {p3}, Lmobi/oneway/export/g/j;->a([Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v2}, Lmobi/oneway/export/d/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lmobi/oneway/export/d/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 6

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lmobi/oneway/export/d/f;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmobi/oneway/export/d/f;->h:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    invoke-static {p1}, Lmobi/oneway/export/g/j;->a([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    invoke-static {v2}, Lmobi/oneway/export/g/j;->a([Ljava/io/Closeable;)V

    throw p1
.end method

.method private c(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object p0
.end method

.method private o()Z
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/f;->n:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()Z
    .locals 3

    iget-object v0, p0, Lmobi/oneway/export/d/f;->u:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    iget v2, p0, Lmobi/oneway/export/d/f;->w:I

    array-length v0, v0

    sub-int/2addr v0, v1

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private q()Ljava/net/HttpURLConnection;
    .locals 4

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lmobi/oneway/export/d/f;->m:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmobi/oneway/export/d/f;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmobi/oneway/export/d/f;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lmobi/oneway/export/d/f;->j:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lmobi/oneway/export/d/d;->b()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-static {}, Lmobi/oneway/export/d/d;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_1
    return-object v0
.end method

.method private r()V
    .locals 4

    iget-object v0, p0, Lmobi/oneway/export/d/f;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "GET"

    iput-object v0, p0, Lmobi/oneway/export/d/f;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/d/f;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/d/f;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->j()I

    move-result v0

    const-string v1, " is <= 0."

    if-lez v0, :cond_6

    iget v0, p0, Lmobi/oneway/export/d/f;->k:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lmobi/oneway/export/d/f;->u:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lmobi/oneway/export/d/f;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/oneway/export/d/f;->u:[Ljava/lang/String;

    iget v2, p0, Lmobi/oneway/export/d/f;->w:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/oneway/export/d/f;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lmobi/oneway/export/d/f;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmobi/oneway/export/d/f;->i:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmobi/oneway/export/d/f;->a(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobi/oneway/export/d/f;->g:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmobi/oneway/export/d/f;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lmobi/oneway/export/d/f;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const-string v3, "&"

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)Lmobi/oneway/export/d/f;
    .locals 0

    iput p1, p0, Lmobi/oneway/export/d/f;->k:I

    return-object p0
.end method

.method public a(II)Lmobi/oneway/export/d/f;
    .locals 0

    invoke-virtual {p0, p1}, Lmobi/oneway/export/d/f;->a(I)Lmobi/oneway/export/d/f;

    invoke-virtual {p0, p2}, Lmobi/oneway/export/d/f;->b(I)Lmobi/oneway/export/d/f;

    return-object p0
.end method

.method public a(Ljava/io/File;)Lmobi/oneway/export/d/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmobi/oneway/export/d/f;->a(Ljava/io/File;Z)Lmobi/oneway/export/d/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/File;Z)Lmobi/oneway/export/d/f;
    .locals 2

    iput-object p1, p0, Lmobi/oneway/export/d/f;->n:Ljava/io/File;

    iput-boolean p2, p0, Lmobi/oneway/export/d/f;->o:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Range"

    invoke-virtual {p0, p2, p1}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/d/f;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lmobi/oneway/export/d/f;
    .locals 1

    iput-object p1, p0, Lmobi/oneway/export/d/f;->h:Ljava/lang/String;

    const-string p1, "Content-Type"

    const-string v0, "application/json"

    invoke-virtual {p0, p1, v0}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/d/f;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lmobi/oneway/export/d/f;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lmobi/oneway/export/d/f;->i:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/d/f;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/f;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lmobi/oneway/export/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmobi/oneway/export/d/f;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/d/f;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public a(Lorg/json/JSONArray;)Lmobi/oneway/export/d/f;
    .locals 1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/oneway/export/d/f;->h:Ljava/lang/String;

    const-string p1, "Content-Type"

    const-string v0, "application/json"

    invoke-virtual {p0, p1, v0}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/d/f;

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lmobi/oneway/export/d/f;
    .locals 1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/oneway/export/d/f;->h:Ljava/lang/String;

    const-string p1, "Content-Type"

    const-string v0, "application/json"

    invoke-virtual {p0, p1, v0}, Lmobi/oneway/export/d/f;->a(Ljava/lang/String;Ljava/lang/String;)Lmobi/oneway/export/d/f;

    return-object p0
.end method

.method public a(Z)Lmobi/oneway/export/d/f;
    .locals 0

    iput-boolean p1, p0, Lmobi/oneway/export/d/f;->q:Z

    return-object p0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/d/f;->q:Z

    return v0
.end method

.method public b(I)Lmobi/oneway/export/d/f;
    .locals 0

    iput p1, p0, Lmobi/oneway/export/d/f;->l:I

    return-object p0
.end method

.method public b(Ljava/util/Map;)Lmobi/oneway/export/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmobi/oneway/export/d/f;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmobi/oneway/export/d/f;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public b(Z)Lmobi/oneway/export/d/f;
    .locals 0

    iput-boolean p1, p0, Lmobi/oneway/export/d/f;->t:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/d/f;->t:Z

    return v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmobi/oneway/export/d/f;->i:Ljava/util/Map;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lmobi/oneway/export/d/f;
    .locals 0

    iput-object p1, p0, Lmobi/oneway/export/d/f;->g:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lmobi/oneway/export/d/f;
    .locals 0

    iput-boolean p1, p0, Lmobi/oneway/export/d/f;->m:Z

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/oneway/export/d/f;->p:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lmobi/oneway/export/d/f;->p:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmobi/oneway/export/d/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lmobi/oneway/export/d/f;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/d/f;->k:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lmobi/oneway/export/d/f;->l:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->n()Lmobi/oneway/export/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/d/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()[B
    .locals 1

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->n()Lmobi/oneway/export/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/oneway/export/d/b;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public m()Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public n()Lmobi/oneway/export/d/b;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmobi/oneway/export/d/f;->s:J

    new-instance v0, Lmobi/oneway/export/d/b;

    invoke-direct {v0, p0}, Lmobi/oneway/export/d/b;-><init>(Lmobi/oneway/export/d/f;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lmobi/oneway/export/d/f;->r()V

    invoke-direct {p0}, Lmobi/oneway/export/d/f;->q()Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v2}, Lmobi/oneway/export/d/f;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lmobi/oneway/export/d/b;->a(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmobi/oneway/export/d/b;->a(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v5, v4

    invoke-virtual {v0, v5, v6}, Lmobi/oneway/export/d/b;->a(J)V

    iget-boolean v5, p0, Lmobi/oneway/export/d/f;->q:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmobi/oneway/export/d/f;->o()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lmobi/oneway/export/d/f;->n:Ljava/io/File;

    invoke-virtual {v0, v4}, Lmobi/oneway/export/d/b;->a(Ljava/io/File;)V

    iget-object v4, p0, Lmobi/oneway/export/d/f;->n:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lmobi/oneway/export/g/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lmobi/oneway/export/d/f;->n:Ljava/io/File;

    iget-boolean v5, p0, Lmobi/oneway/export/d/f;->o:Z

    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {p0, v2, v1, v0}, Lmobi/oneway/export/d/f;->a(Ljava/net/HttpURLConnection;Ljava/io/OutputStream;Lmobi/oneway/export/d/b;)I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x200000

    if-gt v4, v1, :cond_3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, v2, v1, v0}, Lmobi/oneway/export/d/f;->a(Ljava/net/HttpURLConnection;Ljava/io/OutputStream;Lmobi/oneway/export/d/b;)I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/oneway/export/d/b;->a([B)V

    :goto_0
    invoke-direct {p0}, Lmobi/oneway/export/d/f;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v3}, Lmobi/oneway/export/d/f;->c(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v0, p0, Lmobi/oneway/export/d/f;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/oneway/export/d/f;->w:I

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->n()Lmobi/oneway/export/d/b;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lmobi/oneway/export/g/j;->a(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_2
    invoke-static {v2}, Lmobi/oneway/export/g/j;->a(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Body is too large to load in memory: contentLength = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " B"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lmobi/oneway/export/d/f;->p()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v0, p0, Lmobi/oneway/export/d/f;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmobi/oneway/export/d/f;->w:I

    invoke-virtual {p0}, Lmobi/oneway/export/d/f;->n()Lmobi/oneway/export/d/b;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lmobi/oneway/export/g/j;->a(Ljava/net/HttpURLConnection;)V

    return-object v0

    :cond_4
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-static {v1}, Lmobi/oneway/export/g/j;->a(Ljava/net/HttpURLConnection;)V

    throw v0
.end method
