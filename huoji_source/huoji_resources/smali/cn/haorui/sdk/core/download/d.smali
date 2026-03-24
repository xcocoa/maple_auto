.class public Lcn/haorui/sdk/core/download/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final g:Landroid/os/Handler;


# instance fields
.field public a:Lcn/haorui/sdk/core/download/b;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final d:Lz2/ox;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcn/haorui/sdk/core/download/h;",
            ">;"
        }
    .end annotation
.end field

.field public transient f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/haorui/sdk/core/download/d;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/download/d;->b:Ljava/lang/String;

    new-instance v0, Lz2/ox$OooO0O0;

    invoke-direct {v0}, Lz2/ox$OooO0O0;-><init>()V

    invoke-virtual {v0}, Lz2/ox$OooO0O0;->OooO0Oo()Lz2/ox;

    move-result-object v0

    iput-object v0, p0, Lcn/haorui/sdk/core/download/d;->d:Lz2/ox;

    new-instance v0, Lcn/haorui/sdk/core/download/b;

    invoke-direct {v0}, Lcn/haorui/sdk/core/download/b;-><init>()V

    iput-object v0, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iput-object p1, v0, Lcn/haorui/sdk/core/download/b;->b:Ljava/lang/String;

    iput-object p2, v0, Lcn/haorui/sdk/core/download/b;->c:Ljava/lang/String;

    iput-object p3, v0, Lcn/haorui/sdk/core/download/b;->d:Ljava/lang/String;

    iput-object p4, v0, Lcn/haorui/sdk/core/download/b;->a:Ljava/lang/String;

    invoke-static {}, Lcn/haorui/sdk/core/download/a;->b()Lcn/haorui/sdk/core/download/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/haorui/sdk/core/download/a;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/haorui/sdk/core/download/b;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, ""

    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/haorui/sdk/core/download/b;->g:Ljava/lang/String;

    iget-object p1, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-object p4, p4, Lcn/haorui/sdk/core/download/b;->e:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ".apk"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcn/haorui/sdk/core/download/b;->f:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    const/4 p2, 0x0

    iput p2, p1, Lcn/haorui/sdk/core/download/b;->j:I

    const-wide/16 p2, -0x1

    iput-wide p2, p1, Lcn/haorui/sdk/core/download/b;->h:J

    invoke-static {}, Lcn/haorui/sdk/core/download/a;->b()Lcn/haorui/sdk/core/download/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/download/a;->c()Lcn/haorui/sdk/core/download/g;

    move-result-object p1

    invoke-virtual {p1}, Lcn/haorui/sdk/core/download/g;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/download/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/haorui/sdk/core/download/d;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget v1, v0, Lcn/haorui/sdk/core/download/b;->j:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iput v2, v0, Lcn/haorui/sdk/core/download/b;->j:I

    sget-object v1, Lcn/haorui/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v2, Lcn/haorui/sdk/core/download/f;

    invoke-direct {v2, p0, v0}, Lcn/haorui/sdk/core/download/f;-><init>(Lcn/haorui/sdk/core/download/d;Lcn/haorui/sdk/core/download/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iput v2, v0, Lcn/haorui/sdk/core/download/b;->j:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcn/haorui/sdk/core/download/b;Ljava/io/File;)V
    .locals 3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcn/haorui/sdk/core/download/b;->g:Ljava/lang/String;

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v2, p1, Lcn/haorui/sdk/core/download/b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    invoke-static {v1}, Lcn/haorui/sdk/core/utils/StringUtils;->byte2hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcn/haorui/sdk/core/download/b;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 p2, 0x5

    iput p2, p1, Lcn/haorui/sdk/core/download/b;->j:I

    sget-object p2, Lcn/haorui/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v0, Lcn/haorui/sdk/core/download/d$a;

    invoke-direct {v0, p0, p1, v1}, Lcn/haorui/sdk/core/download/d$a;-><init>(Lcn/haorui/sdk/core/download/d;Lcn/haorui/sdk/core/download/b;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postOnError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTask"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    iput v0, p1, Lcn/haorui/sdk/core/download/b;->j:I

    sget-object v0, Lcn/haorui/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v1, Lcn/haorui/sdk/core/download/d$b;

    invoke-direct {v1, p0, p1, p2}, Lcn/haorui/sdk/core/download/d$b;-><init>(Lcn/haorui/sdk/core/download/d;Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcn/haorui/sdk/core/download/b;)V
    .locals 10

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :try_start_0
    iput v0, p3, Lcn/haorui/sdk/core/download/b;->j:I

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v3, p3, Lcn/haorui/sdk/core/download/b;->j:I

    if-ne v3, v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-wide v4, p3, Lcn/haorui/sdk/core/download/b;->i:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p3, Lcn/haorui/sdk/core/download/b;->i:J

    iget-wide v4, p3, Lcn/haorui/sdk/core/download/b;->k:J

    add-long/2addr v4, v6

    iput-wide v4, p3, Lcn/haorui/sdk/core/download/b;->k:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/haorui/sdk/core/download/d;->f:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x12c

    cmp-long v2, v6, v8

    if-ltz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_0

    iput-wide v4, p0, Lcn/haorui/sdk/core/download/d;->f:J

    sget-object v2, Lcn/haorui/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v3, Lcn/haorui/sdk/core/download/c;

    invoke-direct {v3, p0, p3}, Lcn/haorui/sdk/core/download/c;-><init>(Lcn/haorui/sdk/core/download/d;Lcn/haorui/sdk/core/download/b;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    throw p3

    :catch_1
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_4
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public b()V
    .locals 7

    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget v1, v0, Lcn/haorui/sdk/core/download/b;->j:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcn/haorui/sdk/core/download/b;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "filePath is null"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-object v2, v1, Lcn/haorui/sdk/core/download/b;->e:Ljava/lang/String;

    iget-object v1, v1, Lcn/haorui/sdk/core/download/b;->g:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filepath=: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fileIsExists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",fileLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", progressTotalSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-wide v2, v2, Lcn/haorui/sdk/core/download/b;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadTask"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-wide v4, v3, Lcn/haorui/sdk/core/download/b;->h:J

    cmp-long v6, v1, v4

    if-nez v6, :cond_2

    invoke-virtual {p0, v3, v0}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/io/File;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    const-string v1, "filepath may be invalid or damaged"

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput v1, v0, Lcn/haorui/sdk/core/download/b;->j:I

    sget-object v1, Lcn/haorui/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v2, Lcn/haorui/sdk/core/download/e;

    invoke-direct {v2, p0, v0}, Lcn/haorui/sdk/core/download/e;-><init>(Lcn/haorui/sdk/core/download/d;Lcn/haorui/sdk/core/download/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public run()V
    .locals 10

    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-wide v1, v0, Lcn/haorui/sdk/core/download/b;->i:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const-string v1, "startPosition<0"

    invoke-virtual {p0, v0, v1}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcn/haorui/sdk/core/download/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lz2/qx$OooO00o;

    invoke-direct {v0}, Lz2/qx$OooO00o;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Range"

    invoke-virtual {v0, v4, v3}, Lz2/qx$OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v0

    iget-object v3, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-object v3, v3, Lcn/haorui/sdk/core/download/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lz2/qx$OooO00o;->OooOOo0(Ljava/lang/String;)Lz2/qx$OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx$OooO00o;->OooO0o()Lz2/qx$OooO00o;

    move-result-object v0

    invoke-virtual {v0}, Lz2/qx$OooO00o;->OooO0O0()Lz2/qx;

    move-result-object v0

    :try_start_0
    iget-object v3, p0, Lcn/haorui/sdk/core/download/d;->d:Lz2/ox;

    invoke-virtual {v3, v0}, Lz2/ox;->OooO00o(Lz2/qx;)Lz2/tw;

    move-result-object v0

    invoke-interface {v0}, Lz2/tw;->execute()Lz2/sx;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v0}, Lz2/sx;->OoooooO()I

    move-result v3

    const/16 v4, 0x194

    if-eq v3, v4, :cond_d

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Lz2/sx;->OooOO0()Lz2/tx;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    const-string v1, "response body is null"

    invoke-virtual {p0, v0, v1}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-wide v6, v3, Lcn/haorui/sdk/core/download/b;->h:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lz2/tx;->contentLength()J

    move-result-wide v6

    iput-wide v6, v3, Lcn/haorui/sdk/core/download/b;->h:J

    :cond_4
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-object v4, v4, Lcn/haorui/sdk/core/download/b;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_5
    iget-object v4, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-object v4, v4, Lcn/haorui/sdk/core/download/b;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-object v4, v4, Lcn/haorui/sdk/core/download/b;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-object v6, v6, Lcn/haorui/sdk/core/download/b;->g:Ljava/lang/String;

    invoke-direct {v4, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    iget-object v4, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-wide v6, v4, Lcn/haorui/sdk/core/download/b;->h:J

    const-string v8, "file has expired"

    cmp-long v9, v1, v6

    if-lez v9, :cond_7

    invoke-virtual {p0, v4, v8}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    return-void

    :cond_7
    if-nez v9, :cond_9

    if-lez v5, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_8

    iget-object v4, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    invoke-virtual {p0, v4, v3}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/io/File;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    invoke-virtual {p0, v0, v8}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_1
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v5, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iput-wide v1, v5, Lcn/haorui/sdk/core/download/b;->i:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0}, Lz2/tx;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    invoke-virtual {p0, v0, v4, v1}, Lcn/haorui/sdk/core/download/d;->a(Ljava/io/InputStream;Ljava/io/RandomAccessFile;Lcn/haorui/sdk/core/download/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget v1, v0, Lcn/haorui/sdk/core/download/b;->j:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    iput v2, v0, Lcn/haorui/sdk/core/download/b;->j:I

    sget-object v1, Lcn/haorui/sdk/core/download/d;->g:Landroid/os/Handler;

    new-instance v2, Lcn/haorui/sdk/core/download/f;

    invoke-direct {v2, p0, v0}, Lcn/haorui/sdk/core/download/f;-><init>(Lcn/haorui/sdk/core/download/d;Lcn/haorui/sdk/core/download/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    iget-wide v4, v2, Lcn/haorui/sdk/core/download/b;->h:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_b

    invoke-virtual {p0, v2, v3}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/io/File;)V

    goto :goto_2

    :cond_b
    move-object v0, v2

    :cond_c
    invoke-virtual {p0, v0, v8}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_3
    iget-object v0, p0, Lcn/haorui/sdk/core/download/d;->a:Lcn/haorui/sdk/core/download/b;

    const-string v1, "network error! http response code is 404 or 5xx!"

    invoke-virtual {p0, v0, v1}, Lcn/haorui/sdk/core/download/d;->a(Lcn/haorui/sdk/core/download/b;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
