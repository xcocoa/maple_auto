.class public Lcom/octopus/ad/internal/view/e$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/view/e;->d(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/octopus/ad/internal/view/e;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/view/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->b:Lcom/octopus/ad/internal/view/e;

    iput-object p2, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    const-string p2, "data:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    const-string v0, "image/gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, ".png"

    if-eqz p1, :cond_0

    const-string v0, ".gif"

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    const-string v1, "image/jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    const-string v1, "image/pjpeg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    const-string v1, "image/png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    const-string v1, "image/tiff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v0, ".tif"

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    const-string v1, "image/svg+xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v0, ".svg"

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, ".jpg"

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    const-string v1, "base64"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_7

    const-string v0, ","

    if-nez p1, :cond_6

    :try_start_2
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/Hex;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    :goto_2
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    goto/16 :goto_9

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_7

    :catch_0
    move-object v0, v2

    goto :goto_3

    :catch_1
    move-object v0, v2

    goto :goto_5

    :catch_2
    move-object v0, v2

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_3
    :goto_3
    :try_start_4
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget p2, Lcom/octopus/ad/R$string;->store_picture_error:I

    invoke-static {p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_b

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_9

    :catch_4
    :goto_5
    :try_start_6
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget p2, Lcom/octopus/ad/R$string;->store_picture_error:I

    invoke-static {p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_b

    goto :goto_4

    :catch_5
    :goto_6
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget p2, Lcom/octopus/ad/R$string;->store_picture_error:I

    invoke-static {p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_b

    goto :goto_4

    :goto_7
    if-eqz v0, :cond_8

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    :catch_6
    sget-object p2, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget v0, Lcom/octopus/ad/R$string;->store_picture_error:I

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_8
    throw p1

    :cond_9
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->b:Lcom/octopus/ad/internal/view/e;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    new-instance v0, Landroid/app/DownloadManager$Request;

    iget-object v1, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/octopus/ad/internal/view/e$2;->b:Lcom/octopus/ad/internal/view/e;

    iget-object v1, v1, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/internal/view/e$2;->b:Lcom/octopus/ad/internal/view/e;

    iget-object v2, v2, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    iget-object v2, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/octopus/ad/internal/view/e$2;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, p2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    :try_start_8
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    invoke-virtual {v0, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    :cond_a
    sget-object p1, Lcom/octopus/ad/internal/utilities/HaoboLog;->mraidLogTag:Ljava/lang/String;

    sget p2, Lcom/octopus/ad/R$string;->store_picture_error:I

    invoke-static {p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/octopus/ad/internal/utilities/HaoboLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_9
    iget-object p1, p0, Lcom/octopus/ad/internal/view/e$2;->b:Lcom/octopus/ad/internal/view/e;

    iget-object p1, p1, Lcom/octopus/ad/internal/view/e;->b:Lcom/octopus/ad/internal/view/AdWebView;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/view/AdWebView;->c()V

    return-void
.end method
