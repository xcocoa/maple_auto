.class public Lcom/octopus/ad/topon/OctopusATInitManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/topon/OctopusATInitManager;->initSDK(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/MediationInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/octopus/ad/topon/OctopusATInitManager;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/topon/OctopusATInitManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/octopus/ad/topon/OctopusATInitManager$1;->this$0:Lcom/octopus/ad/topon/OctopusATInitManager;

    iput-object p2, p0, Lcom/octopus/ad/topon/OctopusATInitManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATInitManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/octopus/ad/topon/OctopusATInitManager$1;->this$0:Lcom/octopus/ad/topon/OctopusATInitManager;

    invoke-static {v2}, Lcom/octopus/ad/topon/OctopusATInitManager;->access$000(Lcom/octopus/ad/topon/OctopusATInitManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/octopus/ad/topon/OctopusATInitManager$1$1;

    invoke-direct {v3, p0}, Lcom/octopus/ad/topon/OctopusATInitManager$1$1;-><init>(Lcom/octopus/ad/topon/OctopusATInitManager$1;)V

    invoke-static {v1, v2, v3}, Lcom/octopus/ad/Octopus;->init(Landroid/content/Context;Ljava/lang/String;Lcom/octopus/ad/OctopusAdSdkController;)V

    invoke-static {v0}, Lcom/octopus/ad/Octopus;->setIsDownloadDirect(Z)V

    invoke-static {v0}, Lcom/octopus/ad/Octopus;->setLimitPersonalAds(Z)V

    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATInitManager$1;->this$0:Lcom/octopus/ad/topon/OctopusATInitManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/octopus/ad/topon/OctopusATInitManager;->access$102(Lcom/octopus/ad/topon/OctopusATInitManager;Z)Z

    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATInitManager$1;->this$0:Lcom/octopus/ad/topon/OctopusATInitManager;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/octopus/ad/topon/OctopusATInitManager;->access$200(Lcom/octopus/ad/topon/OctopusATInitManager;ZLjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/octopus/ad/topon/OctopusATInitManager;->TAG:Ljava/lang/String;

    const-string v2, "init success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object v1, p0, Lcom/octopus/ad/topon/OctopusATInitManager$1;->this$0:Lcom/octopus/ad/topon/OctopusATInitManager;

    const-string v2, "80000"

    const-string v3, "init fail"

    invoke-static {v1, v0, v2, v3}, Lcom/octopus/ad/topon/OctopusATInitManager;->access$200(Lcom/octopus/ad/topon/OctopusATInitManager;ZLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/octopus/ad/topon/OctopusATInitManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
