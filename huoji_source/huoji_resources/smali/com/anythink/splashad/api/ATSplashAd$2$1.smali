.class public final Lcom/anythink/splashad/api/ATSplashAd$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd$2;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/anythink/splashad/api/ATSplashAd$2;

.field public final synthetic val$entity:Lcom/anythink/core/api/ATAdInfo;

.field public final synthetic val$isSuccess:Z


# direct methods
.method public constructor <init>(Lcom/anythink/splashad/api/ATSplashAd$2;Lcom/anythink/core/api/ATAdInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$2$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$2;

    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd$2$1;->val$entity:Lcom/anythink/core/api/ATAdInfo;

    iput-boolean p3, p0, Lcom/anythink/splashad/api/ATSplashAd$2$1;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$2$1;->this$1:Lcom/anythink/splashad/api/ATSplashAd$2;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd$2;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/anythink/splashad/api/ATSplashExListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/anythink/splashad/api/ATSplashExListener;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$2$1;->val$entity:Lcom/anythink/core/api/ATAdInfo;

    iget-boolean v2, p0, Lcom/anythink/splashad/api/ATSplashAd$2$1;->val$isSuccess:Z

    invoke-interface {v0, v1, v2}, Lcom/anythink/splashad/api/ATSplashExListener;->onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V

    :cond_0
    return-void
.end method
