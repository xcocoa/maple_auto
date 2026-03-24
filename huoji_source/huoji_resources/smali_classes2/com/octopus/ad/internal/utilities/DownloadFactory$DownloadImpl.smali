.class public final Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/octopus/ad/internal/utilities/DownloadFactory$Download;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/utilities/DownloadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadImpl"
.end annotation


# instance fields
.field private mDelegate:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

.field private mThreadHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "download"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$500(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;)Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;
    .locals 0

    iget-object p0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mDelegate:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;

    return-object p0
.end method

.method private onCheck(Ljava/io/File;)Z
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mDelegate:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;->onCheck(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onFail(I)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$3;-><init>(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onProgress(JJ)V
    .locals 8

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;-><init>(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onSuccess(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$2;-><init>(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUserCancel:Z

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mThreadHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUserPause:Z

    :cond_0
    return-void
.end method

.method public register(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mDelegate:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;

    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    if-nez v0, :cond_0

    const-string v0, "download"

    const-string v1, "Nothing to resume,skip this request!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUserPause:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUserPause:Z

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    invoke-direct {v0, v1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;-><init>(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)V

    invoke-virtual {p0, v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->start(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public run()V
    .locals 15
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mDownloading:Z

    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$000(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onFail(I)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$000(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$100(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$200(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$300(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    const-string v7, "Range"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$300(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v7, "Connection"

    const-string v8, "Keep-Alive"

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_2

    const/16 v11, 0xce

    if-eq v7, v11, :cond_2

    iput-boolean v5, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mDownloading:Z

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onFail(I)V

    move-object v7, v4

    goto/16 :goto_7

    :cond_2
    const-string v11, "Content-Disposition"

    invoke-virtual {v6, v11}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x18

    if-lt v13, v14, :cond_3

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v13

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v13

    int-to-long v13, v13

    :goto_0
    if-ne v7, v8, :cond_4

    invoke-static {v0, v9, v10}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$302(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;J)J

    invoke-static {v0, v13, v14}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$402(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;J)J

    :cond_4
    const-string v7, "download"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v8, 0x2000

    :try_start_2
    new-array v8, v8, [B

    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v10, "rw"

    invoke-direct {v9, v2, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$300(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    :cond_5
    :goto_1
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_c

    add-int/2addr v2, v1

    invoke-virtual {v9, v8, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v10, v4

    invoke-static {v0, v10, v11}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$314(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;J)J

    rem-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_5

    iget-boolean v4, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUserCancel:Z

    if-eqz v4, :cond_8

    iput-boolean v5, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mDownloading:Z

    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onFail(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :try_start_5
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    nop

    :goto_2
    if-eqz v7, :cond_6

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_6
    :goto_3
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7
    return-void

    :cond_8
    :try_start_7
    iget-boolean v4, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUserPause:Z

    if-eqz v4, :cond_b

    iput-boolean v5, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mDownloading:Z

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onFail(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    nop

    :goto_4
    if-eqz v7, :cond_9

    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_5

    :catch_5
    nop

    :cond_9
    :goto_5
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-void

    :cond_b
    :try_start_b
    rem-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$300(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)J

    move-result-wide v10

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->access$400(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)J

    move-result-wide v12

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onProgress(JJ)V

    goto :goto_1

    :cond_c
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onCheck(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_d

    iput-boolean v5, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mDownloading:Z

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onFail(I)V

    goto :goto_6

    :cond_d
    iput-boolean v5, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mDownloading:Z

    invoke-direct {p0, v3}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onSuccess(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_6
    move-object v4, v9

    :goto_7
    if-eqz v4, :cond_e

    :try_start_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_8

    :catch_6
    nop

    :cond_e
    :goto_8
    if-eqz v4, :cond_f

    :try_start_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_9

    :catch_7
    nop

    :cond_f
    :goto_9
    if-eqz v7, :cond_10

    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_a

    :catch_8
    nop

    :cond_10
    :goto_a
    if-eqz v6, :cond_14

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v4, v9

    goto :goto_10

    :catch_9
    move-exception v1

    move-object v4, v9

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v7, v4

    goto :goto_10

    :catch_b
    move-exception v1

    move-object v7, v4

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v6, v4

    move-object v7, v6

    goto :goto_10

    :catch_c
    move-exception v1

    move-object v6, v4

    move-object v7, v6

    :goto_b
    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    iput-boolean v5, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mDownloading:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onFail(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v4, :cond_11

    :try_start_10
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    goto :goto_c

    :catch_d
    nop

    :cond_11
    :goto_c
    if-eqz v4, :cond_12

    :try_start_11
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    goto :goto_d

    :catch_e
    nop

    :cond_12
    :goto_d
    if-eqz v7, :cond_13

    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    goto :goto_e

    :catch_f
    nop

    :cond_13
    :goto_e
    if-eqz v6, :cond_14

    :goto_f
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_14
    return-void

    :catchall_3
    move-exception v0

    :goto_10
    if-eqz v4, :cond_15

    :try_start_13
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    goto :goto_11

    :catch_10
    nop

    :cond_15
    :goto_11
    if-eqz v4, :cond_16

    :try_start_14
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    goto :goto_12

    :catch_11
    nop

    :cond_16
    :goto_12
    if-eqz v7, :cond_17

    :try_start_15
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    goto :goto_13

    :catch_12
    nop

    :cond_17
    :goto_13
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18
    throw v0
.end method

.method public start(Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;)V
    .locals 2

    iget-boolean v0, p1, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mDownloading:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->mUserCancel:Z

    :cond_0
    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mRequest:Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$Request;->reset()V

    iget-object p1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->mThreadHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid request,it\'s downloading"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
