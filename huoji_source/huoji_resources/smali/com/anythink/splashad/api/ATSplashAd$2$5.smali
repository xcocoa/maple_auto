.class public final Lcom/anythink/splashad/api/ATSplashAd$2$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$2;->onAdDismiss(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/anythink/splashad/api/ATSplashAd$2;

.field public final synthetic val$entity:Lcom/anythink/core/api/ATAdInfo;

.field public final synthetic val$splashAdExtraInfo:Lcom/anythink/splashad/api/ATSplashAdExtraInfo;


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$2;Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$2$5;->this$1:Lcom/anythink/splashad/api/ATSplashAd$2;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd$2$5;->val$entity:Lcom/anythink/core/api/ATAdInfo;

    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd$2$5;->val$splashAdExtraInfo:Lcom/anythink/splashad/api/ATSplashAdExtraInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2$5;->this$1:Lcom/anythink/splashad/api/ATSplashAd$2;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$2$5;->val$entity:Lcom/anythink/core/api/ATAdInfo;

    iget-object v2, p0, Lcom/anythink/splashad/api/ATSplashAd$2$5;->val$splashAdExtraInfo:Lcom/anythink/splashad/api/ATSplashAdExtraInfo;

    invoke-interface {v0, v1, v2}, Lcom/anythink/splashad/api/ATSplashAdListener;->onAdDismiss(Lcom/anythink/core/api/ATAdInfo;Lcom/anythink/splashad/api/ATSplashAdExtraInfo;)V

    :cond_0
    return-void
.end method
