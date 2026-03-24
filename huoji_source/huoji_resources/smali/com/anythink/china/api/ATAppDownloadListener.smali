.class public interface abstract Lcom/anythink/china/api/ATAppDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/anythink/core/api/ATEventInterface;


# virtual methods
.method public abstract onDownloadFail(Lcom/anythink/core/api/ATAdInfo;JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadFinish(Lcom/anythink/core/api/ATAdInfo;JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadPause(Lcom/anythink/core/api/ATAdInfo;JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadStart(Lcom/anythink/core/api/ATAdInfo;JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadUpdate(Lcom/anythink/core/api/ATAdInfo;JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onInstalled(Lcom/anythink/core/api/ATAdInfo;Ljava/lang/String;Ljava/lang/String;)V
.end method
