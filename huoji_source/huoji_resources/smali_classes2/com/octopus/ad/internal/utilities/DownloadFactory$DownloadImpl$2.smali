.class public Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onSuccess(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;

.field public final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$2;->this$0:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;

    iput-object p2, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$2;->this$0:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->access$500(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;)Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$2;->this$0:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->access$500(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;)Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$2;->val$file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;->onSuccess(Ljava/io/File;)V

    :cond_0
    return-void
.end method
