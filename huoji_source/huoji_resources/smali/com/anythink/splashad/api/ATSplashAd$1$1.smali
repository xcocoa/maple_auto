.class public Lcom/anythink/splashad/api/ATSplashAd$1$1;
.super Lcom/anythink/splashad/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public hasCacheWhenTimeout:Z

.field public final synthetic this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

.field public final synthetic val$finalTimeout:I


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iput p2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->val$finalTimeout:I

    invoke-direct {p0}, Lcom/anythink/splashad/a/b;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->hasCacheWhenTimeout:Z

    return-void
.end method


# virtual methods
.method public onAdLoaded(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance v0, Lcom/anythink/splashad/api/ATSplashAd$1$1$1;

    invoke-direct {v0, p0, p2}, Lcom/anythink/splashad/api/ATSplashAd$1$1$1;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1$1;Z)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNoAdError(Ljava/lang/String;Lcom/anythink/core/api/AdError;)V
    .locals 1

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object p1

    new-instance v0, Lcom/anythink/splashad/api/ATSplashAd$1$1$2;

    invoke-direct {v0, p0, p2}, Lcom/anythink/splashad/api/ATSplashAd$1$1$2;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTimeout(Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/c;

    invoke-virtual {v0, p1}, Lcom/anythink/splashad/a/c;->a(Ljava/lang/String;)Lcom/anythink/core/common/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/g;->h()Lcom/anythink/core/common/a/c$a;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTimeout,hasAdxDefaultCache:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/anythink/core/common/a/c$a;->b()V

    :cond_2
    iget-object v2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v4, v2, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v5, v4, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/c;

    iget-object v4, v4, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    iget-object v2, v2, Lcom/anythink/splashad/api/ATSplashAd$1;->val$finalTkExtraMap:Ljava/util/Map;

    invoke-virtual {v5, v4, v2}, Lcom/anythink/splashad/a/c;->b(Landroid/content/Context;Ljava/util/Map;)Lcom/anythink/core/common/f/b;

    move-result-object v10

    if-eqz v10, :cond_4

    iput-boolean v3, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->hasCacheWhenTimeout:Z

    if-eqz v0, :cond_4

    const-string v2, "has cache when timeout: "

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/anythink/core/common/a/c$a;->f()Lcom/anythink/core/common/f/b;

    move-result-object v1

    if-ne v1, v10, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v2, v2, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v2, v2, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",type:1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v2, v2, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v2, v2, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",type:2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    :goto_2
    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g;->a(I)V

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v6, v1, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/common/g;->i()Lcom/anythink/core/d/f;

    move-result-object v8

    iget v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->val$finalTimeout:I

    int-to-long v11, v0

    const-string v9, "1"

    move-object v7, p1

    invoke-static/range {v6 .. v12}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;Ljava/lang/String;Lcom/anythink/core/common/f/b;J)V

    return-void

    :cond_4
    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    new-instance v2, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1$1;Ljava/lang/String;Lcom/anythink/core/common/g;)V

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/Runnable;)V

    return-void
.end method
