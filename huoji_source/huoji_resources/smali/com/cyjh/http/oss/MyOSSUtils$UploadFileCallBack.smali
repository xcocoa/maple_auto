.class public interface abstract Lcom/cyjh/http/oss/MyOSSUtils$UploadFileCallBack;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/http/oss/MyOSSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadFileCallBack"
.end annotation


# virtual methods
.method public abstract uploadFail(Ljava/lang/String;)V
.end method

.method public abstract uploadProgress(JJ)V
.end method

.method public abstract uploadSuc(Ljava/lang/String;Ljava/lang/String;)V
.end method
