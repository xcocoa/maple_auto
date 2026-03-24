.class public abstract Lz2/o000OO0O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static AGENT:Ljava/lang/String; = null

.field private static final DEFAULT_SIG:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static GZIP:Z = true

.field private static NETWORK_POOL:I = 0x4

.field private static NET_TIMEOUT:I = 0x7530

.field private static REUSE_CLIENT:Z = true

.field private static SIMULATE_ERROR:Z = false

.field private static final boundary:Ljava/lang/String; = "*****"

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient; = null

.field private static fetchExe:Ljava/util/concurrent/ExecutorService; = null

.field private static lastStatus:I = 0xc8

.field private static final lineEnd:Ljava/lang/String; = "\r\n"

.field private static proxyHandle:Lz2/o00O0000; = null

.field private static ssf:Lorg/apache/http/conn/scheme/SocketFactory; = null

.field private static st:Lz2/o0O0ooO; = null

.field private static final twoHyphens:Ljava/lang/String; = "--"


# instance fields
.field private abort:Z

.field private act:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public ah:Lz2/o000Oo0;

.field private blocked:Z

.field private cacheDir:Ljava/io/File;

.field private callback:Ljava/lang/String;

.field private completed:Z

.field public cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field private expire:J

.field public fileCache:Z

.field private handler:Ljava/lang/Object;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public memCache:Z

.field private method:I

.field private networkUrl:Ljava/lang/String;

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private policy:I

.field private progress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Lorg/apache/http/HttpHost;

.field private reauth:Z

.field private redirect:Z

.field private refresh:Z

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;

.field public result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private retry:I

.field public status:Lz2/o000O;

.field private targetFile:Ljava/io/File;

.field private timeout:I

.field private transformer:Lz2/o0O0ooO;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private uiCallback:Z

.field private url:Ljava/lang/String;

.field private whandler:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lz2/o000O;

    aput-object v2, v0, v1

    sput-object v0, Lz2/o000OO0O;->DEFAULT_SIG:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lz2/o000OO0O;->policy:I

    iput v0, p0, Lz2/o000OO0O;->timeout:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/o000OO0O;->redirect:Z

    const-string v2, "UTF-8"

    iput-object v2, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    const/4 v2, 0x4

    iput v2, p0, Lz2/o000OO0O;->method:I

    iput-boolean v1, p0, Lz2/o000OO0O;->uiCallback:Z

    iput v0, p0, Lz2/o000OO0O;->retry:I

    return-void
.end method

.method public static synthetic access$0(Lz2/o000OO0O;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    return-object p0
.end method

.method private afterWork()V
    .locals 2

    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lz2/o000OO0O;->memCache:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lz2/o000OO0O;->memPut(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lz2/o000OO0O;->callback()V

    invoke-direct {p0}, Lz2/o000OO0O;->clear()V

    return-void
.end method

.method private backgroundWork()V
    .locals 1

    iget-boolean v0, p0, Lz2/o000OO0O;->refresh:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lz2/o000OO0O;->fileCache:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz2/o000OO0O;->fileWork()V

    :cond_0
    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lz2/o000OO0O;->datastoreWork()V

    :cond_1
    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lz2/o000OO0O;->networkWork()V

    :cond_2
    return-void
.end method

.method public static cancel()V
    .locals 1

    sget-object v0, Lz2/o000OO0O;->fetchExe:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lz2/o000OO0O;->fetchExe:Ljava/util/concurrent/ExecutorService;

    :cond_0
    invoke-static {}, Lz2/o000OO00;->clearTasks()V

    return-void
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000OO0O;->whandler:Ljava/lang/ref/Reference;

    iput-object v0, p0, Lz2/o000OO0O;->handler:Ljava/lang/Object;

    iput-object v0, p0, Lz2/o000OO0O;->progress:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lz2/o000OO0O;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object v0, p0, Lz2/o000OO0O;->transformer:Lz2/o0O0ooO;

    iput-object v0, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    iput-object v0, p0, Lz2/o000OO0O;->act:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o000OO0O;->progress:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lz2/oOO00O;

    invoke-direct {v1, v0}, Lz2/oOO00O;-><init>(Ljava/lang/Object;)V

    :cond_1
    invoke-static {p1, p2, p3, v1}, Lz2/o00O000;->OooO0oo(Ljava/io/InputStream;Ljava/io/OutputStream;ILz2/oOO00O;)V

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lz2/o000OO0O;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lz2/o000OO0O;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p4, p5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    const-string v0, "copy failed, deleting files"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    invoke-static {p1}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    invoke-static {p2}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    throw p3
.end method

.method private correctEncoding([BLjava/lang/String;Lz2/o000O;)Ljava/lang/String;
    .locals 3

    const-string v0, "utf-8"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p3

    :cond_0
    const-string p2, "Content-Type"

    invoke-virtual {p3, p2}, Lz2/o000O;->OooOOoo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lz2/o000OO0O;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "parsing header"

    invoke-static {v2, p2}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p3

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0, p2}, Lz2/o000OO0O;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parsing needed"

    invoke-static {v2, v1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "correction needed"

    invoke-static {v2, v1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Lz2/o000O;->OooO0o([B)Lz2/o000O;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object p2, v2

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p2

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    invoke-static {p1}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    move-object p2, v1

    :cond_2
    :goto_1
    return-object p2
.end method

.method private datastoreWork()V
    .locals 2

    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lz2/o000OO0O;->datastoreGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lz2/o000O;->Oooo0(I)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o000O;->OooO0oO()Lz2/o000O;

    :cond_0
    return-void
.end method

.method private execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2, v1, p1, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p1, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lz2/o000OO0O;->fetchExe:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lz2/o000OO0O;->NETWORK_POOL:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lz2/o000OO0O;->fetchExe:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lz2/o000OO0O;->fetchExe:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static extractParams(Landroid/net/Uri;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return-object v0

    :cond_0
    aget-object v4, p0, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lt v5, v6, :cond_1

    aget-object v5, v4, v2

    aget-object v4, v4, v7

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    array-length v5, v4

    if-ne v5, v7, :cond_2

    aget-object v4, v4, v2

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static extractUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private filePut()V
    .locals 4

    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lz2/o000OO0O;->fileCache:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v0}, Lz2/o000O;->OooOOO()[B

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v1}, Lz2/o000O;->OooOoO()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lz2/o000OO0O;->getCacheFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v2}, Lz2/o000O;->OooOo0()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    iget-object v3, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v1, v0}, Lz2/o000OO0O;->filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz2/o000O;->OooO0o([B)Lz2/o000O;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v0}, Lz2/o000O;->OooOO0o()I

    move-result v0

    const/16 v1, -0x67

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lz2/o000OO0O;->getCacheFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const-string v0, "invalidated cache due to transform error"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private fileWork()V
    .locals 5

    iget-object v0, p0, Lz2/o000OO0O;->cacheDir:Ljava/io/File;

    invoke-direct {p0}, Lz2/o000OO0O;->getCacheUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lz2/o000OO0O;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lz2/o000O;->Oooo0(I)Lz2/o000O;

    iget-object v1, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    iget-object v2, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {p0, v1, v0, v2}, Lz2/o000OO0O;->fileGet(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lz2/o000O;->Oooo0O0(Ljava/util/Date;)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o000O;->OooO0oO()Lz2/o000O;

    :cond_0
    return-void
.end method

.method public static getActiveCount()I
    .locals 2

    sget-object v0, Lz2/o000OO0O;->fetchExe:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCacheUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz2/o000Oo0;->OooO0oo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    return-object v0
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lz2/o000OO0O;->parseCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 6

    sget-object v0, Lz2/o000OO0O;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    sget-boolean v0, Lz2/o000OO0O;->REUSE_CLIENT:Z

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "creating http client"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v1, Lz2/o000OO0O;->NET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v1, Lz2/o000OO0O;->NET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    const-string v5, "http"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    sget-object v3, Lz2/o000OO0O;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    if-nez v3, :cond_1

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    :cond_1
    const/16 v4, 0x1bb

    const-string v5, "https"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v1, Lz2/o000OO0O;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    :cond_2
    sget-object v0, Lz2/o000OO0O;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method private getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getLastStatus()I
    .locals 1

    sget v0, Lz2/o000OO0O;->lastStatus:I

    return v0
.end method

.method private getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000OO0O;->networkUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lz2/o000Oo0;->OooO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getPreFile()Ljava/io/File;
    .locals 3

    invoke-virtual {p0}, Lz2/o000OO0O;->isStreamingContent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lz2/o000OO0O;->targetFile:Ljava/io/File;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lz2/o000OO0O;->fileCache:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lz2/o000OO0O;->getCacheFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lz2/o00O000;->OooOoo0()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/o000OO0O;->cacheDir:Ljava/io/File;

    :cond_2
    iget-object v2, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    invoke-static {v0, v2}, Lz2/o00O000;->OooOOoo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method

.method private httpDelete(Ljava/lang/String;Lz2/o000O;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "get"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lz2/o000OO0O;->patchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lz2/o000OO0O;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lz2/o000O;)V

    return-void
.end method

.method private httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lz2/o000O;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    invoke-static {}, Lz2/o000OO0O;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v8

    sget-object v0, Lz2/o000OO0O;->proxyHandle:Lz2/o00O0000;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v7, v1, v8}, Lz2/o00O0000;->OooO00o(Lz2/o000OO0O;Lorg/apache/http/HttpRequest;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :cond_0
    sget-object v0, Lz2/o000OO0O;->AGENT:Ljava/lang/String;

    const-string v2, "User-Agent"

    const-string v3, "gzip"

    if-eqz v0, :cond_1

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-boolean v0, Lz2/o000OO0O;->GZIP:Z

    if-eqz v0, :cond_2

    invoke-interface {v1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, v7, Lz2/o000OO0O;->headers:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, v7, Lz2/o000OO0O;->headers:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v2, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_2
    sget-boolean v0, Lz2/o000OO0O;->GZIP:Z

    if-eqz v0, :cond_6

    iget-object v0, v7, Lz2/o000OO0O;->headers:Ljava/util/Map;

    const-string v2, "Accept-Encoding"

    if-eqz v0, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-interface {v1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, v7, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v7, v1}, Lz2/o000Oo0;->OooO0O0(Lz2/o000OO0O;Lorg/apache/http/HttpRequest;)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lz2/o000OO0O;->makeCookie()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v2, "Cookie"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    iget-object v0, v7, Lz2/o000OO0O;->proxy:Lorg/apache/http/HttpHost;

    const-string v4, "http.route.default-proxy"

    if-eqz v0, :cond_9

    invoke-interface {v2, v4, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_9
    iget v0, v7, Lz2/o000OO0O;->timeout:I

    if-lez v0, :cond_a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "http.connection.timeout"

    invoke-interface {v2, v5, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    iget v0, v7, Lz2/o000OO0O;->timeout:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "http.socket.timeout"

    invoke-interface {v2, v5, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_a
    iget-boolean v0, v7, Lz2/o000OO0O;->redirect:Z

    if-nez v0, :cond_b

    const/4 v0, 0x0

    const-string v5, "http.protocol.handle-redirects"

    invoke-interface {v2, v5, v0}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    :cond_b
    new-instance v9, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v9}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    const-string v5, "http.cookie-store"

    invoke-interface {v9, v5, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, v7, Lz2/o000OO0O;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-boolean v0, v7, Lz2/o000OO0O;->abort:Z

    if-nez v0, :cond_17

    sget-boolean v0, Lz2/o000OO0O;->SIMULATE_ERROR:Z

    if-nez v0, :cond_16

    const/4 v10, 0x0

    :try_start_0
    invoke-direct {v7, v1, v8, v9}, Lz2/o000OO0O;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v11, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v5, v0

    iget-object v0, v7, Lz2/o000OO0O;->proxy:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_15

    const-string v0, "proxy failed, retrying without proxy"

    invoke-static {v0}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    invoke-interface {v2, v4, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-direct {v7, v1, v8, v9}, Lz2/o000OO0O;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/16 v1, 0xc8

    if-lt v12, v1, :cond_12

    const/16 v1, 0x12c

    if-lt v12, v1, :cond_c

    goto/16 :goto_a

    :cond_c
    const-string v1, "http.target_host"

    invoke-interface {v9, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/HttpHost;

    const-string v2, "http.request"

    invoke-interface {v9, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v1, 0x20

    const/high16 v2, 0x10000

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lz2/o000OO0O;->getPreFile()Ljava/io/File;

    move-result-object v15

    if-nez v15, :cond_d

    new-instance v2, Lz2/o00O00O;

    invoke-direct {v2, v1}, Lz2/o00O00O;-><init>(I)V

    move-object/from16 v16, v2

    move-object v5, v10

    goto :goto_5

    :cond_d
    invoke-direct {v7, v15}, Lz2/o000OO0O;->makeTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v5, v1

    move-object/from16 v16, v2

    :goto_5
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-direct {v7, v0}, Lz2/o000OO0O;->getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v17, v2

    goto :goto_6

    :cond_e
    move-object/from16 v17, v1

    :goto_6
    :try_start_4
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v4, v0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lz2/o000OO0O;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;ILjava/io/File;Ljava/io/File;)V

    if-nez v15, :cond_f

    move-object/from16 v0, v16

    check-cast v0, Lz2/o00O00O;

    invoke-virtual {v0}, Lz2/o00O00O;->toByteArray()[B

    move-result-object v0

    goto :goto_8

    :cond_f
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_10

    goto :goto_7

    :cond_10
    move-object v0, v10

    goto :goto_8

    :cond_11
    :goto_7
    move-object v0, v10

    move-object v15, v0

    :goto_8
    invoke-static/range {v17 .. v17}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    invoke-static/range {v16 .. v16}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    move-object v2, v10

    move-object v10, v0

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object/from16 v10, v17

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v10, v1

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v16, v10

    :goto_9
    invoke-static {v10}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    invoke-static/range {v16 .. v16}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    throw v0

    :cond_12
    :goto_a
    if-eqz v0, :cond_13

    :try_start_5
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-direct {v7, v0}, Lz2/o000OO0O;->getEncoding(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v1}, Lz2/o000OO0O;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    const-string v0, "error"

    invoke-static {v0, v2}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_d

    :catch_1
    move-exception v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object v10, v1

    goto :goto_c

    :catch_2
    move-exception v0

    move-object v2, v10

    goto :goto_b

    :catchall_5
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v1, v10

    move-object v2, v1

    :goto_b
    :try_start_8
    invoke-static {v0}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_d

    :goto_c
    invoke-static {v10}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    throw v0

    :cond_13
    move-object v1, v10

    move-object v2, v1

    :goto_d
    invoke-static {v1}, Lz2/o00O000;->OooO0o(Ljava/io/Closeable;)V

    move-object/from16 v14, p2

    move-object v15, v10

    :goto_e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "response"

    invoke-static {v1, v0}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v10, :cond_14

    array-length v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v1, p3

    invoke-virtual {v1, v12}, Lz2/o000O;->OooO0Oo(I)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0, v13}, Lz2/o000O;->OooOooO(Ljava/lang/String;)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0, v2}, Lz2/o000O;->OooO0oo(Ljava/lang/String;)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0, v14}, Lz2/o000O;->Oooo000(Ljava/lang/String;)Lz2/o000O;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lz2/o000O;->Oooo0O0(Ljava/util/Date;)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0, v10}, Lz2/o000O;->OooO0o([B)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0, v15}, Lz2/o000O;->OooOO0(Ljava/io/File;)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0, v8}, Lz2/o000O;->OooO00o(Lorg/apache/http/impl/client/DefaultHttpClient;)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0, v9}, Lz2/o000O;->OooO0o0(Lorg/apache/http/protocol/HttpContext;)Lz2/o000O;

    move-result-object v0

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz2/o000O;->OooOoo0([Lorg/apache/http/Header;)Lz2/o000O;

    return-void

    :cond_15
    throw v5

    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Simulated Error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lz2/o000O;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lz2/o000O;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    const-string v0, "%entity"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/http/HttpEntity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/http/HttpEntity;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {p3, v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v0, p3

    :goto_1
    iget-object p3, p0, Lz2/o000OO0O;->headers:Ljava/util/Map;

    if-eqz p3, :cond_2

    const-string v1, "Content-Type"

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lz2/o000OO0O;->headers:Ljava/util/Map;

    const-string v2, "application/x-www-form-urlencoded;charset=UTF-8"

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p2, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, p2, p1, p4}, Lz2/o000OO0O;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lz2/o000O;)V

    return-void

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private httpGet(Ljava/lang/String;Lz2/o000O;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "get"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lz2/o000OO0O;->patchUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lz2/o000OO0O;->httpDo(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lz2/o000O;)V

    return-void
.end method

.method private httpMulti(Ljava/lang/String;Ljava/util/Map;Lz2/o000O;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lz2/o000O;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "multipart"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz2/o000OO0O;->proxy:Lorg/apache/http/HttpHost;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "proxy"

    invoke-static {v3, v1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lz2/o000OO0O;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lz2/o000OO0O;->proxy:Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lz2/o000OO0O;->proxyHandle:Lz2/o00O0000;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Lz2/o00O0000;->OooO0O0(Lz2/o000OO0O;)Ljava/net/Proxy;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    sget v3, Lz2/o000OO0O;->NET_TIMEOUT:I

    mul-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "multipart/form-data;charset=utf-8;boundary=*****"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lz2/o000OO0O;->headers:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lz2/o000OO0O;->headers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-direct {p0}, Lz2/o000OO0O;->makeCookie()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v3, "Cookie"

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p0, v0}, Lz2/o000Oo0;->OooO00o(Lz2/o000OO0O;Ljava/net/HttpURLConnection;)V

    :cond_6
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    const-string p2, "--*****--\r\n"

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    if-lt p2, v4, :cond_8

    const/16 v4, 0x12c

    if-lt p2, v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lz2/o000OO0O;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    move-object v4, v2

    goto :goto_6

    :cond_8
    :goto_5
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lz2/o000OO0O;->toData(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v4, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "error"

    invoke-static {v0, v4}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :goto_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "response"

    invoke-static {v5, v3}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_9

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p3, p2}, Lz2/o000O;->OooO0Oo(I)Lz2/o000O;

    move-result-object p2

    invoke-virtual {p2, v1}, Lz2/o000O;->OooOooO(Ljava/lang/String;)Lz2/o000O;

    move-result-object p2

    invoke-virtual {p2, p1}, Lz2/o000O;->Oooo000(Ljava/lang/String;)Lz2/o000O;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Lz2/o000O;->Oooo0O0(Ljava/util/Date;)Lz2/o000O;

    move-result-object p1

    invoke-virtual {p1, v0}, Lz2/o000O;->OooO0o([B)Lz2/o000O;

    move-result-object p1

    invoke-virtual {p1, v4}, Lz2/o000O;->OooO0oo(Ljava/lang/String;)Lz2/o000O;

    move-result-object p1

    invoke-virtual {p1, v2}, Lz2/o000O;->OooO00o(Lorg/apache/http/impl/client/DefaultHttpClient;)Lz2/o000O;

    return-void

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lz2/o000OO0O;->writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method private httpPost(Ljava/lang/String;Ljava/util/Map;Lz2/o000O;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lz2/o000O;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "post"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lz2/o000OO0O;->httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lz2/o000O;)V

    return-void
.end method

.method private httpPut(Ljava/lang/String;Ljava/util/Map;Lz2/o000O;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lz2/o000O;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "put"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lz2/o000OO0O;->httpEntity(Ljava/lang/String;Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Ljava/util/Map;Lz2/o000O;)V

    return-void
.end method

.method private isActive()Z
    .locals 2

    iget-object v0, p0, Lz2/o000OO0O;->act:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isMultiPart(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v0, v1, Ljava/io/File;

    if-nez v0, :cond_2

    instance-of v0, v1, [B

    if-nez v0, :cond_2

    instance-of v0, v1, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static makeAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Basic "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lz2/o00O000;->OooOOOO([BII)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private makeCookie()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lz2/o000OO0O;->cookies:Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lz2/o000OO0O;->cookies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lz2/o000OO0O;->cookies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeTempFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".tmp"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    return-object v0
.end method

.method private network()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    iget-object v1, p0, Lz2/o000OO0O;->params:Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7d0

    if-le v2, v3, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lz2/o000OO0O;->extractUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lz2/o000OO0O;->extractParams(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :cond_0
    invoke-direct {p0, v0}, Lz2/o000OO0O;->getNetworkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    iget v3, p0, Lz2/o000OO0O;->method:I

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-direct {p0, v0, v1}, Lz2/o000OO0O;->httpDelete(Ljava/lang/String;Lz2/o000O;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-direct {p0, v0, v1, v2}, Lz2/o000OO0O;->httpPut(Ljava/lang/String;Ljava/util/Map;Lz2/o000O;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-direct {p0, v0, v1}, Lz2/o000OO0O;->httpGet(Ljava/lang/String;Lz2/o000O;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lz2/o000OO0O;->isMultiPart(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-direct {p0, v0, v1, v2}, Lz2/o000OO0O;->httpMulti(Ljava/lang/String;Ljava/util/Map;Lz2/o000O;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-direct {p0, v0, v1, v2}, Lz2/o000OO0O;->httpPost(Ljava/lang/String;Ljava/util/Map;Lz2/o000O;)V

    :goto_0
    return-void
.end method

.method private network(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    invoke-direct {p0}, Lz2/o000OO0O;->network()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lz2/o000OO0O;->network()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    add-int/lit8 v2, p1, -0x1

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    throw v1
.end method

.method private networkWork()V
    .locals 6

    const-string v0, "network error"

    iget-object v1, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    const/16 v2, -0x65

    if-nez v1, :cond_0

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v0, v2}, Lz2/o000O;->OooO0Oo(I)Lz2/o000O;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lz2/o000O;->OooO0oO()Lz2/o000O;

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget v3, p0, Lz2/o000OO0O;->retry:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lz2/o000OO0O;->network(I)V

    iget-object v3, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v3, p0, v5}, Lz2/o000Oo0;->OooO0o(Lz2/o000OO0O;Lz2/o000O;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lz2/o000OO0O;->reauth:Z

    if-nez v3, :cond_2

    const-string v3, "reauth needed"

    iget-object v5, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v5}, Lz2/o000O;->OooOo0O()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v4, p0, Lz2/o000OO0O;->reauth:Z

    iget-object v3, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    invoke-virtual {v3, p0}, Lz2/o000Oo0;->OooOO0(Lz2/o000OO0O;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lz2/o000OO0O;->network()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v3, v4}, Lz2/o000O;->OooOooo(Z)Lz2/o000O;

    return-void

    :cond_2
    :goto_1
    iget-object v3, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v3}, Lz2/o000O;->OooOOO()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-static {v3}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :cond_3
    iget-object v3, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v3, v2}, Lz2/o000O;->OooO0Oo(I)Lz2/o000O;

    move-result-object v2

    invoke-virtual {v2, v0}, Lz2/o000O;->OooOooO(Ljava/lang/String;)Lz2/o000O;

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v4, "IOException"

    invoke-static {v4}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "No authentication challenges found"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Lz2/o000O;->OooO0Oo(I)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0, v3}, Lz2/o000O;->OooOooO(Ljava/lang/String;)Lz2/o000O;

    :goto_2
    :try_start_1
    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    iget-object v2, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {p0, v0, v1, v2}, Lz2/o000OO0O;->transform(Ljava/lang/String;[BLz2/o000O;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :goto_3
    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    const/16 v1, -0x67

    invoke-virtual {v0, v1}, Lz2/o000O;->OooO0Oo(I)Lz2/o000O;

    move-result-object v0

    const-string v1, "transform error"

    invoke-virtual {v0, v1}, Lz2/o000O;->OooOooO(Ljava/lang/String;)Lz2/o000O;

    :cond_4
    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v0}, Lz2/o000O;->OooOO0o()I

    move-result v0

    sput v0, Lz2/o000OO0O;->lastStatus:I

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    goto/16 :goto_0
.end method

.method private parseCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "charset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, ";"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[^\\w-]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static patchUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " "

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\|"

    const-string v1, "%7C"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private self()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    return-object p0
.end method

.method public static setAgent(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lz2/o000OO0O;->AGENT:Ljava/lang/String;

    return-void
.end method

.method public static setGZip(Z)V
    .locals 0

    sput-boolean p0, Lz2/o000OO0O;->GZIP:Z

    return-void
.end method

.method public static setNetworkLimit(I)V
    .locals 1

    const/16 v0, 0x19

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lz2/o000OO0O;->NETWORK_POOL:I

    const/4 v0, 0x0

    sput-object v0, Lz2/o000OO0O;->fetchExe:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "setting network limit"

    invoke-static {v0, p0}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static setProxyHandle(Lz2/o00O0000;)V
    .locals 0

    sput-object p0, Lz2/o000OO0O;->proxyHandle:Lz2/o00O0000;

    return-void
.end method

.method public static setReuseHttpClient(Z)V
    .locals 0

    sput-boolean p0, Lz2/o000OO0O;->REUSE_CLIENT:Z

    const/4 p0, 0x0

    sput-object p0, Lz2/o000OO0O;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public static setSSF(Lorg/apache/http/conn/scheme/SocketFactory;)V
    .locals 0

    sput-object p0, Lz2/o000OO0O;->ssf:Lorg/apache/http/conn/scheme/SocketFactory;

    const/4 p0, 0x0

    sput-object p0, Lz2/o000OO0O;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public static setSimulateError(Z)V
    .locals 0

    sput-boolean p0, Lz2/o000OO0O;->SIMULATE_ERROR:Z

    return-void
.end method

.method public static setTimeout(I)V
    .locals 0

    sput p0, Lz2/o000OO0O;->NET_TIMEOUT:I

    return-void
.end method

.method public static setTransformer(Lz2/o0O0ooO;)V
    .locals 0

    sput-object p0, Lz2/o000OO0O;->st:Lz2/o0O0ooO;

    return-void
.end method

.method private toData(Ljava/lang/String;Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "gzip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, p1

    :cond_0
    invoke-static {p2}, Lz2/o00O000;->OooooO0(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method private wake()V
    .locals 1

    iget-boolean v0, p0, Lz2/o000OO0O;->blocked:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private work(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lz2/o000OO0O;->memGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    iget-object p1, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lz2/o000O;->Oooo0(I)Lz2/o000O;

    move-result-object p1

    invoke-virtual {p1}, Lz2/o000O;->OooO0oO()Lz2/o000O;

    invoke-virtual {p0}, Lz2/o000OO0O;->callback()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lz2/o000OO0O;->policy:I

    invoke-static {p1, v0}, Lz2/o00O000;->OooOOo(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lz2/o000OO0O;->cacheDir:Ljava/io/File;

    invoke-static {p0}, Lz2/o000OO0O;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " filename=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "Content-Type: application/octet-stream"

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p2, "Content-Transfer-Encoding: binary"

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-static {p3, p0}, Lz2/o00O000;->OooO0oO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private static writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "--*****\r\n"

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method private static writeObject(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, Ljava/io/File;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, p1, v0, v1}, Lz2/o000OO0O;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p2, [B

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0, p1, p1, v0}, Lz2/o000OO0O;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/io/InputStream;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/io/InputStream;

    invoke-static {p0, p1, p1, p2}, Lz2/o000OO0O;->writeData(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lz2/o000OO0O;->writeField(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz2/o000OO0O;->abort:Z

    iget-object v0, p0, Lz2/o000OO0O;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lz2/o000OO0O;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    return-void
.end method

.method public accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    iget-wide v0, p0, Lz2/o000OO0O;->expire:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return-object v2

    :cond_0
    invoke-static {p1, p2}, Lz2/o00O000;->OooOo0O(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lz2/o000OO0O;->expire:J

    cmp-long p2, v0, v3

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v0, v3

    iget-wide v3, p0, Lz2/o000OO0O;->expire:J

    cmp-long p2, v0, v3

    if-lez p2, :cond_1

    return-object v2

    :cond_1
    return-object p1
.end method

.method public async(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const-string v1, "Warning"

    if-eqz v0, :cond_0

    const-string v0, "Possible memory leak. Calling ajax with a terminated activity."

    invoke-static {v1, v0}, Lz2/o00O000;->OooooOo(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string p1, "type() is not called with response type."

    invoke-static {v1, p1}, Lz2/o00O000;->OooooOo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz2/o000OO0O;->act:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lz2/o000OO0O;->async(Landroid/content/Context;)V

    return-void
.end method

.method public async(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    if-nez v0, :cond_0

    new-instance v0, Lz2/o000O;

    invoke-direct {v0}, Lz2/o000O;-><init>()V

    iput-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    iget-object v1, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lz2/o000O;->Oooo000(Ljava/lang/String;)Lz2/o000O;

    move-result-object v0

    iget-boolean v1, p0, Lz2/o000OO0O;->refresh:Z

    invoke-virtual {v0, v1}, Lz2/o000O;->Oooo00O(Z)Lz2/o000O;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lz2/o000O;->OooOOOO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v0}, Lz2/o000O;->Oooo00o()Lz2/o000O;

    const/4 v0, 0x0

    iput-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz2/o000OO0O;->showProgress(Z)V

    iget-object v0, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lz2/o000Oo0;->OooO0o0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    const-string v0, "auth needed"

    invoke-static {v0, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    invoke-virtual {p1, p0}, Lz2/o000Oo0;->OooO0Oo(Lz2/o000OO0O;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lz2/o000OO0O;->work(Landroid/content/Context;)V

    return-void
.end method

.method public auth(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string v0, "g."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lz2/o000O0;

    invoke-direct {v0, p1, p2, p3}, Lz2/o000O0;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    :cond_0
    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public auth(Lz2/o000Oo0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o000Oo0;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->ah:Lz2/o000Oo0;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public block()V
    .locals 2

    invoke-static {}, Lz2/o00O000;->Oooo00O()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz2/o000OO0O;->completed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lz2/o000OO0O;->blocked:Z

    sget v0, Lz2/o000OO0O;->NET_TIMEOUT:I

    add-int/lit16 v0, v0, 0x1388

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot block UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheAvailable(Landroid/content/Context;)Z
    .locals 1

    iget-boolean v0, p0, Lz2/o000OO0O;->fileCache:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lz2/o000OO0O;->policy:I

    invoke-static {p1, v0}, Lz2/o00O000;->OooOOo(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lz2/o00O000;->OooOo0O(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public callback()V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz2/o000OO0O;->showProgress(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lz2/o000OO0O;->completed:Z

    invoke-direct {p0}, Lz2/o000OO0O;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lz2/o000OO0O;->callback:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lz2/o000OO0O;->getHandler()Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v7, v0

    iget-object v4, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    aput-object v4, v7, v1

    const-class v4, Lz2/o000O;

    const/4 v5, 0x2

    aput-object v4, v7, v5

    iget-object v4, p0, Lz2/o000OO0O;->callback:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v8, 0x1

    sget-object v9, Lz2/o000OO0O;->DEFAULT_SIG:[Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v10, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    aput-object v10, v2, v0

    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    aput-object v0, v2, v1

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    aput-object v0, v2, v5

    move v5, v6

    move v6, v8

    move-object v8, v9

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Lz2/o00O000;->OooOoo(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    iget-object v1, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    iget-object v2, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {p0, v0, v1, v2}, Lz2/o000OO0O;->callback(Ljava/lang/String;Ljava/lang/Object;Lz2/o000O;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    iget-object v1, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    iget-object v2, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {p0, v0, v1, v2}, Lz2/o000OO0O;->skip(Ljava/lang/String;Ljava/lang/Object;Lz2/o000O;)V

    :goto_0
    invoke-direct {p0}, Lz2/o000OO0O;->filePut()V

    iget-boolean v0, p0, Lz2/o000OO0O;->blocked:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v0}, Lz2/o000O;->OooO0O0()V

    :cond_2
    invoke-direct {p0}, Lz2/o000OO0O;->wake()V

    invoke-static {}, Lz2/o00O000;->OooOO0o()V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/Object;Lz2/o000O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lz2/o000O;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public cookie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000OO0O;->cookies:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/o000OO0O;->cookies:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lz2/o000OO0O;->cookies:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public cookies(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->cookies:Ljava/util/Map;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public datastoreGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public encoding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public expire(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TK;"
        }
    .end annotation

    iput-wide p1, p0, Lz2/o000OO0O;->expire:J

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public failure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lz2/o000O;->OooO0Oo(I)Lz2/o000O;

    move-result-object p1

    invoke-virtual {p1, p2}, Lz2/o000O;->OooOooO(Ljava/lang/String;)Lz2/o000O;

    move-result-object p1

    invoke-virtual {p1}, Lz2/o000O;->OooO0oO()Lz2/o000O;

    iget-boolean p1, p0, Lz2/o000OO0O;->uiCallback:Z

    if-eqz p1, :cond_0

    invoke-static {p0}, Lz2/o00O000;->Oooo0o(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lz2/o000OO0O;->afterWork()V

    :cond_1
    :goto_0
    return-void
.end method

.method public fileCache(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lz2/o000OO0O;->fileCache:Z

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fileGet(Ljava/lang/String;Ljava/io/File;Lz2/o000O;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lz2/o000O;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lz2/o000OO0O;->isStreamingContent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, p2}, Lz2/o000O;->OooOO0(Ljava/io/File;)Lz2/o000O;

    move-object p2, v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lz2/o00O000;->OooooO0(Ljava/io/InputStream;)[B

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lz2/o000OO0O;->transform(Ljava/lang/String;[BLz2/o000O;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public filePut(Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/io/File;",
            "[B)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    invoke-static {p3, p4, p1, p2}, Lz2/o00O000;->OoooOoO(Ljava/io/File;[BJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCacheFile()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lz2/o000OO0O;->cacheDir:Ljava/io/File;

    invoke-direct {p0}, Lz2/o000OO0O;->getCacheUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/o00O000;->OooOOoo(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000OO0O;->callback:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz2/o000OO0O;->handler:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lz2/o000OO0O;->whandler:Ljava/lang/ref/Reference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000OO0O;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lz2/o000O;
    .locals 1

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    return-object v0
.end method

.method public handler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->handler:Ljava/lang/Object;

    iput-object p2, p0, Lz2/o000OO0O;->callback:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/o000OO0O;->whandler:Ljava/lang/ref/Reference;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000OO0O;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/o000OO0O;->headers:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lz2/o000OO0O;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headers(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->headers:Ljava/util/Map;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isStreamingContent()Z
    .locals 2

    const-class v0, Ljava/io/File;

    iget-object v1, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lorg/xmlpull/v1/XmlPullParser;

    iget-object v1, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/io/InputStream;

    iget-object v1, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lz2/oo00o;

    iget-object v1, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public memCache(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lz2/o000OO0O;->memCache:Z

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public memGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public method(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lz2/o000OO0O;->method:I

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public networkUrl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->networkUrl:Ljava/lang/String;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public param(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000OO0O;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz2/o000OO0O;->params:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lz2/o000OO0O;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public params(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->params:Ljava/util/Map;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public policy(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lz2/o000OO0O;->policy:I

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public progress(Landroid/app/Dialog;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o000OO0O;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public progress(Landroid/view/View;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TK;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lz2/o000OO0O;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public progress(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz2/o000OO0O;->progress:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public proxy(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TK;"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lz2/o000OO0O;->proxy:Lorg/apache/http/HttpHost;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz2/o000OO0O;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    invoke-static {p3, p4}, Lz2/o000OO0O;->makeAuthHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "proxy auth"

    invoke-static {p2, p1}, Lz2/o00O000;->OooOO0(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "Proxy-Authorization"

    invoke-virtual {p0, p2, p1}, Lz2/o000OO0O;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public redirect(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lz2/o000OO0O;->redirect:Z

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public refresh(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lz2/o000OO0O;->refresh:Z

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retry(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lz2/o000OO0O;->retry:I

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v0}, Lz2/o000O;->OooOOOO()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lz2/o000OO0O;->backgroundWork()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    const/16 v1, -0x65

    invoke-virtual {v0, v1}, Lz2/o000O;->OooO0Oo(I)Lz2/o000O;

    move-result-object v0

    invoke-virtual {v0}, Lz2/o000O;->OooO0oO()Lz2/o000O;

    :goto_0
    iget-object v0, p0, Lz2/o000OO0O;->status:Lz2/o000O;

    invoke-virtual {v0}, Lz2/o000O;->OooOo0o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lz2/o000OO0O;->uiCallback:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lz2/o00O000;->Oooo0o(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lz2/o000OO0O;->afterWork()V

    :cond_1
    :goto_1
    return-void
.end method

.method public showProgress(Z)V
    .locals 2

    iget-object v0, p0, Lz2/o000OO0O;->progress:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lz2/o00O000;->Oooo00O()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lz2/o00O000o;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    new-instance v1, Lz2/o000OO0O$OooO00o;

    invoke-direct {v1, p0, v0, p1}, Lz2/o000OO0O$OooO00o;-><init>(Lz2/o000OO0O;Ljava/lang/Object;Z)V

    invoke-static {v1}, Lz2/o00O000;->Oooo0o(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public skip(Ljava/lang/String;Ljava/lang/Object;Lz2/o000O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lz2/o000O;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public targetFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->targetFile:Ljava/io/File;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iput p1, p0, Lz2/o000OO0O;->timeout:I

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;[BLz2/o000O;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lz2/o000O;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p3}, Lz2/o000O;->OooOOo()Ljava/io/File;

    move-result-object v0

    if-eqz p2, :cond_8

    iget-object v0, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    array-length p3, p2

    invoke-static {p2, p1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance p1, Ljava/lang/String;

    iget-object p3, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p2, Lorg/json/JSONTokener;

    invoke-direct {p2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v1

    :goto_0
    invoke-static {p2}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    :goto_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_2
    new-instance p1, Ljava/lang/String;

    iget-object p3, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p2, Lorg/json/JSONTokener;

    invoke-direct {p2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p1

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :goto_2
    return-object v1

    :cond_3
    iget-object v0, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p3}, Lz2/o000O;->OooOoO()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const-string p1, "network"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    iget-object p1, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    invoke-direct {p0, p2, p1, p3}, Lz2/o000OO0O;->correctEncoding([BLjava/lang/String;Lz2/o000O;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const-string p1, "file"

    invoke-static {p1}, Lz2/o00O000;->OooO(Ljava/lang/Object;)V

    :try_start_3
    new-instance p1, Ljava/lang/String;

    iget-object p3, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, p1

    goto :goto_3

    :catch_3
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OooOO0O(Ljava/lang/Throwable;)V

    :goto_3
    return-object v1

    :cond_5
    iget-object v0, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p2

    :cond_6
    iget-object v2, p0, Lz2/o000OO0O;->transformer:Lz2/o0O0ooO;

    if-eqz v2, :cond_7

    iget-object v4, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    iget-object v5, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v2 .. v7}, Lz2/o0O0ooO;->OooO00o(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLz2/o000O;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    sget-object v0, Lz2/o000OO0O;->st:Lz2/o0O0ooO;

    if-eqz v0, :cond_c

    iget-object v2, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    iget-object v3, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lz2/o0O0ooO;->OooO00o(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[BLz2/o000O;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_8
    if-eqz v0, :cond_c

    iget-object p1, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const-class p2, Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-object v0

    :cond_9
    iget-object p1, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const-class p2, Lz2/oo00o;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    :try_start_4
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p2, Lz2/oo00o;

    invoke-direct {p2, p1}, Lz2/oo00o;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p3, p1}, Lz2/o000O;->OooO0OO(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object p2

    :catch_4
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    return-object v1

    :cond_a
    iget-object p1, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const-class p2, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    :try_start_5
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lz2/o000OO0O;->encoding:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lz2/o000O;->OooO0OO(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    return-object v1

    :cond_b
    iget-object p1, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    const-class p2, Ljava/io/InputStream;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :try_start_6
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p3, p1}, Lz2/o000O;->OooO0OO(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    invoke-static {p1}, Lz2/o00O000;->OoooO0O(Ljava/lang/Throwable;)V

    :cond_c
    return-object v1
.end method

.method public transformer(Lz2/o0O0ooO;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz2/o0O0ooO;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->transformer:Lz2/o0O0ooO;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public type(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->type:Ljava/lang/Class;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public uiCallback(Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TK;"
        }
    .end annotation

    iput-boolean p1, p0, Lz2/o000OO0O;->uiCallback:Z

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public url(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    iput-object p1, p0, Lz2/o000OO0O;->url:Ljava/lang/String;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public weakHandler(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lz2/o000OO0O;->whandler:Ljava/lang/ref/Reference;

    iput-object p2, p0, Lz2/o000OO0O;->callback:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lz2/o000OO0O;->handler:Ljava/lang/Object;

    invoke-direct {p0}, Lz2/o000OO0O;->self()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
