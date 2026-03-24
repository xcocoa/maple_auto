.class public Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->onProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;

.field public final synthetic val$progress:J

.field public final synthetic val$total:J


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;->this$0:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;

    iput-wide p2, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;->val$progress:J

    iput-wide p4, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;->val$total:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;->this$0:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->access$500(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;)Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;->this$0:Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;->access$500(Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl;)Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;

    move-result-object v0

    iget-wide v1, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;->val$progress:J

    iget-wide v3, p0, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadImpl$1;->val$total:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/octopus/ad/internal/utilities/DownloadFactory$DownloadDelegate;->onProgress(JJ)V

    :cond_0
    return-void
.end method
