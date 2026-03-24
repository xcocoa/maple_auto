.class public Lcom/anythink/splashad/api/ATSplashAd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd;->loadAd(ILcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/anythink/splashad/api/ATSplashAd;

.field public final synthetic val$adxBidFloorInfo:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

.field public final synthetic val$finalTkExtraMap:Ljava/util/Map;

.field public final synthetic val$loadType:I


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/api/ATSplashAd;ILjava/util/Map;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iput p2, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->val$loadType:I

    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->val$finalTkExtraMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->val$adxBidFloorInfo:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget v1, v0, Lcom/anythink/splashad/api/ATSplashAd;->mFetchAdTimeout:I

    if-gtz v1, :cond_1

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/d/b;->a(Landroid/content/Context;)Lcom/anythink/core/d/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/n;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/d/b;->b(Ljava/lang/String;)Lcom/anythink/core/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/d/a;->Z()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/16 v0, 0x1388

    const/16 v1, 0x1388

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/anythink/core/d/a;->Z()J

    move-result-wide v0

    long-to-int v1, v0

    :goto_0
    const/4 v0, 0x0

    move v7, v1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    move v7, v1

    const/4 v8, 0x1

    :goto_1
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iget v2, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->val$loadType:I

    if-nez v2, :cond_3

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$1;

    invoke-direct {v1, p0, v7}, Lcom/anythink/splashad/api/ATSplashAd$1$1;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;I)V

    invoke-virtual {v1, v7}, Lcom/anythink/splashad/a/b;->startCountDown(I)V

    :cond_3
    move-object v6, v1

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v2, v1, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/c;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v1, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    :goto_3
    move-object v3, v0

    iget-object v4, v1, Lcom/anythink/splashad/api/ATSplashAd;->mDefaultRequestInfo:Lcom/anythink/core/api/ATMediationRequestInfo;

    iget-object v5, v1, Lcom/anythink/splashad/api/ATSplashAd;->mDefaultAdSourceConfig:Ljava/lang/String;

    iget v9, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->val$loadType:I

    iget-object v10, v1, Lcom/anythink/splashad/api/ATSplashAd;->mAdSourceEventListener:Lcom/anythink/core/common/b/b;

    iget-object v11, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->val$finalTkExtraMap:Ljava/util/Map;

    iget-object v12, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->val$adxBidFloorInfo:Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;

    invoke-virtual/range {v2 .. v12}, Lcom/anythink/splashad/a/c;->a(Landroid/content/Context;Lcom/anythink/core/api/ATMediationRequestInfo;Ljava/lang/String;Lcom/anythink/splashad/a/b;IZILcom/anythink/core/common/b/b;Ljava/util/Map;Lcom/anythink/core/basead/adx/api/ATAdxBidFloorInfo;)V

    return-void
.end method
