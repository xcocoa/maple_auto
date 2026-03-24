.class public Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/utilities/ImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public caller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/octopus/ad/internal/utilities/ImageService;",
            ">;"
        }
    .end annotation
.end field

.field public imageReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/octopus/ad/internal/utilities/ImageService$ImageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/octopus/ad/internal/utilities/ImageService;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/ImageService;Lcom/octopus/ad/internal/utilities/ImageService$ImageReceiver;Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageService;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->this$0:Lcom/octopus/ad/internal/utilities/ImageService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->caller:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->imageReceiver:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->url:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const/16 v1, 0x2710

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->imageReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->caller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->imageReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/internal/utilities/ImageService$ImageReceiver;

    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->caller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/internal/utilities/ImageService;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/octopus/ad/internal/utilities/ImageService$ImageReceiver;->onFail()V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/octopus/ad/internal/utilities/ImageService$ImageReceiver;->onReceiveImage(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/utilities/ImageService;->finishDownload(Lcom/octopus/ad/internal/utilities/ImageService$ImageReceiver;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/octopus/ad/internal/utilities/ImageService$ImageDownloader;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
