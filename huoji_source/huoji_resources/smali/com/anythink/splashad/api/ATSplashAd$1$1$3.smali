.class public final Lcom/anythink/splashad/api/ATSplashAd$1$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$1$1;->onTimeout(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/anythink/splashad/api/ATSplashAd$1$1;

.field public final synthetic val$mediationManager:Lcom/anythink/core/common/g;

.field public final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$1$1;Ljava/lang/String;Lcom/anythink/core/common/g;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;->this$2:Lcom/anythink/splashad/api/ATSplashAd$1$1;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;->val$requestId:Ljava/lang/String;

    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;->val$mediationManager:Lcom/anythink/core/common/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;->this$2:Lcom/anythink/splashad/api/ATSplashAd$1$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;->val$requestId:Ljava/lang/String;

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;->val$mediationManager:Lcom/anythink/core/common/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/anythink/core/common/g;->i()Lcom/anythink/core/d/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;->this$2:Lcom/anythink/splashad/api/ATSplashAd$1$1;

    iget v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->val$finalTimeout:I

    int-to-long v6, v0

    const-string v4, "2"

    invoke-static/range {v1 .. v7}, Lcom/anythink/core/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/d/f;Ljava/lang/String;Lcom/anythink/core/common/f/b;J)V

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$3;->this$2:Lcom/anythink/splashad/api/ATSplashAd$1$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdLoadTimeout()V

    :cond_1
    return-void
.end method
