.class public interface abstract Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/octopus/ad/internal/utilities/DownloadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadDelegate"
.end annotation


# virtual methods
.method public abstract onCheck(Ljava/io/File;)Z
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract onFail(I)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract onProgress(JJ)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract onSuccess(Ljava/io/File;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
