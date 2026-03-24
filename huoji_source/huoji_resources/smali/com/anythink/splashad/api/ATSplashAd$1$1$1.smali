.class public final Lcom/anythink/splashad/api/ATSplashAd$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$1$1;->onAdLoaded(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/anythink/splashad/api/ATSplashAd$1$1;

.field public final synthetic val$isTimeout:Z


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$1$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$1;->this$2:Lcom/anythink/splashad/api/ATSplashAd$1$1;

    iput-boolean p2, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$1;->val$isTimeout:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$1;->this$2:Lcom/anythink/splashad/api/ATSplashAd$1$1;

    iget-object v1, v0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$1;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/anythink/splashad/api/ATSplashAd$1$1;->hasCacheWhenTimeout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1$1$1;->val$isTimeout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdLoaded(Z)V

    :cond_1
    return-void
.end method
